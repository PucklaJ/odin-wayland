package xdg_shell

import "../../server"
import "../../util"
import "core:sys/linux"

XDG_WM_BASE_PING :: 0
XDG_WM_BASE_PING_SINCE_VERSION :: 1
XDG_WM_BASE_DESTROY_SINCE_VERSION :: 1
XDG_WM_BASE_CREATE_POSITIONER_SINCE_VERSION :: 1
XDG_WM_BASE_GET_XDG_SURFACE_SINCE_VERSION :: 1
XDG_WM_BASE_PONG_SINCE_VERSION :: 1
XDG_POSITIONER_DESTROY_SINCE_VERSION :: 1
XDG_POSITIONER_SET_SIZE_SINCE_VERSION :: 1
XDG_POSITIONER_SET_ANCHOR_RECT_SINCE_VERSION :: 1
XDG_POSITIONER_SET_ANCHOR_SINCE_VERSION :: 1
XDG_POSITIONER_SET_GRAVITY_SINCE_VERSION :: 1
XDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT_SINCE_VERSION :: 1
XDG_POSITIONER_SET_OFFSET_SINCE_VERSION :: 1
XDG_POSITIONER_SET_REACTIVE_SINCE_VERSION :: 3
XDG_POSITIONER_SET_PARENT_SIZE_SINCE_VERSION :: 3
XDG_POSITIONER_SET_PARENT_CONFIGURE_SINCE_VERSION :: 3
XDG_SURFACE_CONFIGURE :: 0
XDG_SURFACE_CONFIGURE_SINCE_VERSION :: 1
XDG_SURFACE_DESTROY_SINCE_VERSION :: 1
XDG_SURFACE_GET_TOPLEVEL_SINCE_VERSION :: 1
XDG_SURFACE_GET_POPUP_SINCE_VERSION :: 1
XDG_SURFACE_SET_WINDOW_GEOMETRY_SINCE_VERSION :: 1
XDG_SURFACE_ACK_CONFIGURE_SINCE_VERSION :: 1
XDG_TOPLEVEL_STATE_TILED_LEFT_SINCE_VERSION :: 2
XDG_TOPLEVEL_STATE_TILED_RIGHT_SINCE_VERSION :: 2
XDG_TOPLEVEL_STATE_TILED_TOP_SINCE_VERSION :: 2
XDG_TOPLEVEL_STATE_TILED_BOTTOM_SINCE_VERSION :: 2
XDG_TOPLEVEL_STATE_SUSPENDED_SINCE_VERSION :: 6
XDG_TOPLEVEL_CONFIGURE :: 0
XDG_TOPLEVEL_CLOSE :: 1
XDG_TOPLEVEL_CONFIGURE_BOUNDS :: 2
XDG_TOPLEVEL_WM_CAPABILITIES :: 3
XDG_TOPLEVEL_CONFIGURE_SINCE_VERSION :: 1
XDG_TOPLEVEL_CLOSE_SINCE_VERSION :: 1
XDG_TOPLEVEL_CONFIGURE_BOUNDS_SINCE_VERSION :: 4
XDG_TOPLEVEL_WM_CAPABILITIES_SINCE_VERSION :: 5
XDG_TOPLEVEL_DESTROY_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_PARENT_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_TITLE_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_APP_ID_SINCE_VERSION :: 1
XDG_TOPLEVEL_SHOW_WINDOW_MENU_SINCE_VERSION :: 1
XDG_TOPLEVEL_MOVE_SINCE_VERSION :: 1
XDG_TOPLEVEL_RESIZE_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_MAX_SIZE_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_MIN_SIZE_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_MAXIMIZED_SINCE_VERSION :: 1
XDG_TOPLEVEL_UNSET_MAXIMIZED_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_FULLSCREEN_SINCE_VERSION :: 1
XDG_TOPLEVEL_UNSET_FULLSCREEN_SINCE_VERSION :: 1
XDG_TOPLEVEL_SET_MINIMIZED_SINCE_VERSION :: 1
XDG_POPUP_CONFIGURE :: 0
XDG_POPUP_POPUP_DONE :: 1
XDG_POPUP_REPOSITIONED :: 2
XDG_POPUP_CONFIGURE_SINCE_VERSION :: 1
XDG_POPUP_POPUP_DONE_SINCE_VERSION :: 1
XDG_POPUP_REPOSITIONED_SINCE_VERSION :: 3
XDG_POPUP_DESTROY_SINCE_VERSION :: 1
XDG_POPUP_GRAB_SINCE_VERSION :: 1
XDG_POPUP_REPOSITION_SINCE_VERSION :: 3

popup :: ^^^rawptr
positioner :: ^^^rawptr
surface :: ^^^rawptr
toplevel :: ^^^rawptr
wm_base :: ^^^rawptr
wm_base_error :: enum u32 {XDG_WM_BASE_ERROR_ROLE = 0, XDG_WM_BASE_ERROR_DEFUNCT_SURFACES = 1, XDG_WM_BASE_ERROR_NOT_THE_TOPMOST_POPUP = 2, XDG_WM_BASE_ERROR_INVALID_POPUP_PARENT = 3, XDG_WM_BASE_ERROR_INVALID_SURFACE_STATE = 4, XDG_WM_BASE_ERROR_INVALID_POSITIONER = 5, XDG_WM_BASE_ERROR_UNRESPONSIVE = 6, }
destroy_func_ptr_anon_0 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
create_positioner_func_ptr_anon_1 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, id: u32)
get_xdg_surface_func_ptr_anon_2 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, id: u32, surface_p: ^server.resource)
pong_func_ptr_anon_3 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, serial: u32)
wm_base_interface :: struct {
    destroy: destroy_func_ptr_anon_0,
    create_positioner: create_positioner_func_ptr_anon_1,
    get_xdg_surface: get_xdg_surface_func_ptr_anon_2,
    pong: pong_func_ptr_anon_3,
}
positioner_error :: enum u32 {XDG_POSITIONER_ERROR_INVALID_INPUT = 0, }
positioner_anchor :: enum u32 {XDG_POSITIONER_ANCHOR_NONE = 0, XDG_POSITIONER_ANCHOR_TOP = 1, XDG_POSITIONER_ANCHOR_BOTTOM = 2, XDG_POSITIONER_ANCHOR_LEFT = 3, XDG_POSITIONER_ANCHOR_RIGHT = 4, XDG_POSITIONER_ANCHOR_TOP_LEFT = 5, XDG_POSITIONER_ANCHOR_BOTTOM_LEFT = 6, XDG_POSITIONER_ANCHOR_TOP_RIGHT = 7, XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT = 8, }
positioner_gravity :: enum u32 {XDG_POSITIONER_GRAVITY_NONE = 0, XDG_POSITIONER_GRAVITY_TOP = 1, XDG_POSITIONER_GRAVITY_BOTTOM = 2, XDG_POSITIONER_GRAVITY_LEFT = 3, XDG_POSITIONER_GRAVITY_RIGHT = 4, XDG_POSITIONER_GRAVITY_TOP_LEFT = 5, XDG_POSITIONER_GRAVITY_BOTTOM_LEFT = 6, XDG_POSITIONER_GRAVITY_TOP_RIGHT = 7, XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT = 8, }
positioner_constraint_adjustment :: enum u32 {XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE = 0, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X = 1, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y = 2, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X = 4, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y = 8, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X = 16, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y = 32, }
destroy_func_ptr_anon_4 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
set_size_func_ptr_anon_5 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, width: i32, height: i32)
set_anchor_rect_func_ptr_anon_6 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, x: i32, y: i32, width: i32, height: i32)
set_anchor_func_ptr_anon_7 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, anchor: u32)
set_gravity_func_ptr_anon_8 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, gravity: u32)
set_constraint_adjustment_func_ptr_anon_9 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, constraint_adjustment: u32)
set_offset_func_ptr_anon_10 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, x: i32, y: i32)
set_reactive_func_ptr_anon_11 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
set_parent_size_func_ptr_anon_12 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, parent_width: i32, parent_height: i32)
set_parent_configure_func_ptr_anon_13 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, serial: u32)
positioner_interface :: struct {
    destroy: destroy_func_ptr_anon_4,
    set_size: set_size_func_ptr_anon_5,
    set_anchor_rect: set_anchor_rect_func_ptr_anon_6,
    set_anchor: set_anchor_func_ptr_anon_7,
    set_gravity: set_gravity_func_ptr_anon_8,
    set_constraint_adjustment: set_constraint_adjustment_func_ptr_anon_9,
    set_offset: set_offset_func_ptr_anon_10,
    set_reactive: set_reactive_func_ptr_anon_11,
    set_parent_size: set_parent_size_func_ptr_anon_12,
    set_parent_configure: set_parent_configure_func_ptr_anon_13,
}
surface_error :: enum u32 {XDG_SURFACE_ERROR_NOT_CONSTRUCTED = 1, XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED = 2, XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER = 3, XDG_SURFACE_ERROR_INVALID_SERIAL = 4, XDG_SURFACE_ERROR_INVALID_SIZE = 5, XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = 6, }
destroy_func_ptr_anon_14 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
get_toplevel_func_ptr_anon_15 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, id: u32)
get_popup_func_ptr_anon_16 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, id: u32, parent: ^server.resource, positioner_p: ^server.resource)
set_window_geometry_func_ptr_anon_17 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, x: i32, y: i32, width: i32, height: i32)
ack_configure_func_ptr_anon_18 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, serial: u32)
surface_interface :: struct {
    destroy: destroy_func_ptr_anon_14,
    get_toplevel: get_toplevel_func_ptr_anon_15,
    get_popup: get_popup_func_ptr_anon_16,
    set_window_geometry: set_window_geometry_func_ptr_anon_17,
    ack_configure: ack_configure_func_ptr_anon_18,
}
toplevel_error :: enum u32 {XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE = 0, XDG_TOPLEVEL_ERROR_INVALID_PARENT = 1, XDG_TOPLEVEL_ERROR_INVALID_SIZE = 2, }
toplevel_resize_edge :: enum u32 {XDG_TOPLEVEL_RESIZE_EDGE_NONE = 0, XDG_TOPLEVEL_RESIZE_EDGE_TOP = 1, XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM = 2, XDG_TOPLEVEL_RESIZE_EDGE_LEFT = 4, XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT = 5, XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT = 6, XDG_TOPLEVEL_RESIZE_EDGE_RIGHT = 8, XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT = 9, XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT = 10, }
toplevel_state :: enum u32 {XDG_TOPLEVEL_STATE_MAXIMIZED = 1, XDG_TOPLEVEL_STATE_FULLSCREEN = 2, XDG_TOPLEVEL_STATE_RESIZING = 3, XDG_TOPLEVEL_STATE_ACTIVATED = 4, XDG_TOPLEVEL_STATE_TILED_LEFT = 5, XDG_TOPLEVEL_STATE_TILED_RIGHT = 6, XDG_TOPLEVEL_STATE_TILED_TOP = 7, XDG_TOPLEVEL_STATE_TILED_BOTTOM = 8, XDG_TOPLEVEL_STATE_SUSPENDED = 9, }
toplevel_wm_capabilities :: enum u32 {XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU = 1, XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE = 2, XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN = 3, XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE = 4, }
destroy_func_ptr_anon_19 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
set_parent_func_ptr_anon_20 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, parent: ^server.resource)
set_title_func_ptr_anon_21 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, title: cstring)
set_app_id_func_ptr_anon_22 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, app_id: cstring)
show_window_menu_func_ptr_anon_23 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, seat_p: ^server.resource, serial: u32, x: i32, y: i32)
move_func_ptr_anon_24 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, seat_p: ^server.resource, serial: u32)
resize_func_ptr_anon_25 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, seat_p: ^server.resource, serial: u32, edges: u32)
set_max_size_func_ptr_anon_26 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, width: i32, height: i32)
set_min_size_func_ptr_anon_27 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, width: i32, height: i32)
set_maximized_func_ptr_anon_28 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
unset_maximized_func_ptr_anon_29 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
set_fullscreen_func_ptr_anon_30 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, output_p: ^server.resource)
unset_fullscreen_func_ptr_anon_31 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
set_minimized_func_ptr_anon_32 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
toplevel_interface :: struct {
    destroy: destroy_func_ptr_anon_19,
    set_parent: set_parent_func_ptr_anon_20,
    set_title: set_title_func_ptr_anon_21,
    set_app_id: set_app_id_func_ptr_anon_22,
    show_window_menu: show_window_menu_func_ptr_anon_23,
    move: move_func_ptr_anon_24,
    resize: resize_func_ptr_anon_25,
    set_max_size: set_max_size_func_ptr_anon_26,
    set_min_size: set_min_size_func_ptr_anon_27,
    set_maximized: set_maximized_func_ptr_anon_28,
    unset_maximized: unset_maximized_func_ptr_anon_29,
    set_fullscreen: set_fullscreen_func_ptr_anon_30,
    unset_fullscreen: unset_fullscreen_func_ptr_anon_31,
    set_minimized: set_minimized_func_ptr_anon_32,
}
popup_error :: enum u32 {XDG_POPUP_ERROR_INVALID_GRAB = 0, }
destroy_func_ptr_anon_33 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource)
grab_func_ptr_anon_34 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, seat_p: ^server.resource, serial: u32)
reposition_func_ptr_anon_35 :: #type proc "c" (client_p: ^server.client, resource_p: ^server.resource, positioner_p: ^server.resource, token: u32)
popup_interface :: struct {
    destroy: destroy_func_ptr_anon_33,
    grab: grab_func_ptr_anon_34,
    reposition: reposition_func_ptr_anon_35,
}

foreign import xdg_shell_runic "../../lib/libxdg-shell-server.a"

@(default_calling_convention = "c")
foreign xdg_shell_runic {
    @(link_name = "xdg_wm_base_interface")
    wm_base_interface_v: util.interface

    @(link_name = "xdg_positioner_interface")
    positioner_interface_v: util.interface

    @(link_name = "xdg_surface_interface")
    surface_interface_v: util.interface

    @(link_name = "xdg_toplevel_interface")
    toplevel_interface_v: util.interface

    @(link_name = "xdg_popup_interface")
    popup_interface_v: util.interface

    @(link_name = "xdg_wm_base_error_is_valid_wrapper")
    wm_base_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_wm_base_send_ping_wrapper")
    wm_base_send_ping :: proc(resource_: ^server.resource, serial: u32) ---

    @(link_name = "xdg_positioner_error_is_valid_wrapper")
    positioner_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_positioner_anchor_is_valid_wrapper")
    positioner_anchor_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_positioner_gravity_is_valid_wrapper")
    positioner_gravity_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_positioner_constraint_adjustment_is_valid_wrapper")
    positioner_constraint_adjustment_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_surface_error_is_valid_wrapper")
    surface_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_surface_send_configure_wrapper")
    surface_send_configure :: proc(resource_: ^server.resource, serial: u32) ---

    @(link_name = "xdg_toplevel_error_is_valid_wrapper")
    toplevel_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_toplevel_resize_edge_is_valid_wrapper")
    toplevel_resize_edge_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_toplevel_state_is_valid_wrapper")
    toplevel_state_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_toplevel_wm_capabilities_is_valid_wrapper")
    toplevel_wm_capabilities_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_toplevel_send_configure_wrapper")
    toplevel_send_configure :: proc(resource_: ^server.resource, width: i32, height: i32, states: [^]util.array) ---

    @(link_name = "xdg_toplevel_send_close_wrapper")
    toplevel_send_close :: proc(resource_: ^server.resource) ---

    @(link_name = "xdg_toplevel_send_configure_bounds_wrapper")
    toplevel_send_configure_bounds :: proc(resource_: ^server.resource, width: i32, height: i32) ---

    @(link_name = "xdg_toplevel_send_wm_capabilities_wrapper")
    toplevel_send_wm_capabilities :: proc(resource_: ^server.resource, capabilities: [^]util.array) ---

    @(link_name = "xdg_popup_error_is_valid_wrapper")
    popup_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "xdg_popup_send_configure_wrapper")
    popup_send_configure :: proc(resource_: ^server.resource, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "xdg_popup_send_popup_done_wrapper")
    popup_send_popup_done :: proc(resource_: ^server.resource) ---

    @(link_name = "xdg_popup_send_repositioned_wrapper")
    popup_send_repositioned :: proc(resource_: ^server.resource, token: u32) ---

}

