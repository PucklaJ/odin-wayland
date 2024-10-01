package client

import "../util"

foreign import client_runic "../lib/libwayland-client-wrapper.a"

@(default_calling_convention = "c")
foreign client_runic {
    @(link_name = "wl_display_add_listener_wrapper")
    display_add_listener :: proc(wl_display: ^display, listener: ^display_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_display_set_user_data_wrapper")
    display_set_user_data :: proc(wl_display: ^display, user_data: rawptr) ---

    @(link_name = "wl_display_get_user_data_wrapper")
    display_get_user_data :: proc(wl_display: ^display) -> rawptr ---

    @(link_name = "wl_display_get_version_wrapper")
    display_get_version :: proc(wl_display: ^display) -> u32 ---

    @(link_name = "wl_display_sync_wrapper")
    display_sync :: proc(wl_display: ^display) -> ^callback ---

    @(link_name = "wl_display_get_registry_wrapper")
    display_get_registry :: proc(wl_display: ^display) -> ^registry ---

    @(link_name = "wl_registry_add_listener_wrapper")
    registry_add_listener :: proc(wl_registry: ^registry, listener: ^registry_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_registry_set_user_data_wrapper")
    registry_set_user_data :: proc(wl_registry: ^registry, user_data: rawptr) ---

    @(link_name = "wl_registry_get_user_data_wrapper")
    registry_get_user_data :: proc(wl_registry: ^registry) -> rawptr ---

    @(link_name = "wl_registry_get_version_wrapper")
    registry_get_version :: proc(wl_registry: ^registry) -> u32 ---

    @(link_name = "wl_registry_destroy_wrapper")
    registry_destroy :: proc(wl_registry: ^registry) ---

    @(link_name = "wl_registry_bind_wrapper")
    registry_bind :: proc(wl_registry: ^registry, name: u32, interface: ^util.interface, version: u32) -> rawptr ---

    @(link_name = "wl_callback_add_listener_wrapper")
    callback_add_listener :: proc(wl_callback: ^callback, listener: ^callback_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_callback_set_user_data_wrapper")
    callback_set_user_data :: proc(wl_callback: ^callback, user_data: rawptr) ---

    @(link_name = "wl_callback_get_user_data_wrapper")
    callback_get_user_data :: proc(wl_callback: ^callback) -> rawptr ---

    @(link_name = "wl_callback_get_version_wrapper")
    callback_get_version :: proc(wl_callback: ^callback) -> u32 ---

    @(link_name = "wl_callback_destroy_wrapper")
    callback_destroy :: proc(wl_callback: ^callback) ---

    @(link_name = "wl_compositor_set_user_data_wrapper")
    compositor_set_user_data :: proc(wl_compositor: ^compositor, user_data: rawptr) ---

    @(link_name = "wl_compositor_get_user_data_wrapper")
    compositor_get_user_data :: proc(wl_compositor: ^compositor) -> rawptr ---

    @(link_name = "wl_compositor_get_version_wrapper")
    compositor_get_version :: proc(wl_compositor: ^compositor) -> u32 ---

    @(link_name = "wl_compositor_destroy_wrapper")
    compositor_destroy :: proc(wl_compositor: ^compositor) ---

    @(link_name = "wl_compositor_create_surface_wrapper")
    compositor_create_surface :: proc(wl_compositor: ^compositor) -> ^surface ---

    @(link_name = "wl_compositor_create_region_wrapper")
    compositor_create_region :: proc(wl_compositor: ^compositor) -> ^region ---

    @(link_name = "wl_shm_pool_set_user_data_wrapper")
    shm_pool_set_user_data :: proc(wl_shm_pool: ^shm_pool, user_data: rawptr) ---

    @(link_name = "wl_shm_pool_get_user_data_wrapper")
    shm_pool_get_user_data :: proc(wl_shm_pool: ^shm_pool) -> rawptr ---

    @(link_name = "wl_shm_pool_get_version_wrapper")
    shm_pool_get_version :: proc(wl_shm_pool: ^shm_pool) -> u32 ---

    @(link_name = "wl_shm_pool_create_buffer_wrapper")
    shm_pool_create_buffer :: proc(wl_shm_pool: ^shm_pool, offset: i32, width: i32, height: i32, stride: i32, format: u32) -> ^buffer ---

    @(link_name = "wl_shm_pool_destroy_wrapper")
    shm_pool_destroy :: proc(wl_shm_pool: ^shm_pool) ---

    @(link_name = "wl_shm_pool_resize_wrapper")
    shm_pool_resize :: proc(wl_shm_pool: ^shm_pool, size: i32) ---

    @(link_name = "wl_shm_add_listener_wrapper")
    shm_add_listener :: proc(wl_shm: ^shm, listener: ^shm_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_shm_set_user_data_wrapper")
    shm_set_user_data :: proc(wl_shm: ^shm, user_data: rawptr) ---

    @(link_name = "wl_shm_get_user_data_wrapper")
    shm_get_user_data :: proc(wl_shm: ^shm) -> rawptr ---

    @(link_name = "wl_shm_get_version_wrapper")
    shm_get_version :: proc(wl_shm: ^shm) -> u32 ---

    @(link_name = "wl_shm_destroy_wrapper")
    shm_destroy :: proc(wl_shm: ^shm) ---

    @(link_name = "wl_shm_create_pool_wrapper")
    shm_create_pool :: proc(wl_shm: ^shm, fd: i32, size: i32) -> ^shm_pool ---

    @(link_name = "wl_shm_release_wrapper")
    shm_release :: proc(wl_shm: ^shm) ---

    @(link_name = "wl_buffer_add_listener_wrapper")
    buffer_add_listener :: proc(wl_buffer: ^buffer, listener: ^buffer_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_buffer_set_user_data_wrapper")
    buffer_set_user_data :: proc(wl_buffer: ^buffer, user_data: rawptr) ---

    @(link_name = "wl_buffer_get_user_data_wrapper")
    buffer_get_user_data :: proc(wl_buffer: ^buffer) -> rawptr ---

    @(link_name = "wl_buffer_get_version_wrapper")
    buffer_get_version :: proc(wl_buffer: ^buffer) -> u32 ---

    @(link_name = "wl_buffer_destroy_wrapper")
    buffer_destroy :: proc(wl_buffer: ^buffer) ---

    @(link_name = "wl_data_offer_add_listener_wrapper")
    data_offer_add_listener :: proc(wl_data_offer: ^data_offer, listener: ^data_offer_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_data_offer_set_user_data_wrapper")
    data_offer_set_user_data :: proc(wl_data_offer: ^data_offer, user_data: rawptr) ---

    @(link_name = "wl_data_offer_get_user_data_wrapper")
    data_offer_get_user_data :: proc(wl_data_offer: ^data_offer) -> rawptr ---

    @(link_name = "wl_data_offer_get_version_wrapper")
    data_offer_get_version :: proc(wl_data_offer: ^data_offer) -> u32 ---

    @(link_name = "wl_data_offer_accept_wrapper")
    data_offer_accept :: proc(wl_data_offer: ^data_offer, serial: u32, mime_type: cstring) ---

    @(link_name = "wl_data_offer_receive_wrapper")
    data_offer_receive :: proc(wl_data_offer: ^data_offer, mime_type: cstring, fd: i32) ---

    @(link_name = "wl_data_offer_destroy_wrapper")
    data_offer_destroy :: proc(wl_data_offer: ^data_offer) ---

    @(link_name = "wl_data_offer_finish_wrapper")
    data_offer_finish :: proc(wl_data_offer: ^data_offer) ---

    @(link_name = "wl_data_offer_set_actions_wrapper")
    data_offer_set_actions :: proc(wl_data_offer: ^data_offer, dnd_actions: u32, preferred_action: u32) ---

    @(link_name = "wl_data_source_add_listener_wrapper")
    data_source_add_listener :: proc(wl_data_source: ^data_source, listener: ^data_source_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_data_source_set_user_data_wrapper")
    data_source_set_user_data :: proc(wl_data_source: ^data_source, user_data: rawptr) ---

    @(link_name = "wl_data_source_get_user_data_wrapper")
    data_source_get_user_data :: proc(wl_data_source: ^data_source) -> rawptr ---

    @(link_name = "wl_data_source_get_version_wrapper")
    data_source_get_version :: proc(wl_data_source: ^data_source) -> u32 ---

    @(link_name = "wl_data_source_offer_wrapper")
    data_source_offer :: proc(wl_data_source: ^data_source, mime_type: cstring) ---

    @(link_name = "wl_data_source_destroy_wrapper")
    data_source_destroy :: proc(wl_data_source: ^data_source) ---

    @(link_name = "wl_data_source_set_actions_wrapper")
    data_source_set_actions :: proc(wl_data_source: ^data_source, dnd_actions: u32) ---

    @(link_name = "wl_data_device_add_listener_wrapper")
    data_device_add_listener :: proc(wl_data_device: ^data_device, listener: ^data_device_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_data_device_set_user_data_wrapper")
    data_device_set_user_data :: proc(wl_data_device: ^data_device, user_data: rawptr) ---

    @(link_name = "wl_data_device_get_user_data_wrapper")
    data_device_get_user_data :: proc(wl_data_device: ^data_device) -> rawptr ---

    @(link_name = "wl_data_device_get_version_wrapper")
    data_device_get_version :: proc(wl_data_device: ^data_device) -> u32 ---

    @(link_name = "wl_data_device_destroy_wrapper")
    data_device_destroy :: proc(wl_data_device: ^data_device) ---

    @(link_name = "wl_data_device_start_drag_wrapper")
    data_device_start_drag :: proc(wl_data_device: ^data_device, source: ^data_source, origin: ^surface, icon: ^surface, serial: u32) ---

    @(link_name = "wl_data_device_set_selection_wrapper")
    data_device_set_selection :: proc(wl_data_device: ^data_device, source: ^data_source, serial: u32) ---

    @(link_name = "wl_data_device_release_wrapper")
    data_device_release :: proc(wl_data_device: ^data_device) ---

    @(link_name = "wl_data_device_manager_set_user_data_wrapper")
    data_device_manager_set_user_data :: proc(wl_data_device_manager: ^data_device_manager, user_data: rawptr) ---

    @(link_name = "wl_data_device_manager_get_user_data_wrapper")
    data_device_manager_get_user_data :: proc(wl_data_device_manager: ^data_device_manager) -> rawptr ---

    @(link_name = "wl_data_device_manager_get_version_wrapper")
    data_device_manager_get_version :: proc(wl_data_device_manager: ^data_device_manager) -> u32 ---

    @(link_name = "wl_data_device_manager_destroy_wrapper")
    data_device_manager_destroy :: proc(wl_data_device_manager: ^data_device_manager) ---

    @(link_name = "wl_data_device_manager_create_data_source_wrapper")
    data_device_manager_create_data_source :: proc(wl_data_device_manager: ^data_device_manager) -> ^data_source ---

    @(link_name = "wl_data_device_manager_get_data_device_wrapper")
    data_device_manager_get_data_device :: proc(wl_data_device_manager: ^data_device_manager, seat: ^seat) -> ^data_device ---

    @(link_name = "wl_shell_set_user_data_wrapper")
    shell_set_user_data :: proc(wl_shell: ^shell, user_data: rawptr) ---

    @(link_name = "wl_shell_get_user_data_wrapper")
    shell_get_user_data :: proc(wl_shell: ^shell) -> rawptr ---

    @(link_name = "wl_shell_get_version_wrapper")
    shell_get_version :: proc(wl_shell: ^shell) -> u32 ---

    @(link_name = "wl_shell_destroy_wrapper")
    shell_destroy :: proc(wl_shell: ^shell) ---

    @(link_name = "wl_shell_get_shell_surface_wrapper")
    shell_get_shell_surface :: proc(wl_shell: ^shell, surface: ^surface) -> ^shell_surface ---

    @(link_name = "wl_shell_surface_add_listener_wrapper")
    shell_surface_add_listener :: proc(wl_shell_surface: ^shell_surface, listener: ^shell_surface_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_shell_surface_set_user_data_wrapper")
    shell_surface_set_user_data :: proc(wl_shell_surface: ^shell_surface, user_data: rawptr) ---

    @(link_name = "wl_shell_surface_get_user_data_wrapper")
    shell_surface_get_user_data :: proc(wl_shell_surface: ^shell_surface) -> rawptr ---

    @(link_name = "wl_shell_surface_get_version_wrapper")
    shell_surface_get_version :: proc(wl_shell_surface: ^shell_surface) -> u32 ---

    @(link_name = "wl_shell_surface_destroy_wrapper")
    shell_surface_destroy :: proc(wl_shell_surface: ^shell_surface) ---

    @(link_name = "wl_shell_surface_pong_wrapper")
    shell_surface_pong :: proc(wl_shell_surface: ^shell_surface, serial: u32) ---

    @(link_name = "wl_shell_surface_move_wrapper")
    shell_surface_move :: proc(wl_shell_surface: ^shell_surface, seat: ^seat, serial: u32) ---

    @(link_name = "wl_shell_surface_resize_wrapper")
    shell_surface_resize :: proc(wl_shell_surface: ^shell_surface, seat: ^seat, serial: u32, edges: u32) ---

    @(link_name = "wl_shell_surface_set_toplevel_wrapper")
    shell_surface_set_toplevel :: proc(wl_shell_surface: ^shell_surface) ---

    @(link_name = "wl_shell_surface_set_transient_wrapper")
    shell_surface_set_transient :: proc(wl_shell_surface: ^shell_surface, parent: ^surface, x: i32, y: i32, flags: u32) ---

    @(link_name = "wl_shell_surface_set_fullscreen_wrapper")
    shell_surface_set_fullscreen :: proc(wl_shell_surface: ^shell_surface, method: u32, framerate: u32, output: ^output) ---

    @(link_name = "wl_shell_surface_set_popup_wrapper")
    shell_surface_set_popup :: proc(wl_shell_surface: ^shell_surface, seat: ^seat, serial: u32, parent: ^surface, x: i32, y: i32, flags: u32) ---

    @(link_name = "wl_shell_surface_set_maximized_wrapper")
    shell_surface_set_maximized :: proc(wl_shell_surface: ^shell_surface, output: ^output) ---

    @(link_name = "wl_shell_surface_set_title_wrapper")
    shell_surface_set_title :: proc(wl_shell_surface: ^shell_surface, title: cstring) ---

    @(link_name = "wl_shell_surface_set_class_wrapper")
    shell_surface_set_class :: proc(wl_shell_surface: ^shell_surface, class_: cstring) ---

    @(link_name = "wl_surface_add_listener_wrapper")
    surface_add_listener :: proc(wl_surface: ^surface, listener: ^surface_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_surface_set_user_data_wrapper")
    surface_set_user_data :: proc(wl_surface: ^surface, user_data: rawptr) ---

    @(link_name = "wl_surface_get_user_data_wrapper")
    surface_get_user_data :: proc(wl_surface: ^surface) -> rawptr ---

    @(link_name = "wl_surface_get_version_wrapper")
    surface_get_version :: proc(wl_surface: ^surface) -> u32 ---

    @(link_name = "wl_surface_destroy_wrapper")
    surface_destroy :: proc(wl_surface: ^surface) ---

    @(link_name = "wl_surface_attach_wrapper")
    surface_attach :: proc(wl_surface: ^surface, buffer: ^buffer, x: i32, y: i32) ---

    @(link_name = "wl_surface_damage_wrapper")
    surface_damage :: proc(wl_surface: ^surface, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "wl_surface_frame_wrapper")
    surface_frame :: proc(wl_surface: ^surface) -> ^callback ---

    @(link_name = "wl_surface_set_opaque_region_wrapper")
    surface_set_opaque_region :: proc(wl_surface: ^surface, region: ^region) ---

    @(link_name = "wl_surface_set_input_region_wrapper")
    surface_set_input_region :: proc(wl_surface: ^surface, region: ^region) ---

    @(link_name = "wl_surface_commit_wrapper")
    surface_commit :: proc(wl_surface: ^surface) ---

    @(link_name = "wl_surface_set_buffer_transform_wrapper")
    surface_set_buffer_transform :: proc(wl_surface: ^surface, transform: i32) ---

    @(link_name = "wl_surface_set_buffer_scale_wrapper")
    surface_set_buffer_scale :: proc(wl_surface: ^surface, scale: i32) ---

    @(link_name = "wl_surface_damage_buffer_wrapper")
    surface_damage_buffer :: proc(wl_surface: ^surface, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "wl_surface_offset_wrapper")
    surface_offset :: proc(wl_surface: ^surface, x: i32, y: i32) ---

    @(link_name = "wl_seat_add_listener_wrapper")
    seat_add_listener :: proc(wl_seat: ^seat, listener: ^seat_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_seat_set_user_data_wrapper")
    seat_set_user_data :: proc(wl_seat: ^seat, user_data: rawptr) ---

    @(link_name = "wl_seat_get_user_data_wrapper")
    seat_get_user_data :: proc(wl_seat: ^seat) -> rawptr ---

    @(link_name = "wl_seat_get_version_wrapper")
    seat_get_version :: proc(wl_seat: ^seat) -> u32 ---

    @(link_name = "wl_seat_destroy_wrapper")
    seat_destroy :: proc(wl_seat: ^seat) ---

    @(link_name = "wl_seat_get_pointer_wrapper")
    seat_get_pointer :: proc(wl_seat: ^seat) -> ^pointer ---

    @(link_name = "wl_seat_get_keyboard_wrapper")
    seat_get_keyboard :: proc(wl_seat: ^seat) -> ^keyboard ---

    @(link_name = "wl_seat_get_touch_wrapper")
    seat_get_touch :: proc(wl_seat: ^seat) -> ^touch ---

    @(link_name = "wl_seat_release_wrapper")
    seat_release :: proc(wl_seat: ^seat) ---

    @(link_name = "wl_pointer_add_listener_wrapper")
    pointer_add_listener :: proc(wl_pointer: ^pointer, listener: ^pointer_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_pointer_set_user_data_wrapper")
    pointer_set_user_data :: proc(wl_pointer: ^pointer, user_data: rawptr) ---

    @(link_name = "wl_pointer_get_user_data_wrapper")
    pointer_get_user_data :: proc(wl_pointer: ^pointer) -> rawptr ---

    @(link_name = "wl_pointer_get_version_wrapper")
    pointer_get_version :: proc(wl_pointer: ^pointer) -> u32 ---

    @(link_name = "wl_pointer_destroy_wrapper")
    pointer_destroy :: proc(wl_pointer: ^pointer) ---

    @(link_name = "wl_pointer_set_cursor_wrapper")
    pointer_set_cursor :: proc(wl_pointer: ^pointer, serial: u32, surface: ^surface, hotspot_x: i32, hotspot_y: i32) ---

    @(link_name = "wl_pointer_release_wrapper")
    pointer_release :: proc(wl_pointer: ^pointer) ---

    @(link_name = "wl_keyboard_add_listener_wrapper")
    keyboard_add_listener :: proc(wl_keyboard: ^keyboard, listener: ^keyboard_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_keyboard_set_user_data_wrapper")
    keyboard_set_user_data :: proc(wl_keyboard: ^keyboard, user_data: rawptr) ---

    @(link_name = "wl_keyboard_get_user_data_wrapper")
    keyboard_get_user_data :: proc(wl_keyboard: ^keyboard) -> rawptr ---

    @(link_name = "wl_keyboard_get_version_wrapper")
    keyboard_get_version :: proc(wl_keyboard: ^keyboard) -> u32 ---

    @(link_name = "wl_keyboard_destroy_wrapper")
    keyboard_destroy :: proc(wl_keyboard: ^keyboard) ---

    @(link_name = "wl_keyboard_release_wrapper")
    keyboard_release :: proc(wl_keyboard: ^keyboard) ---

    @(link_name = "wl_touch_add_listener_wrapper")
    touch_add_listener :: proc(wl_touch: ^touch, listener: ^touch_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_touch_set_user_data_wrapper")
    touch_set_user_data :: proc(wl_touch: ^touch, user_data: rawptr) ---

    @(link_name = "wl_touch_get_user_data_wrapper")
    touch_get_user_data :: proc(wl_touch: ^touch) -> rawptr ---

    @(link_name = "wl_touch_get_version_wrapper")
    touch_get_version :: proc(wl_touch: ^touch) -> u32 ---

    @(link_name = "wl_touch_destroy_wrapper")
    touch_destroy :: proc(wl_touch: ^touch) ---

    @(link_name = "wl_touch_release_wrapper")
    touch_release :: proc(wl_touch: ^touch) ---

    @(link_name = "wl_output_add_listener_wrapper")
    output_add_listener :: proc(wl_output: ^output, listener: ^output_listener, data: rawptr) -> i32 ---

    @(link_name = "wl_output_set_user_data_wrapper")
    output_set_user_data :: proc(wl_output: ^output, user_data: rawptr) ---

    @(link_name = "wl_output_get_user_data_wrapper")
    output_get_user_data :: proc(wl_output: ^output) -> rawptr ---

    @(link_name = "wl_output_get_version_wrapper")
    output_get_version :: proc(wl_output: ^output) -> u32 ---

    @(link_name = "wl_output_destroy_wrapper")
    output_destroy :: proc(wl_output: ^output) ---

    @(link_name = "wl_output_release_wrapper")
    output_release :: proc(wl_output: ^output) ---

    @(link_name = "wl_region_set_user_data_wrapper")
    region_set_user_data :: proc(wl_region: ^region, user_data: rawptr) ---

    @(link_name = "wl_region_get_user_data_wrapper")
    region_get_user_data :: proc(wl_region: ^region) -> rawptr ---

    @(link_name = "wl_region_get_version_wrapper")
    region_get_version :: proc(wl_region: ^region) -> u32 ---

    @(link_name = "wl_region_destroy_wrapper")
    region_destroy :: proc(wl_region: ^region) ---

    @(link_name = "wl_region_add_wrapper")
    region_add :: proc(wl_region: ^region, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "wl_region_subtract_wrapper")
    region_subtract :: proc(wl_region: ^region, x: i32, y: i32, width: i32, height: i32) ---

    @(link_name = "wl_subcompositor_set_user_data_wrapper")
    subcompositor_set_user_data :: proc(wl_subcompositor: ^subcompositor, user_data: rawptr) ---

    @(link_name = "wl_subcompositor_get_user_data_wrapper")
    subcompositor_get_user_data :: proc(wl_subcompositor: ^subcompositor) -> rawptr ---

    @(link_name = "wl_subcompositor_get_version_wrapper")
    subcompositor_get_version :: proc(wl_subcompositor: ^subcompositor) -> u32 ---

    @(link_name = "wl_subcompositor_destroy_wrapper")
    subcompositor_destroy :: proc(wl_subcompositor: ^subcompositor) ---

    @(link_name = "wl_subcompositor_get_subsurface_wrapper")
    subcompositor_get_subsurface :: proc(wl_subcompositor: ^subcompositor, surface_: ^surface, parent: ^surface) -> ^subsurface ---

    @(link_name = "wl_subsurface_set_user_data_wrapper")
    subsurface_set_user_data :: proc(wl_subsurface: ^subsurface, user_data: rawptr) ---

    @(link_name = "wl_subsurface_get_user_data_wrapper")
    subsurface_get_user_data :: proc(wl_subsurface: ^subsurface) -> rawptr ---

    @(link_name = "wl_subsurface_get_version_wrapper")
    subsurface_get_version :: proc(wl_subsurface: ^subsurface) -> u32 ---

    @(link_name = "wl_subsurface_destroy_wrapper")
    subsurface_destroy :: proc(wl_subsurface: ^subsurface) ---

    @(link_name = "wl_subsurface_set_position_wrapper")
    subsurface_set_position :: proc(wl_subsurface: ^subsurface, x: i32, y: i32) ---

    @(link_name = "wl_subsurface_place_above_wrapper")
    subsurface_place_above :: proc(wl_subsurface: ^subsurface, sibling: ^surface) ---

    @(link_name = "wl_subsurface_place_below_wrapper")
    subsurface_place_below :: proc(wl_subsurface: ^subsurface, sibling: ^surface) ---

    @(link_name = "wl_subsurface_set_sync_wrapper")
    subsurface_set_sync :: proc(wl_subsurface: ^subsurface) ---

    @(link_name = "wl_subsurface_set_desync_wrapper")
    subsurface_set_desync :: proc(wl_subsurface: ^subsurface) ---

}

