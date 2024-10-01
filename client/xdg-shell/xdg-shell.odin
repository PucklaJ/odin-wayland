package xdg_shell

import "../../client"
import "../../util"

XDG_WM_BASE_DESTROY :: 0
XDG_WM_BASE_CREATE_POSITIONER :: 1
XDG_WM_BASE_GET_XDG_SURFACE :: 2
XDG_WM_BASE_PONG :: 3
XDG_WM_BASE_PING_SINCE_VERSION :: 1
XDG_WM_BASE_DESTROY_SINCE_VERSION :: 1
XDG_WM_BASE_CREATE_POSITIONER_SINCE_VERSION :: 1
XDG_WM_BASE_GET_XDG_SURFACE_SINCE_VERSION :: 1
XDG_WM_BASE_PONG_SINCE_VERSION :: 1
XDG_POSITIONER_DESTROY :: 0
XDG_POSITIONER_SET_SIZE :: 1
XDG_POSITIONER_SET_ANCHOR_RECT :: 2
XDG_POSITIONER_SET_ANCHOR :: 3
XDG_POSITIONER_SET_GRAVITY :: 4
XDG_POSITIONER_SET_CONSTRAINT_ADJUSTMENT :: 5
XDG_POSITIONER_SET_OFFSET :: 6
XDG_POSITIONER_SET_REACTIVE :: 7
XDG_POSITIONER_SET_PARENT_SIZE :: 8
XDG_POSITIONER_SET_PARENT_CONFIGURE :: 9
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
XDG_SURFACE_DESTROY :: 0
XDG_SURFACE_GET_TOPLEVEL :: 1
XDG_SURFACE_GET_POPUP :: 2
XDG_SURFACE_SET_WINDOW_GEOMETRY :: 3
XDG_SURFACE_ACK_CONFIGURE :: 4
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
XDG_TOPLEVEL_DESTROY :: 0
XDG_TOPLEVEL_SET_PARENT :: 1
XDG_TOPLEVEL_SET_TITLE :: 2
XDG_TOPLEVEL_SET_APP_ID :: 3
XDG_TOPLEVEL_SHOW_WINDOW_MENU :: 4
XDG_TOPLEVEL_MOVE :: 5
XDG_TOPLEVEL_RESIZE :: 6
XDG_TOPLEVEL_SET_MAX_SIZE :: 7
XDG_TOPLEVEL_SET_MIN_SIZE :: 8
XDG_TOPLEVEL_SET_MAXIMIZED :: 9
XDG_TOPLEVEL_UNSET_MAXIMIZED :: 10
XDG_TOPLEVEL_SET_FULLSCREEN :: 11
XDG_TOPLEVEL_UNSET_FULLSCREEN :: 12
XDG_TOPLEVEL_SET_MINIMIZED :: 13
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
XDG_POPUP_DESTROY :: 0
XDG_POPUP_GRAB :: 1
XDG_POPUP_REPOSITION :: 2
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
ping_func_ptr_anon_0 :: #type proc "c" (data: rawptr, xdg_wm_base: ^wm_base, serial: u32)
wm_base_listener :: struct {
    ping: ping_func_ptr_anon_0,
}
positioner_error :: enum u32 {XDG_POSITIONER_ERROR_INVALID_INPUT = 0, }
positioner_anchor :: enum u32 {XDG_POSITIONER_ANCHOR_NONE = 0, XDG_POSITIONER_ANCHOR_TOP = 1, XDG_POSITIONER_ANCHOR_BOTTOM = 2, XDG_POSITIONER_ANCHOR_LEFT = 3, XDG_POSITIONER_ANCHOR_RIGHT = 4, XDG_POSITIONER_ANCHOR_TOP_LEFT = 5, XDG_POSITIONER_ANCHOR_BOTTOM_LEFT = 6, XDG_POSITIONER_ANCHOR_TOP_RIGHT = 7, XDG_POSITIONER_ANCHOR_BOTTOM_RIGHT = 8, }
positioner_gravity :: enum u32 {XDG_POSITIONER_GRAVITY_NONE = 0, XDG_POSITIONER_GRAVITY_TOP = 1, XDG_POSITIONER_GRAVITY_BOTTOM = 2, XDG_POSITIONER_GRAVITY_LEFT = 3, XDG_POSITIONER_GRAVITY_RIGHT = 4, XDG_POSITIONER_GRAVITY_TOP_LEFT = 5, XDG_POSITIONER_GRAVITY_BOTTOM_LEFT = 6, XDG_POSITIONER_GRAVITY_TOP_RIGHT = 7, XDG_POSITIONER_GRAVITY_BOTTOM_RIGHT = 8, }
positioner_constraint_adjustment :: enum u32 {XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_NONE = 0, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_X = 1, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_SLIDE_Y = 2, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_X = 4, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_FLIP_Y = 8, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_X = 16, XDG_POSITIONER_CONSTRAINT_ADJUSTMENT_RESIZE_Y = 32, }
surface_error :: enum u32 {XDG_SURFACE_ERROR_NOT_CONSTRUCTED = 1, XDG_SURFACE_ERROR_ALREADY_CONSTRUCTED = 2, XDG_SURFACE_ERROR_UNCONFIGURED_BUFFER = 3, XDG_SURFACE_ERROR_INVALID_SERIAL = 4, XDG_SURFACE_ERROR_INVALID_SIZE = 5, XDG_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = 6, }
configure_func_ptr_anon_1 :: #type proc "c" (data: rawptr, xdg_surface: ^surface, serial: u32)
surface_listener :: struct {
    configure: configure_func_ptr_anon_1,
}
toplevel_error :: enum u32 {XDG_TOPLEVEL_ERROR_INVALID_RESIZE_EDGE = 0, XDG_TOPLEVEL_ERROR_INVALID_PARENT = 1, XDG_TOPLEVEL_ERROR_INVALID_SIZE = 2, }
toplevel_resize_edge :: enum u32 {XDG_TOPLEVEL_RESIZE_EDGE_NONE = 0, XDG_TOPLEVEL_RESIZE_EDGE_TOP = 1, XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM = 2, XDG_TOPLEVEL_RESIZE_EDGE_LEFT = 4, XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT = 5, XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT = 6, XDG_TOPLEVEL_RESIZE_EDGE_RIGHT = 8, XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT = 9, XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT = 10, }
toplevel_state :: enum u32 {XDG_TOPLEVEL_STATE_MAXIMIZED = 1, XDG_TOPLEVEL_STATE_FULLSCREEN = 2, XDG_TOPLEVEL_STATE_RESIZING = 3, XDG_TOPLEVEL_STATE_ACTIVATED = 4, XDG_TOPLEVEL_STATE_TILED_LEFT = 5, XDG_TOPLEVEL_STATE_TILED_RIGHT = 6, XDG_TOPLEVEL_STATE_TILED_TOP = 7, XDG_TOPLEVEL_STATE_TILED_BOTTOM = 8, XDG_TOPLEVEL_STATE_SUSPENDED = 9, }
toplevel_wm_capabilities :: enum u32 {XDG_TOPLEVEL_WM_CAPABILITIES_WINDOW_MENU = 1, XDG_TOPLEVEL_WM_CAPABILITIES_MAXIMIZE = 2, XDG_TOPLEVEL_WM_CAPABILITIES_FULLSCREEN = 3, XDG_TOPLEVEL_WM_CAPABILITIES_MINIMIZE = 4, }
configure_func_ptr_anon_2 :: #type proc "c" (data: rawptr, xdg_toplevel: ^toplevel, width: i32, height: i32, states: [^]util.array)
close_func_ptr_anon_3 :: #type proc "c" (data: rawptr, xdg_toplevel: ^toplevel)
configure_bounds_func_ptr_anon_4 :: #type proc "c" (data: rawptr, xdg_toplevel: ^toplevel, width: i32, height: i32)
wm_capabilities_func_ptr_anon_5 :: #type proc "c" (data: rawptr, xdg_toplevel: ^toplevel, capabilities: [^]util.array)
toplevel_listener :: struct {
    configure: configure_func_ptr_anon_2,
    close: close_func_ptr_anon_3,
    configure_bounds: configure_bounds_func_ptr_anon_4,
    wm_capabilities: wm_capabilities_func_ptr_anon_5,
}
popup_error :: enum u32 {XDG_POPUP_ERROR_INVALID_GRAB = 0, }
configure_func_ptr_anon_6 :: #type proc "c" (data: rawptr, xdg_popup: ^popup, x: i32, y: i32, width: i32, height: i32)
popup_done_func_ptr_anon_7 :: #type proc "c" (data: rawptr, xdg_popup: ^popup)
repositioned_func_ptr_anon_8 :: #type proc "c" (data: rawptr, xdg_popup: ^popup, token: u32)
popup_listener :: struct {
    configure: configure_func_ptr_anon_6,
    popup_done: popup_done_func_ptr_anon_7,
    repositioned: repositioned_func_ptr_anon_8,
}

foreign import xdg_shell_runic "../../lib/libxdg-shell-client.a"

@(default_calling_convention = "c")
foreign xdg_shell_runic {
    @(link_name = "xdg_wm_base_interface")
    wm_base_interface: util.interface

    @(link_name = "xdg_positioner_interface")
    positioner_interface: util.interface

    @(link_name = "xdg_surface_interface")
    surface_interface: util.interface

    @(link_name = "xdg_toplevel_interface")
    toplevel_interface: util.interface

    @(link_name = "xdg_popup_interface")
    popup_interface: util.interface

    @(link_name = "xdg_wm_base_add_listener_wrapper")
    wm_base_add_listener :: proc(xdg_wm_base: ^wm_base, listener: ^wm_base_listener, data: rawptr) -> i32 ---

    @(link_name = "xdg_wm_base_set_user_data_wrapper")
    wm_base_set_user_data :: proc(xdg_wm_base: ^wm_base, user_data: rawptr) ---

    @(link_name = "xdg_wm_base_get_user_data_wrapper")
    wm_base_get_user_data :: proc(xdg_wm_base: ^wm_base) -> rawptr ---

    @(link_name = "xdg_wm_base_get_version_wrapper")
    wm_base_get_version :: proc(xdg_wm_base: ^wm_base) -> u32 ---

    @(link_name = "xdg_wm_base_destroy_wrapper")
    wm_base_destroy :: proc(xdg_wm_base: ^wm_base) ---

    @(link_name = "xdg_wm_base_create_positioner_wrapper")
    wm_base_create_positioner :: proc(xdg_wm_base: ^wm_base) -> ^positioner ---

    @(link_name = "xdg_wm_base_get_xdg_surface_wrapper")
    wm_base_get_xdg_surface :: proc(xdg_wm_base: ^wm_base, surface_: ^client.surface) -> ^surface ---

    @(link_name = "xdg_wm_base_pong_wrapper")
    wm_base_pong :: proc(xdg_wm_base: ^wm_base, serial: u32) ---

    @(link_name = "xdg_positioner_set_user_data_wrapper")
    positioner_set_user_data :: proc(xdg_positioner: ^positioner, user_data: rawptr) ---

    @(link_name = "xdg_positioner_get_user_data_wrapper")
    positioner_get_user_data :: proc(xdg_positioner: ^positioner) -> rawptr ---

    @(link_name = "xdg_positioner_get_version_wrapper")
    positioner_get_version :: proc(xdg_positioner: ^positioner) -> u32 ---

    @(link_name = "xdg_positioner_destroy_wrapper")
    positioner_destroy :: proc(xdg_positioner: ^positioner) ---

    @(link_name = "xdg_positioner_set_size_wrapper")
    positioner_set_size :: proc(xdg_positioner: ^positioner, width: i32, height: i32) ---

    @(link_name = "xdg_positioner_set_anchor_rect_wrapper")
    positioner_set_anchor_rect :: proc(xdg_positioner: ^positioner, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "xdg_positioner_set_anchor_wrapper")
    positioner_set_anchor :: proc(xdg_positioner: ^positioner, anchor: u32) ---

    @(link_name = "xdg_positioner_set_gravity_wrapper")
    positioner_set_gravity :: proc(xdg_positioner: ^positioner, gravity: u32) ---

    @(link_name = "xdg_positioner_set_constraint_adjustment_wrapper")
    positioner_set_constraint_adjustment :: proc(xdg_positioner: ^positioner, constraint_adjustment: u32) ---

    @(link_name = "xdg_positioner_set_offset_wrapper")
    positioner_set_offset :: proc(xdg_positioner: ^positioner, x: i32, y: i32) ---

    @(link_name = "xdg_positioner_set_reactive_wrapper")
    positioner_set_reactive :: proc(xdg_positioner: ^positioner) ---

    @(link_name = "xdg_positioner_set_parent_size_wrapper")
    positioner_set_parent_size :: proc(xdg_positioner: ^positioner, parent_width: i32, parent_height: i32) ---

    @(link_name = "xdg_positioner_set_parent_configure_wrapper")
    positioner_set_parent_configure :: proc(xdg_positioner: ^positioner, serial: u32) ---

    @(link_name = "xdg_surface_add_listener_wrapper")
    surface_add_listener :: proc(xdg_surface: ^surface, listener: ^surface_listener, data: rawptr) -> i32 ---

    @(link_name = "xdg_surface_set_user_data_wrapper")
    surface_set_user_data :: proc(xdg_surface: ^surface, user_data: rawptr) ---

    @(link_name = "xdg_surface_get_user_data_wrapper")
    surface_get_user_data :: proc(xdg_surface: ^surface) -> rawptr ---

    @(link_name = "xdg_surface_get_version_wrapper")
    surface_get_version :: proc(xdg_surface: ^surface) -> u32 ---

    @(link_name = "xdg_surface_destroy_wrapper")
    surface_destroy :: proc(xdg_surface: ^surface) ---

    @(link_name = "xdg_surface_get_toplevel_wrapper")
    surface_get_toplevel :: proc(xdg_surface: ^surface) -> ^toplevel ---

    @(link_name = "xdg_surface_get_popup_wrapper")
    surface_get_popup :: proc(xdg_surface: ^surface, parent: ^surface, positioner_p: ^positioner) -> ^popup ---

    @(link_name = "xdg_surface_set_window_geometry_wrapper")
    surface_set_window_geometry :: proc(xdg_surface: ^surface, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "xdg_surface_ack_configure_wrapper")
    surface_ack_configure :: proc(xdg_surface: ^surface, serial: u32) ---

    @(link_name = "xdg_toplevel_add_listener_wrapper")
    toplevel_add_listener :: proc(xdg_toplevel: ^toplevel, listener: ^toplevel_listener, data: rawptr) -> i32 ---

    @(link_name = "xdg_toplevel_set_user_data_wrapper")
    toplevel_set_user_data :: proc(xdg_toplevel: ^toplevel, user_data: rawptr) ---

    @(link_name = "xdg_toplevel_get_user_data_wrapper")
    toplevel_get_user_data :: proc(xdg_toplevel: ^toplevel) -> rawptr ---

    @(link_name = "xdg_toplevel_get_version_wrapper")
    toplevel_get_version :: proc(xdg_toplevel: ^toplevel) -> u32 ---

    @(link_name = "xdg_toplevel_destroy_wrapper")
    toplevel_destroy :: proc(xdg_toplevel: ^toplevel) ---

    @(link_name = "xdg_toplevel_set_parent_wrapper")
    toplevel_set_parent :: proc(xdg_toplevel: ^toplevel, parent: ^toplevel) ---

    @(link_name = "xdg_toplevel_set_title_wrapper")
    toplevel_set_title :: proc(xdg_toplevel: ^toplevel, title: cstring) ---

    @(link_name = "xdg_toplevel_set_app_id_wrapper")
    toplevel_set_app_id :: proc(xdg_toplevel: ^toplevel, app_id: cstring) ---

    @(link_name = "xdg_toplevel_show_window_menu_wrapper")
    toplevel_show_window_menu :: proc(xdg_toplevel: ^toplevel, seat_p: ^client.seat, serial: u32, x: i32, y: i32) ---

    @(link_name = "xdg_toplevel_move_wrapper")
    toplevel_move :: proc(xdg_toplevel: ^toplevel, seat_p: ^client.seat, serial: u32) ---

    @(link_name = "xdg_toplevel_resize_wrapper")
    toplevel_resize :: proc(xdg_toplevel: ^toplevel, seat_p: ^client.seat, serial: u32, edges: u32) ---

    @(link_name = "xdg_toplevel_set_max_size_wrapper")
    toplevel_set_max_size :: proc(xdg_toplevel: ^toplevel, width: i32, height: i32) ---

    @(link_name = "xdg_toplevel_set_min_size_wrapper")
    toplevel_set_min_size :: proc(xdg_toplevel: ^toplevel, width: i32, height: i32) ---

    @(link_name = "xdg_toplevel_set_maximized_wrapper")
    toplevel_set_maximized :: proc(xdg_toplevel: ^toplevel) ---

    @(link_name = "xdg_toplevel_unset_maximized_wrapper")
    toplevel_unset_maximized :: proc(xdg_toplevel: ^toplevel) ---

    @(link_name = "xdg_toplevel_set_fullscreen_wrapper")
    toplevel_set_fullscreen :: proc(xdg_toplevel: ^toplevel, output_p: ^client.output) ---

    @(link_name = "xdg_toplevel_unset_fullscreen_wrapper")
    toplevel_unset_fullscreen :: proc(xdg_toplevel: ^toplevel) ---

    @(link_name = "xdg_toplevel_set_minimized_wrapper")
    toplevel_set_minimized :: proc(xdg_toplevel: ^toplevel) ---

    @(link_name = "xdg_popup_add_listener_wrapper")
    popup_add_listener :: proc(xdg_popup: ^popup, listener: ^popup_listener, data: rawptr) -> i32 ---

    @(link_name = "xdg_popup_set_user_data_wrapper")
    popup_set_user_data :: proc(xdg_popup: ^popup, user_data: rawptr) ---

    @(link_name = "xdg_popup_get_user_data_wrapper")
    popup_get_user_data :: proc(xdg_popup: ^popup) -> rawptr ---

    @(link_name = "xdg_popup_get_version_wrapper")
    popup_get_version :: proc(xdg_popup: ^popup) -> u32 ---

    @(link_name = "xdg_popup_destroy_wrapper")
    popup_destroy :: proc(xdg_popup: ^popup) ---

    @(link_name = "xdg_popup_grab_wrapper")
    popup_grab :: proc(xdg_popup: ^popup, seat_p: ^client.seat, serial: u32) ---

    @(link_name = "xdg_popup_reposition_wrapper")
    popup_reposition :: proc(xdg_popup: ^popup, positioner_p: ^positioner, token: u32) ---

}

