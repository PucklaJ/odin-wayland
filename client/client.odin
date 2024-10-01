package client

import "../util"

WL_MARSHAL_FLAG_DESTROY :: `(1 << 0)`
WL_DISPLAY_SYNC :: 0
WL_DISPLAY_GET_REGISTRY :: 1
WL_DISPLAY_ERROR_SINCE_VERSION :: 1
WL_DISPLAY_DELETE_ID_SINCE_VERSION :: 1
WL_DISPLAY_SYNC_SINCE_VERSION :: 1
WL_DISPLAY_GET_REGISTRY_SINCE_VERSION :: 1
WL_REGISTRY_BIND :: 0
WL_REGISTRY_GLOBAL_SINCE_VERSION :: 1
WL_REGISTRY_GLOBAL_REMOVE_SINCE_VERSION :: 1
WL_REGISTRY_BIND_SINCE_VERSION :: 1
WL_CALLBACK_DONE_SINCE_VERSION :: 1
WL_COMPOSITOR_CREATE_SURFACE :: 0
WL_COMPOSITOR_CREATE_REGION :: 1
WL_COMPOSITOR_CREATE_SURFACE_SINCE_VERSION :: 1
WL_COMPOSITOR_CREATE_REGION_SINCE_VERSION :: 1
WL_SHM_POOL_CREATE_BUFFER :: 0
WL_SHM_POOL_DESTROY :: 1
WL_SHM_POOL_RESIZE :: 2
WL_SHM_POOL_CREATE_BUFFER_SINCE_VERSION :: 1
WL_SHM_POOL_DESTROY_SINCE_VERSION :: 1
WL_SHM_POOL_RESIZE_SINCE_VERSION :: 1
WL_SHM_CREATE_POOL :: 0
WL_SHM_RELEASE :: 1
WL_SHM_FORMAT_SINCE_VERSION :: 1
WL_SHM_CREATE_POOL_SINCE_VERSION :: 1
WL_SHM_RELEASE_SINCE_VERSION :: 2
WL_BUFFER_DESTROY :: 0
WL_BUFFER_RELEASE_SINCE_VERSION :: 1
WL_BUFFER_DESTROY_SINCE_VERSION :: 1
WL_DATA_OFFER_ACCEPT :: 0
WL_DATA_OFFER_RECEIVE :: 1
WL_DATA_OFFER_DESTROY :: 2
WL_DATA_OFFER_FINISH :: 3
WL_DATA_OFFER_SET_ACTIONS :: 4
WL_DATA_OFFER_OFFER_SINCE_VERSION :: 1
WL_DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION :: 3
WL_DATA_OFFER_ACTION_SINCE_VERSION :: 3
WL_DATA_OFFER_ACCEPT_SINCE_VERSION :: 1
WL_DATA_OFFER_RECEIVE_SINCE_VERSION :: 1
WL_DATA_OFFER_DESTROY_SINCE_VERSION :: 1
WL_DATA_OFFER_FINISH_SINCE_VERSION :: 3
WL_DATA_OFFER_SET_ACTIONS_SINCE_VERSION :: 3
WL_DATA_SOURCE_OFFER :: 0
WL_DATA_SOURCE_DESTROY :: 1
WL_DATA_SOURCE_SET_ACTIONS :: 2
WL_DATA_SOURCE_TARGET_SINCE_VERSION :: 1
WL_DATA_SOURCE_SEND_SINCE_VERSION :: 1
WL_DATA_SOURCE_CANCELLED_SINCE_VERSION :: 1
WL_DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION :: 3
WL_DATA_SOURCE_DND_FINISHED_SINCE_VERSION :: 3
WL_DATA_SOURCE_ACTION_SINCE_VERSION :: 3
WL_DATA_SOURCE_OFFER_SINCE_VERSION :: 1
WL_DATA_SOURCE_DESTROY_SINCE_VERSION :: 1
WL_DATA_SOURCE_SET_ACTIONS_SINCE_VERSION :: 3
WL_DATA_DEVICE_START_DRAG :: 0
WL_DATA_DEVICE_SET_SELECTION :: 1
WL_DATA_DEVICE_RELEASE :: 2
WL_DATA_DEVICE_DATA_OFFER_SINCE_VERSION :: 1
WL_DATA_DEVICE_ENTER_SINCE_VERSION :: 1
WL_DATA_DEVICE_LEAVE_SINCE_VERSION :: 1
WL_DATA_DEVICE_MOTION_SINCE_VERSION :: 1
WL_DATA_DEVICE_DROP_SINCE_VERSION :: 1
WL_DATA_DEVICE_SELECTION_SINCE_VERSION :: 1
WL_DATA_DEVICE_START_DRAG_SINCE_VERSION :: 1
WL_DATA_DEVICE_SET_SELECTION_SINCE_VERSION :: 1
WL_DATA_DEVICE_RELEASE_SINCE_VERSION :: 2
WL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE :: 0
WL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE :: 1
WL_DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION :: 1
WL_DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION :: 1
WL_SHELL_GET_SHELL_SURFACE :: 0
WL_SHELL_GET_SHELL_SURFACE_SINCE_VERSION :: 1
WL_SHELL_SURFACE_PONG :: 0
WL_SHELL_SURFACE_MOVE :: 1
WL_SHELL_SURFACE_RESIZE :: 2
WL_SHELL_SURFACE_SET_TOPLEVEL :: 3
WL_SHELL_SURFACE_SET_TRANSIENT :: 4
WL_SHELL_SURFACE_SET_FULLSCREEN :: 5
WL_SHELL_SURFACE_SET_POPUP :: 6
WL_SHELL_SURFACE_SET_MAXIMIZED :: 7
WL_SHELL_SURFACE_SET_TITLE :: 8
WL_SHELL_SURFACE_SET_CLASS :: 9
WL_SHELL_SURFACE_PING_SINCE_VERSION :: 1
WL_SHELL_SURFACE_CONFIGURE_SINCE_VERSION :: 1
WL_SHELL_SURFACE_POPUP_DONE_SINCE_VERSION :: 1
WL_SHELL_SURFACE_PONG_SINCE_VERSION :: 1
WL_SHELL_SURFACE_MOVE_SINCE_VERSION :: 1
WL_SHELL_SURFACE_RESIZE_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_POPUP_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_TITLE_SINCE_VERSION :: 1
WL_SHELL_SURFACE_SET_CLASS_SINCE_VERSION :: 1
WL_SURFACE_DESTROY :: 0
WL_SURFACE_ATTACH :: 1
WL_SURFACE_DAMAGE :: 2
WL_SURFACE_FRAME :: 3
WL_SURFACE_SET_OPAQUE_REGION :: 4
WL_SURFACE_SET_INPUT_REGION :: 5
WL_SURFACE_COMMIT :: 6
WL_SURFACE_SET_BUFFER_TRANSFORM :: 7
WL_SURFACE_SET_BUFFER_SCALE :: 8
WL_SURFACE_DAMAGE_BUFFER :: 9
WL_SURFACE_OFFSET :: 10
WL_SURFACE_ENTER_SINCE_VERSION :: 1
WL_SURFACE_LEAVE_SINCE_VERSION :: 1
WL_SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION :: 6
WL_SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION :: 6
WL_SURFACE_DESTROY_SINCE_VERSION :: 1
WL_SURFACE_ATTACH_SINCE_VERSION :: 1
WL_SURFACE_DAMAGE_SINCE_VERSION :: 1
WL_SURFACE_FRAME_SINCE_VERSION :: 1
WL_SURFACE_SET_OPAQUE_REGION_SINCE_VERSION :: 1
WL_SURFACE_SET_INPUT_REGION_SINCE_VERSION :: 1
WL_SURFACE_COMMIT_SINCE_VERSION :: 1
WL_SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION :: 2
WL_SURFACE_SET_BUFFER_SCALE_SINCE_VERSION :: 3
WL_SURFACE_DAMAGE_BUFFER_SINCE_VERSION :: 4
WL_SURFACE_OFFSET_SINCE_VERSION :: 5
WL_SEAT_GET_POINTER :: 0
WL_SEAT_GET_KEYBOARD :: 1
WL_SEAT_GET_TOUCH :: 2
WL_SEAT_RELEASE :: 3
WL_SEAT_CAPABILITIES_SINCE_VERSION :: 1
WL_SEAT_NAME_SINCE_VERSION :: 2
WL_SEAT_GET_POINTER_SINCE_VERSION :: 1
WL_SEAT_GET_KEYBOARD_SINCE_VERSION :: 1
WL_SEAT_GET_TOUCH_SINCE_VERSION :: 1
WL_SEAT_RELEASE_SINCE_VERSION :: 5
WL_POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION :: 6
WL_POINTER_SET_CURSOR :: 0
WL_POINTER_RELEASE :: 1
WL_POINTER_ENTER_SINCE_VERSION :: 1
WL_POINTER_LEAVE_SINCE_VERSION :: 1
WL_POINTER_MOTION_SINCE_VERSION :: 1
WL_POINTER_BUTTON_SINCE_VERSION :: 1
WL_POINTER_AXIS_SINCE_VERSION :: 1
WL_POINTER_FRAME_SINCE_VERSION :: 5
WL_POINTER_AXIS_SOURCE_SINCE_VERSION :: 5
WL_POINTER_AXIS_STOP_SINCE_VERSION :: 5
WL_POINTER_AXIS_DISCRETE_SINCE_VERSION :: 5
WL_POINTER_AXIS_VALUE120_SINCE_VERSION :: 8
WL_POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION :: 9
WL_POINTER_SET_CURSOR_SINCE_VERSION :: 1
WL_POINTER_RELEASE_SINCE_VERSION :: 3
WL_KEYBOARD_RELEASE :: 0
WL_KEYBOARD_KEYMAP_SINCE_VERSION :: 1
WL_KEYBOARD_ENTER_SINCE_VERSION :: 1
WL_KEYBOARD_LEAVE_SINCE_VERSION :: 1
WL_KEYBOARD_KEY_SINCE_VERSION :: 1
WL_KEYBOARD_MODIFIERS_SINCE_VERSION :: 1
WL_KEYBOARD_REPEAT_INFO_SINCE_VERSION :: 4
WL_KEYBOARD_RELEASE_SINCE_VERSION :: 3
WL_TOUCH_RELEASE :: 0
WL_TOUCH_DOWN_SINCE_VERSION :: 1
WL_TOUCH_UP_SINCE_VERSION :: 1
WL_TOUCH_MOTION_SINCE_VERSION :: 1
WL_TOUCH_FRAME_SINCE_VERSION :: 1
WL_TOUCH_CANCEL_SINCE_VERSION :: 1
WL_TOUCH_SHAPE_SINCE_VERSION :: 6
WL_TOUCH_ORIENTATION_SINCE_VERSION :: 6
WL_TOUCH_RELEASE_SINCE_VERSION :: 3
WL_OUTPUT_RELEASE :: 0
WL_OUTPUT_GEOMETRY_SINCE_VERSION :: 1
WL_OUTPUT_MODE_SINCE_VERSION :: 1
WL_OUTPUT_DONE_SINCE_VERSION :: 2
WL_OUTPUT_SCALE_SINCE_VERSION :: 2
WL_OUTPUT_NAME_SINCE_VERSION :: 4
WL_OUTPUT_DESCRIPTION_SINCE_VERSION :: 4
WL_OUTPUT_RELEASE_SINCE_VERSION :: 3
WL_REGION_DESTROY :: 0
WL_REGION_ADD :: 1
WL_REGION_SUBTRACT :: 2
WL_REGION_DESTROY_SINCE_VERSION :: 1
WL_REGION_ADD_SINCE_VERSION :: 1
WL_REGION_SUBTRACT_SINCE_VERSION :: 1
WL_SUBCOMPOSITOR_DESTROY :: 0
WL_SUBCOMPOSITOR_GET_SUBSURFACE :: 1
WL_SUBCOMPOSITOR_DESTROY_SINCE_VERSION :: 1
WL_SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION :: 1
WL_SUBSURFACE_DESTROY :: 0
WL_SUBSURFACE_SET_POSITION :: 1
WL_SUBSURFACE_PLACE_ABOVE :: 2
WL_SUBSURFACE_PLACE_BELOW :: 3
WL_SUBSURFACE_SET_SYNC :: 4
WL_SUBSURFACE_SET_DESYNC :: 5
WL_SUBSURFACE_DESTROY_SINCE_VERSION :: 1
WL_SUBSURFACE_SET_POSITION_SINCE_VERSION :: 1
WL_SUBSURFACE_PLACE_ABOVE_SINCE_VERSION :: 1
WL_SUBSURFACE_PLACE_BELOW_SINCE_VERSION :: 1
WL_SUBSURFACE_SET_SYNC_SINCE_VERSION :: 1
WL_SUBSURFACE_SET_DESYNC_SINCE_VERSION :: 1

proxy :: ^^^rawptr
display :: ^^^rawptr
event_queue :: ^^^rawptr
implementation_func_ptr_anon_0 :: #type proc "c" ()
buffer :: ^^^rawptr
callback :: ^^^rawptr
compositor :: ^^^rawptr
data_device :: ^^^rawptr
data_device_manager :: ^^^rawptr
data_offer :: ^^^rawptr
data_source :: ^^^rawptr
keyboard :: ^^^rawptr
output :: ^^^rawptr
pointer :: ^^^rawptr
region :: ^^^rawptr
registry :: ^^^rawptr
seat :: ^^^rawptr
shell :: ^^^rawptr
shell_surface :: ^^^rawptr
shm :: ^^^rawptr
shm_pool :: ^^^rawptr
subcompositor :: ^^^rawptr
subsurface :: ^^^rawptr
surface :: ^^^rawptr
touch :: ^^^rawptr
display_error :: enum u32 {WL_DISPLAY_ERROR_INVALID_OBJECT = 0, WL_DISPLAY_ERROR_INVALID_METHOD = 1, WL_DISPLAY_ERROR_NO_MEMORY = 2, WL_DISPLAY_ERROR_IMPLEMENTATION = 3, }
error_func_ptr_anon_1 :: #type proc "c" (data: rawptr, wl_display: ^display, object_id: rawptr, code: u32, message: cstring)
delete_id_func_ptr_anon_2 :: #type proc "c" (data: rawptr, wl_display: ^display, id: u32)
display_listener :: struct {
    error: error_func_ptr_anon_1,
    delete_id: delete_id_func_ptr_anon_2,
}
global_func_ptr_anon_3 :: #type proc "c" (data: rawptr, wl_registry: ^registry, name: u32, interface: cstring, version: u32)
global_remove_func_ptr_anon_4 :: #type proc "c" (data: rawptr, wl_registry: ^registry, name: u32)
registry_listener :: struct {
    global: global_func_ptr_anon_3,
    global_remove: global_remove_func_ptr_anon_4,
}
done_func_ptr_anon_5 :: #type proc "c" (data: rawptr, wl_callback: ^callback, callback_data: u32)
callback_listener :: struct {
    done: done_func_ptr_anon_5,
}
shm_error :: enum u32 {WL_SHM_ERROR_INVALID_FORMAT = 0, WL_SHM_ERROR_INVALID_STRIDE = 1, WL_SHM_ERROR_INVALID_FD = 2, }
shm_format :: enum u32 {WL_SHM_FORMAT_ARGB8888 = 0, WL_SHM_FORMAT_XRGB8888 = 1, WL_SHM_FORMAT_C8 = 538982467, WL_SHM_FORMAT_RGB332 = 943867730, WL_SHM_FORMAT_BGR233 = 944916290, WL_SHM_FORMAT_XRGB4444 = 842093144, WL_SHM_FORMAT_XBGR4444 = 842089048, WL_SHM_FORMAT_RGBX4444 = 842094674, WL_SHM_FORMAT_BGRX4444 = 842094658, WL_SHM_FORMAT_ARGB4444 = 842093121, WL_SHM_FORMAT_ABGR4444 = 842089025, WL_SHM_FORMAT_RGBA4444 = 842088786, WL_SHM_FORMAT_BGRA4444 = 842088770, WL_SHM_FORMAT_XRGB1555 = 892424792, WL_SHM_FORMAT_XBGR1555 = 892420696, WL_SHM_FORMAT_RGBX5551 = 892426322, WL_SHM_FORMAT_BGRX5551 = 892426306, WL_SHM_FORMAT_ARGB1555 = 892424769, WL_SHM_FORMAT_ABGR1555 = 892420673, WL_SHM_FORMAT_RGBA5551 = 892420434, WL_SHM_FORMAT_BGRA5551 = 892420418, WL_SHM_FORMAT_RGB565 = 909199186, WL_SHM_FORMAT_BGR565 = 909199170, WL_SHM_FORMAT_RGB888 = 875710290, WL_SHM_FORMAT_BGR888 = 875710274, WL_SHM_FORMAT_XBGR8888 = 875709016, WL_SHM_FORMAT_RGBX8888 = 875714642, WL_SHM_FORMAT_BGRX8888 = 875714626, WL_SHM_FORMAT_ABGR8888 = 875708993, WL_SHM_FORMAT_RGBA8888 = 875708754, WL_SHM_FORMAT_BGRA8888 = 875708738, WL_SHM_FORMAT_XRGB2101010 = 808669784, WL_SHM_FORMAT_XBGR2101010 = 808665688, WL_SHM_FORMAT_RGBX1010102 = 808671314, WL_SHM_FORMAT_BGRX1010102 = 808671298, WL_SHM_FORMAT_ARGB2101010 = 808669761, WL_SHM_FORMAT_ABGR2101010 = 808665665, WL_SHM_FORMAT_RGBA1010102 = 808665426, WL_SHM_FORMAT_BGRA1010102 = 808665410, WL_SHM_FORMAT_YUYV = 1448695129, WL_SHM_FORMAT_YVYU = 1431918169, WL_SHM_FORMAT_UYVY = 1498831189, WL_SHM_FORMAT_VYUY = 1498765654, WL_SHM_FORMAT_AYUV = 1448433985, WL_SHM_FORMAT_NV12 = 842094158, WL_SHM_FORMAT_NV21 = 825382478, WL_SHM_FORMAT_NV16 = 909203022, WL_SHM_FORMAT_NV61 = 825644622, WL_SHM_FORMAT_YUV410 = 961959257, WL_SHM_FORMAT_YVU410 = 961893977, WL_SHM_FORMAT_YUV411 = 825316697, WL_SHM_FORMAT_YVU411 = 825316953, WL_SHM_FORMAT_YUV420 = 842093913, WL_SHM_FORMAT_YVU420 = 842094169, WL_SHM_FORMAT_YUV422 = 909202777, WL_SHM_FORMAT_YVU422 = 909203033, WL_SHM_FORMAT_YUV444 = 875713881, WL_SHM_FORMAT_YVU444 = 875714137, WL_SHM_FORMAT_R8 = 538982482, WL_SHM_FORMAT_R16 = 540422482, WL_SHM_FORMAT_RG88 = 943212370, WL_SHM_FORMAT_GR88 = 943215175, WL_SHM_FORMAT_RG1616 = 842221394, WL_SHM_FORMAT_GR1616 = 842224199, WL_SHM_FORMAT_XRGB16161616F = 1211388504, WL_SHM_FORMAT_XBGR16161616F = 1211384408, WL_SHM_FORMAT_ARGB16161616F = 1211388481, WL_SHM_FORMAT_ABGR16161616F = 1211384385, WL_SHM_FORMAT_XYUV8888 = 1448434008, WL_SHM_FORMAT_VUY888 = 875713878, WL_SHM_FORMAT_VUY101010 = 808670550, WL_SHM_FORMAT_Y210 = 808530521, WL_SHM_FORMAT_Y212 = 842084953, WL_SHM_FORMAT_Y216 = 909193817, WL_SHM_FORMAT_Y410 = 808531033, WL_SHM_FORMAT_Y412 = 842085465, WL_SHM_FORMAT_Y416 = 909194329, WL_SHM_FORMAT_XVYU2101010 = 808670808, WL_SHM_FORMAT_XVYU12_16161616 = 909334104, WL_SHM_FORMAT_XVYU16161616 = 942954072, WL_SHM_FORMAT_Y0L0 = 810299481, WL_SHM_FORMAT_X0L0 = 810299480, WL_SHM_FORMAT_Y0L2 = 843853913, WL_SHM_FORMAT_X0L2 = 843853912, WL_SHM_FORMAT_YUV420_8BIT = 942691673, WL_SHM_FORMAT_YUV420_10BIT = 808539481, WL_SHM_FORMAT_XRGB8888_A8 = 943805016, WL_SHM_FORMAT_XBGR8888_A8 = 943800920, WL_SHM_FORMAT_RGBX8888_A8 = 943806546, WL_SHM_FORMAT_BGRX8888_A8 = 943806530, WL_SHM_FORMAT_RGB888_A8 = 943798354, WL_SHM_FORMAT_BGR888_A8 = 943798338, WL_SHM_FORMAT_RGB565_A8 = 943797586, WL_SHM_FORMAT_BGR565_A8 = 943797570, WL_SHM_FORMAT_NV24 = 875714126, WL_SHM_FORMAT_NV42 = 842290766, WL_SHM_FORMAT_P210 = 808530512, WL_SHM_FORMAT_P010 = 808530000, WL_SHM_FORMAT_P012 = 842084432, WL_SHM_FORMAT_P016 = 909193296, WL_SHM_FORMAT_AXBXGXRX106106106106 = 808534593, WL_SHM_FORMAT_NV15 = 892425806, WL_SHM_FORMAT_Q410 = 808531025, WL_SHM_FORMAT_Q401 = 825242705, WL_SHM_FORMAT_XRGB16161616 = 942953048, WL_SHM_FORMAT_XBGR16161616 = 942948952, WL_SHM_FORMAT_ARGB16161616 = 942953025, WL_SHM_FORMAT_ABGR16161616 = 942948929, WL_SHM_FORMAT_C1 = 538980675, WL_SHM_FORMAT_C2 = 538980931, WL_SHM_FORMAT_C4 = 538981443, WL_SHM_FORMAT_D1 = 538980676, WL_SHM_FORMAT_D2 = 538980932, WL_SHM_FORMAT_D4 = 538981444, WL_SHM_FORMAT_D8 = 538982468, WL_SHM_FORMAT_R1 = 538980690, WL_SHM_FORMAT_R2 = 538980946, WL_SHM_FORMAT_R4 = 538981458, WL_SHM_FORMAT_R10 = 540029266, WL_SHM_FORMAT_R12 = 540160338, WL_SHM_FORMAT_AVUY8888 = 1498764865, WL_SHM_FORMAT_XVUY8888 = 1498764888, WL_SHM_FORMAT_P030 = 808661072, }
format_func_ptr_anon_6 :: #type proc "c" (data: rawptr, wl_shm: ^shm, format: u32)
shm_listener :: struct {
    format: format_func_ptr_anon_6,
}
release_func_ptr_anon_7 :: #type proc "c" (data: rawptr, wl_buffer: ^buffer)
buffer_listener :: struct {
    release: release_func_ptr_anon_7,
}
data_offer_error :: enum u32 {WL_DATA_OFFER_ERROR_INVALID_FINISH = 0, WL_DATA_OFFER_ERROR_INVALID_ACTION_MASK = 1, WL_DATA_OFFER_ERROR_INVALID_ACTION = 2, WL_DATA_OFFER_ERROR_INVALID_OFFER = 3, }
offer_func_ptr_anon_8 :: #type proc "c" (data: rawptr, wl_data_offer: ^data_offer, mime_type: cstring)
source_actions_func_ptr_anon_9 :: #type proc "c" (data: rawptr, wl_data_offer: ^data_offer, source_actions: u32)
action_func_ptr_anon_10 :: #type proc "c" (data: rawptr, wl_data_offer: ^data_offer, dnd_action: u32)
data_offer_listener :: struct {
    offer: offer_func_ptr_anon_8,
    source_actions: source_actions_func_ptr_anon_9,
    action: action_func_ptr_anon_10,
}
data_source_error :: enum u32 {WL_DATA_SOURCE_ERROR_INVALID_ACTION_MASK = 0, WL_DATA_SOURCE_ERROR_INVALID_SOURCE = 1, }
target_func_ptr_anon_11 :: #type proc "c" (data: rawptr, wl_data_source: ^data_source, mime_type: cstring)
send_func_ptr_anon_12 :: #type proc "c" (data: rawptr, wl_data_source: ^data_source, mime_type: cstring, fd: i32)
cancelled_func_ptr_anon_13 :: #type proc "c" (data: rawptr, wl_data_source: ^data_source)
dnd_drop_performed_func_ptr_anon_14 :: #type proc "c" (data: rawptr, wl_data_source: ^data_source)
dnd_finished_func_ptr_anon_15 :: #type proc "c" (data: rawptr, wl_data_source: ^data_source)
action_func_ptr_anon_16 :: #type proc "c" (data: rawptr, wl_data_source: ^data_source, dnd_action: u32)
data_source_listener :: struct {
    target: target_func_ptr_anon_11,
    send: send_func_ptr_anon_12,
    cancelled: cancelled_func_ptr_anon_13,
    dnd_drop_performed: dnd_drop_performed_func_ptr_anon_14,
    dnd_finished: dnd_finished_func_ptr_anon_15,
    action: action_func_ptr_anon_16,
}
data_device_error :: enum u32 {WL_DATA_DEVICE_ERROR_ROLE = 0, WL_DATA_DEVICE_ERROR_USED_SOURCE = 1, }
data_offer_func_ptr_anon_17 :: #type proc "c" (data: rawptr, wl_data_device: ^data_device, id: ^data_offer)
enter_func_ptr_anon_18 :: #type proc "c" (data: rawptr, wl_data_device: ^data_device, serial: u32, surface_p: ^surface, x: util.fixed_t, y: util.fixed_t, id: ^data_offer)
leave_func_ptr_anon_19 :: #type proc "c" (data: rawptr, wl_data_device: ^data_device)
motion_func_ptr_anon_20 :: #type proc "c" (data: rawptr, wl_data_device: ^data_device, time: u32, x: util.fixed_t, y: util.fixed_t)
drop_func_ptr_anon_21 :: #type proc "c" (data: rawptr, wl_data_device: ^data_device)
selection_func_ptr_anon_22 :: #type proc "c" (data: rawptr, wl_data_device: ^data_device, id: ^data_offer)
data_device_listener :: struct {
    data_offer_m: data_offer_func_ptr_anon_17,
    enter: enter_func_ptr_anon_18,
    leave: leave_func_ptr_anon_19,
    motion: motion_func_ptr_anon_20,
    drop: drop_func_ptr_anon_21,
    selection: selection_func_ptr_anon_22,
}
data_device_manager_dnd_action :: enum u32 {WL_DATA_DEVICE_MANAGER_DND_ACTION_NONE = 0, WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY = 1, WL_DATA_DEVICE_MANAGER_DND_ACTION_MOVE = 2, WL_DATA_DEVICE_MANAGER_DND_ACTION_ASK = 4, }
shell_error :: enum u32 {WL_SHELL_ERROR_ROLE = 0, }
shell_surface_resize_enum :: enum u32 {WL_SHELL_SURFACE_RESIZE_NONE = 0, WL_SHELL_SURFACE_RESIZE_TOP = 1, WL_SHELL_SURFACE_RESIZE_BOTTOM = 2, WL_SHELL_SURFACE_RESIZE_LEFT = 4, WL_SHELL_SURFACE_RESIZE_TOP_LEFT = 5, WL_SHELL_SURFACE_RESIZE_BOTTOM_LEFT = 6, WL_SHELL_SURFACE_RESIZE_RIGHT = 8, WL_SHELL_SURFACE_RESIZE_TOP_RIGHT = 9, WL_SHELL_SURFACE_RESIZE_BOTTOM_RIGHT = 10, }
shell_surface_transient :: enum u32 {WL_SHELL_SURFACE_TRANSIENT_INACTIVE = 1, }
shell_surface_fullscreen_method :: enum u32 {WL_SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT = 0, WL_SHELL_SURFACE_FULLSCREEN_METHOD_SCALE = 1, WL_SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER = 2, WL_SHELL_SURFACE_FULLSCREEN_METHOD_FILL = 3, }
ping_func_ptr_anon_23 :: #type proc "c" (data: rawptr, wl_shell_surface: ^shell_surface, serial: u32)
configure_func_ptr_anon_24 :: #type proc "c" (data: rawptr, wl_shell_surface: ^shell_surface, edges: u32, width: i32, height: i32)
popup_done_func_ptr_anon_25 :: #type proc "c" (data: rawptr, wl_shell_surface: ^shell_surface)
shell_surface_listener :: struct {
    ping: ping_func_ptr_anon_23,
    configure: configure_func_ptr_anon_24,
    popup_done: popup_done_func_ptr_anon_25,
}
surface_error :: enum u32 {WL_SURFACE_ERROR_INVALID_SCALE = 0, WL_SURFACE_ERROR_INVALID_TRANSFORM = 1, WL_SURFACE_ERROR_INVALID_SIZE = 2, WL_SURFACE_ERROR_INVALID_OFFSET = 3, WL_SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = 4, }
enter_func_ptr_anon_26 :: #type proc "c" (data: rawptr, wl_surface: ^surface, output_p: ^output)
leave_func_ptr_anon_27 :: #type proc "c" (data: rawptr, wl_surface: ^surface, output_p: ^output)
preferred_buffer_scale_func_ptr_anon_28 :: #type proc "c" (data: rawptr, wl_surface: ^surface, factor: i32)
preferred_buffer_transform_func_ptr_anon_29 :: #type proc "c" (data: rawptr, wl_surface: ^surface, transform: u32)
surface_listener :: struct {
    enter: enter_func_ptr_anon_26,
    leave: leave_func_ptr_anon_27,
    preferred_buffer_scale: preferred_buffer_scale_func_ptr_anon_28,
    preferred_buffer_transform: preferred_buffer_transform_func_ptr_anon_29,
}
seat_capability :: enum u32 {WL_SEAT_CAPABILITY_POINTER = 1, WL_SEAT_CAPABILITY_KEYBOARD = 2, WL_SEAT_CAPABILITY_TOUCH = 4, }
seat_error :: enum u32 {WL_SEAT_ERROR_MISSING_CAPABILITY = 0, }
capabilities_func_ptr_anon_30 :: #type proc "c" (data: rawptr, wl_seat: ^seat, capabilities: u32)
name_func_ptr_anon_31 :: #type proc "c" (data: rawptr, wl_seat: ^seat, name: cstring)
seat_listener :: struct {
    capabilities: capabilities_func_ptr_anon_30,
    name: name_func_ptr_anon_31,
}
pointer_error :: enum u32 {WL_POINTER_ERROR_ROLE = 0, }
pointer_button_state :: enum u32 {WL_POINTER_BUTTON_STATE_RELEASED = 0, WL_POINTER_BUTTON_STATE_PRESSED = 1, }
pointer_axis :: enum u32 {WL_POINTER_AXIS_VERTICAL_SCROLL = 0, WL_POINTER_AXIS_HORIZONTAL_SCROLL = 1, }
pointer_axis_source :: enum u32 {WL_POINTER_AXIS_SOURCE_WHEEL = 0, WL_POINTER_AXIS_SOURCE_FINGER = 1, WL_POINTER_AXIS_SOURCE_CONTINUOUS = 2, WL_POINTER_AXIS_SOURCE_WHEEL_TILT = 3, }
pointer_axis_relative_direction :: enum u32 {WL_POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL = 0, WL_POINTER_AXIS_RELATIVE_DIRECTION_INVERTED = 1, }
enter_func_ptr_anon_32 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, serial: u32, surface_p: ^surface, surface_x: util.fixed_t, surface_y: util.fixed_t)
leave_func_ptr_anon_33 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, serial: u32, surface_p: ^surface)
motion_func_ptr_anon_34 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, time: u32, surface_x: util.fixed_t, surface_y: util.fixed_t)
button_func_ptr_anon_35 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, serial: u32, time: u32, button: u32, state: u32)
axis_func_ptr_anon_36 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, time: u32, axis: u32, value: util.fixed_t)
frame_func_ptr_anon_37 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer)
axis_source_func_ptr_anon_38 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, axis_source: u32)
axis_stop_func_ptr_anon_39 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, time: u32, axis: u32)
axis_discrete_func_ptr_anon_40 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, axis: u32, discrete: i32)
axis_value120_func_ptr_anon_41 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, axis: u32, value120: i32)
axis_relative_direction_func_ptr_anon_42 :: #type proc "c" (data: rawptr, wl_pointer: ^pointer, axis: u32, direction: u32)
pointer_listener :: struct {
    enter: enter_func_ptr_anon_32,
    leave: leave_func_ptr_anon_33,
    motion: motion_func_ptr_anon_34,
    button: button_func_ptr_anon_35,
    axis: axis_func_ptr_anon_36,
    frame: frame_func_ptr_anon_37,
    axis_source: axis_source_func_ptr_anon_38,
    axis_stop: axis_stop_func_ptr_anon_39,
    axis_discrete: axis_discrete_func_ptr_anon_40,
    axis_value120: axis_value120_func_ptr_anon_41,
    axis_relative_direction: axis_relative_direction_func_ptr_anon_42,
}
keyboard_keymap_format :: enum u32 {WL_KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP = 0, WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 = 1, }
keyboard_key_state :: enum u32 {WL_KEYBOARD_KEY_STATE_RELEASED = 0, WL_KEYBOARD_KEY_STATE_PRESSED = 1, }
keymap_func_ptr_anon_43 :: #type proc "c" (data: rawptr, wl_keyboard: ^keyboard, format: u32, fd: i32, size: u32)
enter_func_ptr_anon_44 :: #type proc "c" (data: rawptr, wl_keyboard: ^keyboard, serial: u32, surface_p: ^surface, keys: [^]util.array)
leave_func_ptr_anon_45 :: #type proc "c" (data: rawptr, wl_keyboard: ^keyboard, serial: u32, surface_p: ^surface)
key_func_ptr_anon_46 :: #type proc "c" (data: rawptr, wl_keyboard: ^keyboard, serial: u32, time: u32, key: u32, state: u32)
modifiers_func_ptr_anon_47 :: #type proc "c" (data: rawptr, wl_keyboard: ^keyboard, serial: u32, mods_depressed: u32, mods_latched: u32, mods_locked: u32, group: u32)
repeat_info_func_ptr_anon_48 :: #type proc "c" (data: rawptr, wl_keyboard: ^keyboard, rate: i32, delay: i32)
keyboard_listener :: struct {
    keymap: keymap_func_ptr_anon_43,
    enter: enter_func_ptr_anon_44,
    leave: leave_func_ptr_anon_45,
    key: key_func_ptr_anon_46,
    modifiers: modifiers_func_ptr_anon_47,
    repeat_info: repeat_info_func_ptr_anon_48,
}
down_func_ptr_anon_49 :: #type proc "c" (data: rawptr, wl_touch: ^touch, serial: u32, time: u32, surface_p: ^surface, id: i32, x: util.fixed_t, y: util.fixed_t)
up_func_ptr_anon_50 :: #type proc "c" (data: rawptr, wl_touch: ^touch, serial: u32, time: u32, id: i32)
motion_func_ptr_anon_51 :: #type proc "c" (data: rawptr, wl_touch: ^touch, time: u32, id: i32, x: util.fixed_t, y: util.fixed_t)
frame_func_ptr_anon_52 :: #type proc "c" (data: rawptr, wl_touch: ^touch)
cancel_func_ptr_anon_53 :: #type proc "c" (data: rawptr, wl_touch: ^touch)
shape_func_ptr_anon_54 :: #type proc "c" (data: rawptr, wl_touch: ^touch, id: i32, major: util.fixed_t, minor: util.fixed_t)
orientation_func_ptr_anon_55 :: #type proc "c" (data: rawptr, wl_touch: ^touch, id: i32, orientation: util.fixed_t)
touch_listener :: struct {
    down: down_func_ptr_anon_49,
    up: up_func_ptr_anon_50,
    motion: motion_func_ptr_anon_51,
    frame: frame_func_ptr_anon_52,
    cancel: cancel_func_ptr_anon_53,
    shape: shape_func_ptr_anon_54,
    orientation: orientation_func_ptr_anon_55,
}
output_subpixel :: enum u32 {WL_OUTPUT_SUBPIXEL_UNKNOWN = 0, WL_OUTPUT_SUBPIXEL_NONE = 1, WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB = 2, WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR = 3, WL_OUTPUT_SUBPIXEL_VERTICAL_RGB = 4, WL_OUTPUT_SUBPIXEL_VERTICAL_BGR = 5, }
output_transform :: enum u32 {WL_OUTPUT_TRANSFORM_NORMAL = 0, WL_OUTPUT_TRANSFORM_90 = 1, WL_OUTPUT_TRANSFORM_180 = 2, WL_OUTPUT_TRANSFORM_270 = 3, WL_OUTPUT_TRANSFORM_FLIPPED = 4, WL_OUTPUT_TRANSFORM_FLIPPED_90 = 5, WL_OUTPUT_TRANSFORM_FLIPPED_180 = 6, WL_OUTPUT_TRANSFORM_FLIPPED_270 = 7, }
output_mode :: enum u32 {WL_OUTPUT_MODE_CURRENT = 1, WL_OUTPUT_MODE_PREFERRED = 2, }
geometry_func_ptr_anon_56 :: #type proc "c" (data: rawptr, wl_output: ^output, x: i32, y: i32, physical_width: i32, physical_height: i32, subpixel: i32, make: cstring, model: cstring, transform: i32)
mode_func_ptr_anon_57 :: #type proc "c" (data: rawptr, wl_output: ^output, flags: u32, width: i32, height: i32, refresh: i32)
done_func_ptr_anon_58 :: #type proc "c" (data: rawptr, wl_output: ^output)
scale_func_ptr_anon_59 :: #type proc "c" (data: rawptr, wl_output: ^output, factor: i32)
name_func_ptr_anon_60 :: #type proc "c" (data: rawptr, wl_output: ^output, name: cstring)
description_func_ptr_anon_61 :: #type proc "c" (data: rawptr, wl_output: ^output, description: cstring)
output_listener :: struct {
    geometry: geometry_func_ptr_anon_56,
    mode: mode_func_ptr_anon_57,
    done: done_func_ptr_anon_58,
    scale: scale_func_ptr_anon_59,
    name: name_func_ptr_anon_60,
    description: description_func_ptr_anon_61,
}
subcompositor_error :: enum u32 {WL_SUBCOMPOSITOR_ERROR_BAD_SURFACE = 0, WL_SUBCOMPOSITOR_ERROR_BAD_PARENT = 1, }
subsurface_error :: enum u32 {WL_SUBSURFACE_ERROR_BAD_SURFACE = 0, }

foreign import client_runic "system:wayland-client"

@(default_calling_convention = "c")
foreign client_runic {
    @(link_name = "wl_event_queue_destroy")
    event_queue_destroy :: proc(queue: ^event_queue) ---

    @(link_name = "wl_proxy_marshal_flags")
    proxy_marshal_flags :: proc(proxy_p: ^proxy, opcode: u32, interface: ^util.interface, version: u32, flags: u32) -> ^proxy ---

    @(link_name = "wl_proxy_marshal_array_flags")
    proxy_marshal_array_flags :: proc(proxy_p: ^proxy, opcode: u32, interface: ^util.interface, version: u32, flags: u32, args: [^]util.argument) -> ^proxy ---

    @(link_name = "wl_proxy_marshal")
    proxy_marshal :: proc(p: ^proxy, opcode: u32) ---

    @(link_name = "wl_proxy_marshal_array")
    proxy_marshal_array :: proc(p: ^proxy, opcode: u32, args: [^]util.argument) ---

    @(link_name = "wl_proxy_create")
    proxy_create :: proc(factory: ^proxy, interface: ^util.interface) -> ^proxy ---

    @(link_name = "wl_proxy_create_wrapper")
    proxy_create_wrapper :: proc(proxy_p: rawptr) -> rawptr ---

    @(link_name = "wl_proxy_wrapper_destroy")
    proxy_wrapper_destroy :: proc(proxy_wrapper: rawptr) ---

    @(link_name = "wl_proxy_marshal_constructor")
    proxy_marshal_constructor :: proc(proxy_p: ^proxy, opcode: u32, interface: ^util.interface) -> ^proxy ---

    @(link_name = "wl_proxy_marshal_constructor_versioned")
    proxy_marshal_constructor_versioned :: proc(proxy_p: ^proxy, opcode: u32, interface: ^util.interface, version: u32) -> ^proxy ---

    @(link_name = "wl_proxy_marshal_array_constructor")
    proxy_marshal_array_constructor :: proc(proxy_p: ^proxy, opcode: u32, args: [^]util.argument, interface: ^util.interface) -> ^proxy ---

    @(link_name = "wl_proxy_marshal_array_constructor_versioned")
    proxy_marshal_array_constructor_versioned :: proc(proxy_p: ^proxy, opcode: u32, args: [^]util.argument, interface: ^util.interface, version: u32) -> ^proxy ---

    @(link_name = "wl_proxy_destroy")
    proxy_destroy :: proc(proxy_p: ^proxy) ---

    @(link_name = "wl_proxy_add_listener")
    proxy_add_listener :: proc(proxy_p: ^proxy, implementation: ^implementation_func_ptr_anon_0, data: rawptr) -> i32 ---

    @(link_name = "wl_proxy_get_listener")
    proxy_get_listener :: proc(proxy_p: ^proxy) -> rawptr ---

    @(link_name = "wl_proxy_add_dispatcher")
    proxy_add_dispatcher :: proc(proxy_p: ^proxy, dispatcher_func: util.dispatcher_func_t, dispatcher_data: rawptr, data: rawptr) -> i32 ---

    @(link_name = "wl_proxy_set_user_data")
    proxy_set_user_data :: proc(proxy_p: ^proxy, user_data: rawptr) ---

    @(link_name = "wl_proxy_get_user_data")
    proxy_get_user_data :: proc(proxy_p: ^proxy) -> rawptr ---

    @(link_name = "wl_proxy_get_version")
    proxy_get_version :: proc(proxy_p: ^proxy) -> u32 ---

    @(link_name = "wl_proxy_get_id")
    proxy_get_id :: proc(proxy_p: ^proxy) -> u32 ---

    @(link_name = "wl_proxy_set_tag")
    proxy_set_tag :: proc(proxy_p: ^proxy, tag: ^cstring) ---

    @(link_name = "wl_proxy_get_tag")
    proxy_get_tag :: proc(proxy_p: ^proxy) -> ^cstring ---

    @(link_name = "wl_proxy_get_class")
    proxy_get_class :: proc(proxy_p: ^proxy) -> cstring ---

    @(link_name = "wl_proxy_get_display")
    proxy_get_display :: proc(proxy_p: ^proxy) -> ^display ---

    @(link_name = "wl_proxy_set_queue")
    proxy_set_queue :: proc(proxy_p: ^proxy, queue: ^event_queue) ---

    @(link_name = "wl_proxy_get_queue")
    proxy_get_queue :: proc(proxy_p: ^proxy) -> ^event_queue ---

    @(link_name = "wl_event_queue_get_name")
    event_queue_get_name :: proc(queue: ^event_queue) -> cstring ---

    @(link_name = "wl_display_connect")
    display_connect :: proc(name: cstring) -> ^display ---

    @(link_name = "wl_display_connect_to_fd")
    display_connect_to_fd :: proc(fd: i32) -> ^display ---

    @(link_name = "wl_display_disconnect")
    display_disconnect :: proc(display_p: ^display) ---

    @(link_name = "wl_display_get_fd")
    display_get_fd :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_dispatch")
    display_dispatch :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_dispatch_queue")
    display_dispatch_queue :: proc(display_p: ^display, queue: ^event_queue) -> i32 ---

    @(link_name = "wl_display_dispatch_queue_pending")
    display_dispatch_queue_pending :: proc(display_p: ^display, queue: ^event_queue) -> i32 ---

    @(link_name = "wl_display_dispatch_pending")
    display_dispatch_pending :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_get_error")
    display_get_error :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_get_protocol_error")
    display_get_protocol_error :: proc(display_p: ^display, interface: ^^util.interface, id: ^u32) -> u32 ---

    @(link_name = "wl_display_flush")
    display_flush :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_roundtrip_queue")
    display_roundtrip_queue :: proc(display_p: ^display, queue: ^event_queue) -> i32 ---

    @(link_name = "wl_display_roundtrip")
    display_roundtrip :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_create_queue")
    display_create_queue :: proc(display_p: ^display) -> ^event_queue ---

    @(link_name = "wl_display_create_queue_with_name")
    display_create_queue_with_name :: proc(display_p: ^display, name: cstring) -> ^event_queue ---

    @(link_name = "wl_display_prepare_read_queue")
    display_prepare_read_queue :: proc(display_p: ^display, queue: ^event_queue) -> i32 ---

    @(link_name = "wl_display_prepare_read")
    display_prepare_read :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_cancel_read")
    display_cancel_read :: proc(display_p: ^display) ---

    @(link_name = "wl_display_read_events")
    display_read_events :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_log_set_handler_client")
    log_set_handler_client :: proc(handler: util.log_func_t) ---

    @(link_name = "wl_display_interface")
    display_interface: util.interface

    @(link_name = "wl_registry_interface")
    registry_interface: util.interface

    @(link_name = "wl_callback_interface")
    callback_interface: util.interface

    @(link_name = "wl_compositor_interface")
    compositor_interface: util.interface

    @(link_name = "wl_shm_pool_interface")
    shm_pool_interface: util.interface

    @(link_name = "wl_shm_interface")
    shm_interface: util.interface

    @(link_name = "wl_buffer_interface")
    buffer_interface: util.interface

    @(link_name = "wl_data_offer_interface")
    data_offer_interface: util.interface

    @(link_name = "wl_data_source_interface")
    data_source_interface: util.interface

    @(link_name = "wl_data_device_interface")
    data_device_interface: util.interface

    @(link_name = "wl_data_device_manager_interface")
    data_device_manager_interface: util.interface

    @(link_name = "wl_shell_interface")
    shell_interface: util.interface

    @(link_name = "wl_shell_surface_interface")
    shell_surface_interface: util.interface

    @(link_name = "wl_surface_interface")
    surface_interface: util.interface

    @(link_name = "wl_seat_interface")
    seat_interface: util.interface

    @(link_name = "wl_pointer_interface")
    pointer_interface: util.interface

    @(link_name = "wl_keyboard_interface")
    keyboard_interface: util.interface

    @(link_name = "wl_touch_interface")
    touch_interface: util.interface

    @(link_name = "wl_output_interface")
    output_interface: util.interface

    @(link_name = "wl_region_interface")
    region_interface: util.interface

    @(link_name = "wl_subcompositor_interface")
    subcompositor_interface: util.interface

    @(link_name = "wl_subsurface_interface")
    subsurface_interface: util.interface

}

when (ODIN_ARCH == .amd64) || (ODIN_ARCH == .arm64) {

@(default_calling_convention = "c")
foreign client_runic {
    @(link_name = "wl_display_set_max_buffer_size")
    display_set_max_buffer_size :: proc(display_p: ^display, max_buffer_size: u64) ---

}

}

when (ODIN_ARCH == .i386) || (ODIN_ARCH == .arm32) {

@(default_calling_convention = "c")
foreign client_runic {
    @(link_name = "wl_display_set_max_buffer_size")
    display_set_max_buffer_size :: proc(display_p: ^display, max_buffer_size: u32) ---

}

}

