package main

import wl "../../client"
import xdg "../../client/xdg-shell"
import wlutil "../../util"
import "base:runtime"
import "core:fmt"

registry_listener := wl.registry_listener {
	global = proc "c" (
		data: rawptr,
		wl_registry: ^wl.registry,
		name: u32,
		interface: cstring,
		version: u32,
	) {
		context = runtime.default_context()
		a := cast(^App)data

		fmt.printfln(
			"registry.global name={} interface=\"{}\" version={}",
			name,
			interface,
			version,
		)

		switch interface {
		case wl.shm_interface.name:
			a.shm = cast(^wl.shm)wl.registry_bind(a.registry, name, &wl.shm_interface, version)
		case wl.compositor_interface.name:
			a.compositor =
			cast(^wl.compositor)wl.registry_bind(
				a.registry,
				name,
				&wl.compositor_interface,
				version,
			)
		case xdg.wm_base_interface.name:
			a.wm_base =
			cast(^xdg.wm_base)wl.registry_bind(a.registry, name, &xdg.wm_base_interface, version)
		}
	},
	global_remove = proc "c" (data: rawptr, wl_registry: ^wl.registry, name: u32) {
		context = runtime.default_context()
		// a := cast(^App)data

		fmt.printfln("registry.global_remove name={}", name)
	},
}

wm_base_listener := xdg.wm_base_listener {
	ping = proc "c" (data: rawptr, xdg_wm_base: ^xdg.wm_base, serial: u32) {
		context = runtime.default_context()

		fmt.printfln("wm_base.ping serial={}", serial)
		xdg.wm_base_pong(xdg_wm_base, serial)
	},
}

surface_listener := xdg.surface_listener {
	configure = proc "c" (data: rawptr, xdg_surface: ^xdg.surface, serial: u32) {
		context = runtime.default_context()

		fmt.printfln("xdg_surface.configure serial={}", serial)

		xdg.surface_ack_configure(xdg_surface, serial)
	},
}

toplevel_listener := xdg.toplevel_listener {
	configure = proc "c" (
		data: rawptr,
		xdg_toplevel: ^xdg.toplevel,
		width: i32,
		height: i32,
		states: [^]wlutil.array,
	) {
		context = runtime.default_context()

		fmt.printfln("xdg_toplevel.configure width={} height={}", width, height)
	},
	close = proc "c" (data: rawptr, xdg_toplevel: ^xdg.toplevel) {
		context = runtime.default_context()
		a := cast(^App)data

		fmt.println("xdg_toplevel.close")

		a.running = false
	},
	configure_bounds = proc "c" (
		data: rawptr,
		xdg_toplevel: ^xdg.toplevel,
		width: i32,
		height: i32,
	) {
		context = runtime.default_context()

		fmt.printfln("xdg_toplevel.configure_bounds width={} height={}", width, height)
	},
	wm_capabilities = proc "c" (
		data: rawptr,
		xdg_toplevel: ^xdg.toplevel,
		capabilities: [^]wlutil.array,
	) {
		context = runtime.default_context()

		fmt.println("xdg_toplevel.wm_capabilities")
	},
}

