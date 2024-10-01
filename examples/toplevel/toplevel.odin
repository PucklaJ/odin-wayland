package main

import wl "../../client"
import xdg "../../client/xdg-shell"
import "core:c"
import "core:fmt"
import "core:os"

App :: struct {
	display:     ^wl.display,
	registry:    ^wl.registry,
	shm:         ^wl.shm,
	compositor:  ^wl.compositor,
	wm_base:     ^xdg.wm_base,
	surface:     ^wl.surface,
	xdg_surface: ^xdg.surface,
	toplevel:    ^xdg.toplevel,
	running:     bool,
	width:       i32,
	height:      i32,
	buffer:      ^wl.buffer,
	buffer_data: [^]u8,
	buffer_fd:   i32,
}

SHM_FORMAT :: u32(wl.shm_format.WL_SHM_FORMAT_ARGB8888)
SHM_FILE_NAME :: "/odin-wayland-memory-XXXXXX"
WIDTH :: 640
HEIGHT :: 480
STRIDE :: WIDTH * 4
SIZE :: STRIDE * HEIGHT

main :: proc() {
	fmt.println("Hello Wayland")

	a: App

	a.display = wl.display_connect(nil)
	if a.display == nil {
		fmt.eprintln("failed to connect display")
		os.exit(1)
	}
	defer wl.display_disconnect(a.display)

	a.registry = wl.display_get_registry(a.display)
	defer wl.registry_destroy(a.registry)

	wl.registry_add_listener(a.registry, &registry_listener, &a)
	wl.display_roundtrip(a.display)

	if a.shm == nil {
		fmt.eprintln("shm interface is missing")
		os.exit(1)
	}
	defer wl.shm_destroy(a.shm)
	if a.compositor == nil {
		fmt.eprintln("compositor interface is missing")
		os.exit(1)
	}
	defer wl.compositor_destroy(a.compositor)
	if a.wm_base == nil {
		fmt.eprintln("xdg_wm_base interface is missing")
		os.exit(1)
	}
	defer xdg.wm_base_destroy(a.wm_base)

	xdg.wm_base_add_listener(a.wm_base, &wm_base_listener, nil)

	a.surface = wl.compositor_create_surface(a.compositor)
	defer wl.surface_destroy(a.surface)
	a.xdg_surface = xdg.wm_base_get_xdg_surface(a.wm_base, a.surface)
	defer xdg.surface_destroy(a.xdg_surface)
	xdg.surface_add_listener(a.xdg_surface, &surface_listener, nil)
	a.toplevel = xdg.surface_get_toplevel(a.xdg_surface)
	defer xdg.toplevel_destroy(a.toplevel)
	xdg.toplevel_set_title(a.toplevel, "Odin-Wayland")
	xdg.toplevel_add_listener(a.toplevel, &toplevel_listener, &a)

	wl.surface_commit(a.surface)
	wl.display_roundtrip(a.display)

	a.buffer_fd = shm_open(SHM_FILE_NAME, O_RDWR | O_CREAT | O_EXCL, 0o600)
	if a.buffer_fd < 0 {
		fmt.eprintln("failed to shm_open")
		os.exit(1)
	}
	shm_unlink(SHM_FILE_NAME)

	if ftruncate(a.buffer_fd, SIZE) < 0 {
		fmt.eprintln("failed to ftruncate")
		os.exit(1)
	}

	a.buffer_data = cast([^]u8)mmap(nil, SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, a.buffer_fd, 0)
	if uintptr(a.buffer_data) == MAP_FAILED {
		fmt.eprintln("failed to mmap")
		os.exit(1)
	}
	defer munmap(a.buffer_data, SIZE)

	pool := wl.shm_create_pool(a.shm, a.buffer_fd, SIZE)
	if pool == nil {
		fmt.eprintln("failed to create pool")
		os.exit(1)
	}

	a.buffer = wl.shm_pool_create_buffer(pool, 0, WIDTH, HEIGHT, STRIDE, SHM_FORMAT)
	wl.shm_pool_destroy(pool)
	close(a.buffer_fd)
	if a.buffer == nil {
		fmt.eprintln("failed to create buffer")
		os.exit(1)
	}
	defer wl.buffer_destroy(a.buffer)

	for x in 0 ..< WIDTH {
		for y in 0 ..< HEIGHT {
			b := &a.buffer_data[y * STRIDE + x * 4 + 0]
			g := &a.buffer_data[y * STRIDE + x * 4 + 1]
			r := &a.buffer_data[y * STRIDE + x * 4 + 2]
			a := &a.buffer_data[y * STRIDE + x * 4 + 3]

			r^ = 128
			g^ = 20
			b^ = 128
			a^ = 20
		}
	}

	wl.surface_attach(a.surface, a.buffer, 0, 0)
	wl.surface_damage_buffer(a.surface, 0, 0, WIDTH, HEIGHT)
	wl.surface_commit(a.surface)

	a.running = true

	for wl.display_dispatch(a.display) != -1 && a.running {
		wl.surface_attach(a.surface, a.buffer, 0, 0)
		wl.surface_damage_buffer(a.surface, 0, 0, WIDTH, HEIGHT)
		wl.surface_commit(a.surface)
	}
}

O_RDWR :: 0x2
O_CREAT :: 0x40
O_EXCL :: 0x80

PROT_READ :: 0x1
PROT_WRITE :: 0x2

MAP_SHARED :: 0x1
MAP_FAILED :: 0xffffffff

foreign import libc "system:c"

@(default_calling_convention = "c")
foreign libc {
	shm_open :: proc(name: cstring, oflag: i32, mode: u32) -> i32 ---
	shm_unlink :: proc(name: cstring) -> i32 ---
	close :: proc(fd: i32) -> i32 ---
	mmap :: proc(addr: rawptr, len: c.size_t, prot: i32, flags: i32, fd: i32 = -1, off: i64 = 0) -> rawptr ---
	munmap :: proc(addr: rawptr, len: c.size_t) -> i32 ---
	ftruncate :: proc(fildes: i32, length: i64) -> i32 ---
}

