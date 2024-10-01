package server

import "../util"

foreign import server_runic "../lib/libwayland-server-wrapper.a"

@(default_calling_convention = "c")
foreign server_runic {
    @(link_name = "wl_display_error_is_valid_wrapper")
    display_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_registry_send_global_wrapper")
    registry_send_global :: proc(resource_: ^resource, name: u32, interface: cstring, version: u32) ---

    @(link_name = "wl_registry_send_global_remove_wrapper")
    registry_send_global_remove :: proc(resource_: ^resource, name: u32) ---

    @(link_name = "wl_callback_send_done_wrapper")
    callback_send_done :: proc(resource_: ^resource, callback_data: u32) ---

    @(link_name = "wl_shm_error_is_valid_wrapper")
    shm_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shm_format_is_valid_wrapper")
    shm_format_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shm_send_format_wrapper")
    shm_send_format :: proc(resource_: ^resource, format: u32) ---

    @(link_name = "wl_buffer_send_release_wrapper")
    buffer_send_release :: proc(resource_: ^resource) ---

    @(link_name = "wl_data_offer_error_is_valid_wrapper")
    data_offer_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_data_offer_send_offer_wrapper")
    data_offer_send_offer :: proc(resource_: ^resource, mime_type: cstring) ---

    @(link_name = "wl_data_offer_send_source_actions_wrapper")
    data_offer_send_source_actions :: proc(resource_: ^resource, source_actions: u32) ---

    @(link_name = "wl_data_offer_send_action_wrapper")
    data_offer_send_action :: proc(resource_: ^resource, dnd_action: u32) ---

    @(link_name = "wl_data_source_error_is_valid_wrapper")
    data_source_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_data_source_send_target_wrapper")
    data_source_send_target :: proc(resource_: ^resource, mime_type: cstring) ---

    @(link_name = "wl_data_source_send_send_wrapper")
    data_source_send_send :: proc(resource_: ^resource, mime_type: cstring, fd: i32) ---

    @(link_name = "wl_data_source_send_cancelled_wrapper")
    data_source_send_cancelled :: proc(resource_: ^resource) ---

    @(link_name = "wl_data_source_send_dnd_drop_performed_wrapper")
    data_source_send_dnd_drop_performed :: proc(resource_: ^resource) ---

    @(link_name = "wl_data_source_send_dnd_finished_wrapper")
    data_source_send_dnd_finished :: proc(resource_: ^resource) ---

    @(link_name = "wl_data_source_send_action_wrapper")
    data_source_send_action :: proc(resource_: ^resource, dnd_action: u32) ---

    @(link_name = "wl_data_device_error_is_valid_wrapper")
    data_device_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_data_device_send_data_offer_wrapper")
    data_device_send_data_offer :: proc(resource_: ^resource, id: ^resource) ---

    @(link_name = "wl_data_device_send_enter_wrapper")
    data_device_send_enter :: proc(resource_: ^resource, serial: u32, surface: ^resource, x: util.fixed_t, y: util.fixed_t, id: ^resource) ---

    @(link_name = "wl_data_device_send_leave_wrapper")
    data_device_send_leave :: proc(resource_: ^resource) ---

    @(link_name = "wl_data_device_send_motion_wrapper")
    data_device_send_motion :: proc(resource_: ^resource, time: u32, x: util.fixed_t, y: util.fixed_t) ---

    @(link_name = "wl_data_device_send_drop_wrapper")
    data_device_send_drop :: proc(resource_: ^resource) ---

    @(link_name = "wl_data_device_send_selection_wrapper")
    data_device_send_selection :: proc(resource_: ^resource, id: ^resource) ---

    @(link_name = "wl_data_device_manager_dnd_action_is_valid_wrapper")
    data_device_manager_dnd_action_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shell_error_is_valid_wrapper")
    shell_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shell_surface_resize_is_valid_wrapper")
    shell_surface_resize_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shell_surface_transient_is_valid_wrapper")
    shell_surface_transient_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shell_surface_fullscreen_method_is_valid_wrapper")
    shell_surface_fullscreen_method_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_shell_surface_send_ping_wrapper")
    shell_surface_send_ping :: proc(resource_: ^resource, serial: u32) ---

    @(link_name = "wl_shell_surface_send_configure_wrapper")
    shell_surface_send_configure :: proc(resource_: ^resource, edges: u32, width: i32, height: i32) ---

    @(link_name = "wl_shell_surface_send_popup_done_wrapper")
    shell_surface_send_popup_done :: proc(resource_: ^resource) ---

    @(link_name = "wl_surface_error_is_valid_wrapper")
    surface_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_surface_send_enter_wrapper")
    surface_send_enter :: proc(resource_: ^resource, output: ^resource) ---

    @(link_name = "wl_surface_send_leave_wrapper")
    surface_send_leave :: proc(resource_: ^resource, output: ^resource) ---

    @(link_name = "wl_surface_send_preferred_buffer_scale_wrapper")
    surface_send_preferred_buffer_scale :: proc(resource_: ^resource, factor: i32) ---

    @(link_name = "wl_surface_send_preferred_buffer_transform_wrapper")
    surface_send_preferred_buffer_transform :: proc(resource_: ^resource, transform: u32) ---

    @(link_name = "wl_seat_capability_is_valid_wrapper")
    seat_capability_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_seat_error_is_valid_wrapper")
    seat_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_seat_send_capabilities_wrapper")
    seat_send_capabilities :: proc(resource_: ^resource, capabilities: u32) ---

    @(link_name = "wl_seat_send_name_wrapper")
    seat_send_name :: proc(resource_: ^resource, name: cstring) ---

    @(link_name = "wl_pointer_error_is_valid_wrapper")
    pointer_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_pointer_button_state_is_valid_wrapper")
    pointer_button_state_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_pointer_axis_is_valid_wrapper")
    pointer_axis_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_pointer_axis_source_is_valid_wrapper")
    pointer_axis_source_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_pointer_axis_relative_direction_is_valid_wrapper")
    pointer_axis_relative_direction_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_pointer_send_enter_wrapper")
    pointer_send_enter :: proc(resource_: ^resource, serial: u32, surface: ^resource, surface_x: util.fixed_t, surface_y: util.fixed_t) ---

    @(link_name = "wl_pointer_send_leave_wrapper")
    pointer_send_leave :: proc(resource_: ^resource, serial: u32, surface: ^resource) ---

    @(link_name = "wl_pointer_send_motion_wrapper")
    pointer_send_motion :: proc(resource_: ^resource, time: u32, surface_x: util.fixed_t, surface_y: util.fixed_t) ---

    @(link_name = "wl_pointer_send_button_wrapper")
    pointer_send_button :: proc(resource_: ^resource, serial: u32, time: u32, button: u32, state: u32) ---

    @(link_name = "wl_pointer_send_axis_wrapper")
    pointer_send_axis :: proc(resource_: ^resource, time: u32, axis: u32, value: util.fixed_t) ---

    @(link_name = "wl_pointer_send_frame_wrapper")
    pointer_send_frame :: proc(resource_: ^resource) ---

    @(link_name = "wl_pointer_send_axis_source_wrapper")
    pointer_send_axis_source :: proc(resource_: ^resource, axis_source: u32) ---

    @(link_name = "wl_pointer_send_axis_stop_wrapper")
    pointer_send_axis_stop :: proc(resource_: ^resource, time: u32, axis: u32) ---

    @(link_name = "wl_pointer_send_axis_discrete_wrapper")
    pointer_send_axis_discrete :: proc(resource_: ^resource, axis: u32, discrete: i32) ---

    @(link_name = "wl_pointer_send_axis_value120_wrapper")
    pointer_send_axis_value120 :: proc(resource_: ^resource, axis: u32, value120: i32) ---

    @(link_name = "wl_pointer_send_axis_relative_direction_wrapper")
    pointer_send_axis_relative_direction :: proc(resource_: ^resource, axis: u32, direction: u32) ---

    @(link_name = "wl_keyboard_keymap_format_is_valid_wrapper")
    keyboard_keymap_format_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_keyboard_key_state_is_valid_wrapper")
    keyboard_key_state_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_keyboard_send_keymap_wrapper")
    keyboard_send_keymap :: proc(resource_: ^resource, format: u32, fd: i32, size: u32) ---

    @(link_name = "wl_keyboard_send_enter_wrapper")
    keyboard_send_enter :: proc(resource_: ^resource, serial: u32, surface: ^resource, keys: [^]util.array) ---

    @(link_name = "wl_keyboard_send_leave_wrapper")
    keyboard_send_leave :: proc(resource_: ^resource, serial: u32, surface: ^resource) ---

    @(link_name = "wl_keyboard_send_key_wrapper")
    keyboard_send_key :: proc(resource_: ^resource, serial: u32, time: u32, key: u32, state: u32) ---

    @(link_name = "wl_keyboard_send_modifiers_wrapper")
    keyboard_send_modifiers :: proc(resource_: ^resource, serial: u32, mods_depressed: u32, mods_latched: u32, mods_locked: u32, group: u32) ---

    @(link_name = "wl_keyboard_send_repeat_info_wrapper")
    keyboard_send_repeat_info :: proc(resource_: ^resource, rate: i32, delay: i32) ---

    @(link_name = "wl_touch_send_down_wrapper")
    touch_send_down :: proc(resource_: ^resource, serial: u32, time: u32, surface: ^resource, id: i32, x: util.fixed_t, y: util.fixed_t) ---

    @(link_name = "wl_touch_send_up_wrapper")
    touch_send_up :: proc(resource_: ^resource, serial: u32, time: u32, id: i32) ---

    @(link_name = "wl_touch_send_motion_wrapper")
    touch_send_motion :: proc(resource_: ^resource, time: u32, id: i32, x: util.fixed_t, y: util.fixed_t) ---

    @(link_name = "wl_touch_send_frame_wrapper")
    touch_send_frame :: proc(resource_: ^resource) ---

    @(link_name = "wl_touch_send_cancel_wrapper")
    touch_send_cancel :: proc(resource_: ^resource) ---

    @(link_name = "wl_touch_send_shape_wrapper")
    touch_send_shape :: proc(resource_: ^resource, id: i32, major: util.fixed_t, minor: util.fixed_t) ---

    @(link_name = "wl_touch_send_orientation_wrapper")
    touch_send_orientation :: proc(resource_: ^resource, id: i32, orientation: util.fixed_t) ---

    @(link_name = "wl_output_subpixel_is_valid_wrapper")
    output_subpixel_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_output_transform_is_valid_wrapper")
    output_transform_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_output_mode_is_valid_wrapper")
    output_mode_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_output_send_geometry_wrapper")
    output_send_geometry :: proc(resource_: ^resource, x: i32, y: i32, physical_width: i32, physical_height: i32, subpixel: i32, make: cstring, model: cstring, transform: i32) ---

    @(link_name = "wl_output_send_mode_wrapper")
    output_send_mode :: proc(resource_: ^resource, flags: u32, width: i32, height: i32, refresh: i32) ---

    @(link_name = "wl_output_send_done_wrapper")
    output_send_done :: proc(resource_: ^resource) ---

    @(link_name = "wl_output_send_scale_wrapper")
    output_send_scale :: proc(resource_: ^resource, factor: i32) ---

    @(link_name = "wl_output_send_name_wrapper")
    output_send_name :: proc(resource_: ^resource, name: cstring) ---

    @(link_name = "wl_output_send_description_wrapper")
    output_send_description :: proc(resource_: ^resource, description: cstring) ---

    @(link_name = "wl_subcompositor_error_is_valid_wrapper")
    subcompositor_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

    @(link_name = "wl_subsurface_error_is_valid_wrapper")
    subsurface_error_is_valid :: proc(value: u32, version: u32) -> i32 ---

}

