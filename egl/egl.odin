package wl_egl

import "../client"

window :: ^^^rawptr

foreign import wl_egl_runic "system:wayland-egl"

@(default_calling_convention = "c")
foreign wl_egl_runic {
    @(link_name = "wl_egl_window_create")
    window_create :: proc(surface_p: ^client.surface, width: i32, height: i32) -> ^window ---

    @(link_name = "wl_egl_window_destroy")
    window_destroy :: proc(egl_window: ^window) ---

    @(link_name = "wl_egl_window_resize")
    window_resize :: proc(egl_window: ^window, width: i32, height: i32, dx: i32, dy: i32) ---

    @(link_name = "wl_egl_window_get_attached_size")
    window_get_attached_size :: proc(egl_window: ^window, width: ^i32, height: ^i32) ---

}

