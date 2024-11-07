package server

import "core:sys/linux"
import util "../util"

DISPLAY_ERROR :: 0
DISPLAY_DELETE_ID :: 1
DISPLAY_ERROR_SINCE_VERSION :: 1
DISPLAY_DELETE_ID_SINCE_VERSION :: 1
DISPLAY_SYNC_SINCE_VERSION :: 1
DISPLAY_GET_REGISTRY_SINCE_VERSION :: 1
REGISTRY_GLOBAL :: 0
REGISTRY_GLOBAL_REMOVE :: 1
REGISTRY_GLOBAL_SINCE_VERSION :: 1
REGISTRY_GLOBAL_REMOVE_SINCE_VERSION :: 1
REGISTRY_BIND_SINCE_VERSION :: 1
CALLBACK_DONE :: 0
CALLBACK_DONE_SINCE_VERSION :: 1
COMPOSITOR_CREATE_SURFACE_SINCE_VERSION :: 1
COMPOSITOR_CREATE_REGION_SINCE_VERSION :: 1
SHM_POOL_CREATE_BUFFER_SINCE_VERSION :: 1
SHM_POOL_DESTROY_SINCE_VERSION :: 1
SHM_POOL_RESIZE_SINCE_VERSION :: 1
SHM_FORMAT :: 0
SHM_FORMAT_SINCE_VERSION :: 1
SHM_CREATE_POOL_SINCE_VERSION :: 1
SHM_RELEASE_SINCE_VERSION :: 2
BUFFER_RELEASE :: 0
BUFFER_RELEASE_SINCE_VERSION :: 1
BUFFER_DESTROY_SINCE_VERSION :: 1
DATA_OFFER_OFFER :: 0
DATA_OFFER_SOURCE_ACTIONS :: 1
DATA_OFFER_ACTION :: 2
DATA_OFFER_OFFER_SINCE_VERSION :: 1
DATA_OFFER_SOURCE_ACTIONS_SINCE_VERSION :: 3
DATA_OFFER_ACTION_SINCE_VERSION :: 3
DATA_OFFER_ACCEPT_SINCE_VERSION :: 1
DATA_OFFER_RECEIVE_SINCE_VERSION :: 1
DATA_OFFER_DESTROY_SINCE_VERSION :: 1
DATA_OFFER_FINISH_SINCE_VERSION :: 3
DATA_OFFER_SET_ACTIONS_SINCE_VERSION :: 3
DATA_SOURCE_TARGET :: 0
DATA_SOURCE_SEND :: 1
DATA_SOURCE_CANCELLED :: 2
DATA_SOURCE_DND_DROP_PERFORMED :: 3
DATA_SOURCE_DND_FINISHED :: 4
DATA_SOURCE_ACTION :: 5
DATA_SOURCE_TARGET_SINCE_VERSION :: 1
DATA_SOURCE_SEND_SINCE_VERSION :: 1
DATA_SOURCE_CANCELLED_SINCE_VERSION :: 1
DATA_SOURCE_DND_DROP_PERFORMED_SINCE_VERSION :: 3
DATA_SOURCE_DND_FINISHED_SINCE_VERSION :: 3
DATA_SOURCE_ACTION_SINCE_VERSION :: 3
DATA_SOURCE_OFFER_SINCE_VERSION :: 1
DATA_SOURCE_DESTROY_SINCE_VERSION :: 1
DATA_SOURCE_SET_ACTIONS_SINCE_VERSION :: 3
DATA_DEVICE_DATA_OFFER :: 0
DATA_DEVICE_ENTER :: 1
DATA_DEVICE_LEAVE :: 2
DATA_DEVICE_MOTION :: 3
DATA_DEVICE_DROP :: 4
DATA_DEVICE_SELECTION :: 5
DATA_DEVICE_DATA_OFFER_SINCE_VERSION :: 1
DATA_DEVICE_ENTER_SINCE_VERSION :: 1
DATA_DEVICE_LEAVE_SINCE_VERSION :: 1
DATA_DEVICE_MOTION_SINCE_VERSION :: 1
DATA_DEVICE_DROP_SINCE_VERSION :: 1
DATA_DEVICE_SELECTION_SINCE_VERSION :: 1
DATA_DEVICE_START_DRAG_SINCE_VERSION :: 1
DATA_DEVICE_SET_SELECTION_SINCE_VERSION :: 1
DATA_DEVICE_RELEASE_SINCE_VERSION :: 2
DATA_DEVICE_MANAGER_CREATE_DATA_SOURCE_SINCE_VERSION :: 1
DATA_DEVICE_MANAGER_GET_DATA_DEVICE_SINCE_VERSION :: 1
SHELL_GET_SHELL_SURFACE_SINCE_VERSION :: 1
SHELL_SURFACE_PING :: 0
SHELL_SURFACE_CONFIGURE :: 1
SHELL_SURFACE_POPUP_DONE :: 2
SHELL_SURFACE_PING_SINCE_VERSION :: 1
SHELL_SURFACE_CONFIGURE_SINCE_VERSION :: 1
SHELL_SURFACE_POPUP_DONE_SINCE_VERSION :: 1
SHELL_SURFACE_PONG_SINCE_VERSION :: 1
SHELL_SURFACE_MOVE_SINCE_VERSION :: 1
SHELL_SURFACE_RESIZE_SINCE_VERSION :: 1
SHELL_SURFACE_SET_TOPLEVEL_SINCE_VERSION :: 1
SHELL_SURFACE_SET_TRANSIENT_SINCE_VERSION :: 1
SHELL_SURFACE_SET_FULLSCREEN_SINCE_VERSION :: 1
SHELL_SURFACE_SET_POPUP_SINCE_VERSION :: 1
SHELL_SURFACE_SET_MAXIMIZED_SINCE_VERSION :: 1
SHELL_SURFACE_SET_TITLE_SINCE_VERSION :: 1
SHELL_SURFACE_SET_CLASS_SINCE_VERSION :: 1
SURFACE_ENTER :: 0
SURFACE_LEAVE :: 1
SURFACE_PREFERRED_BUFFER_SCALE :: 2
SURFACE_PREFERRED_BUFFER_TRANSFORM :: 3
SURFACE_ENTER_SINCE_VERSION :: 1
SURFACE_LEAVE_SINCE_VERSION :: 1
SURFACE_PREFERRED_BUFFER_SCALE_SINCE_VERSION :: 6
SURFACE_PREFERRED_BUFFER_TRANSFORM_SINCE_VERSION :: 6
SURFACE_DESTROY_SINCE_VERSION :: 1
SURFACE_ATTACH_SINCE_VERSION :: 1
SURFACE_DAMAGE_SINCE_VERSION :: 1
SURFACE_FRAME_SINCE_VERSION :: 1
SURFACE_SET_OPAQUE_REGION_SINCE_VERSION :: 1
SURFACE_SET_INPUT_REGION_SINCE_VERSION :: 1
SURFACE_COMMIT_SINCE_VERSION :: 1
SURFACE_SET_BUFFER_TRANSFORM_SINCE_VERSION :: 2
SURFACE_SET_BUFFER_SCALE_SINCE_VERSION :: 3
SURFACE_DAMAGE_BUFFER_SINCE_VERSION :: 4
SURFACE_OFFSET_SINCE_VERSION :: 5
SEAT_CAPABILITIES :: 0
SEAT_NAME :: 1
SEAT_CAPABILITIES_SINCE_VERSION :: 1
SEAT_NAME_SINCE_VERSION :: 2
SEAT_GET_POINTER_SINCE_VERSION :: 1
SEAT_GET_KEYBOARD_SINCE_VERSION :: 1
SEAT_GET_TOUCH_SINCE_VERSION :: 1
SEAT_RELEASE_SINCE_VERSION :: 5
POINTER_AXIS_SOURCE_WHEEL_TILT_SINCE_VERSION :: 6
POINTER_ENTER :: 0
POINTER_LEAVE :: 1
POINTER_MOTION :: 2
POINTER_BUTTON :: 3
POINTER_AXIS :: 4
POINTER_FRAME :: 5
POINTER_AXIS_SOURCE :: 6
POINTER_AXIS_STOP :: 7
POINTER_AXIS_DISCRETE :: 8
POINTER_AXIS_VALUE120 :: 9
POINTER_AXIS_RELATIVE_DIRECTION :: 10
POINTER_ENTER_SINCE_VERSION :: 1
POINTER_LEAVE_SINCE_VERSION :: 1
POINTER_MOTION_SINCE_VERSION :: 1
POINTER_BUTTON_SINCE_VERSION :: 1
POINTER_AXIS_SINCE_VERSION :: 1
POINTER_FRAME_SINCE_VERSION :: 5
POINTER_AXIS_SOURCE_SINCE_VERSION :: 5
POINTER_AXIS_STOP_SINCE_VERSION :: 5
POINTER_AXIS_DISCRETE_SINCE_VERSION :: 5
POINTER_AXIS_VALUE120_SINCE_VERSION :: 8
POINTER_AXIS_RELATIVE_DIRECTION_SINCE_VERSION :: 9
POINTER_SET_CURSOR_SINCE_VERSION :: 1
POINTER_RELEASE_SINCE_VERSION :: 3
KEYBOARD_KEYMAP :: 0
KEYBOARD_ENTER :: 1
KEYBOARD_LEAVE :: 2
KEYBOARD_KEY :: 3
KEYBOARD_MODIFIERS :: 4
KEYBOARD_REPEAT_INFO :: 5
KEYBOARD_KEYMAP_SINCE_VERSION :: 1
KEYBOARD_ENTER_SINCE_VERSION :: 1
KEYBOARD_LEAVE_SINCE_VERSION :: 1
KEYBOARD_KEY_SINCE_VERSION :: 1
KEYBOARD_MODIFIERS_SINCE_VERSION :: 1
KEYBOARD_REPEAT_INFO_SINCE_VERSION :: 4
KEYBOARD_RELEASE_SINCE_VERSION :: 3
TOUCH_DOWN :: 0
TOUCH_UP :: 1
TOUCH_MOTION :: 2
TOUCH_FRAME :: 3
TOUCH_CANCEL :: 4
TOUCH_SHAPE :: 5
TOUCH_ORIENTATION :: 6
TOUCH_DOWN_SINCE_VERSION :: 1
TOUCH_UP_SINCE_VERSION :: 1
TOUCH_MOTION_SINCE_VERSION :: 1
TOUCH_FRAME_SINCE_VERSION :: 1
TOUCH_CANCEL_SINCE_VERSION :: 1
TOUCH_SHAPE_SINCE_VERSION :: 6
TOUCH_ORIENTATION_SINCE_VERSION :: 6
TOUCH_RELEASE_SINCE_VERSION :: 3
OUTPUT_GEOMETRY :: 0
OUTPUT_MODE :: 1
OUTPUT_DONE :: 2
OUTPUT_SCALE :: 3
OUTPUT_NAME :: 4
OUTPUT_DESCRIPTION :: 5
OUTPUT_GEOMETRY_SINCE_VERSION :: 1
OUTPUT_MODE_SINCE_VERSION :: 1
OUTPUT_DONE_SINCE_VERSION :: 2
OUTPUT_SCALE_SINCE_VERSION :: 2
OUTPUT_NAME_SINCE_VERSION :: 4
OUTPUT_DESCRIPTION_SINCE_VERSION :: 4
OUTPUT_RELEASE_SINCE_VERSION :: 3
REGION_DESTROY_SINCE_VERSION :: 1
REGION_ADD_SINCE_VERSION :: 1
REGION_SUBTRACT_SINCE_VERSION :: 1
SUBCOMPOSITOR_DESTROY_SINCE_VERSION :: 1
SUBCOMPOSITOR_GET_SUBSURFACE_SINCE_VERSION :: 1
SUBSURFACE_DESTROY_SINCE_VERSION :: 1
SUBSURFACE_SET_POSITION_SINCE_VERSION :: 1
SUBSURFACE_PLACE_ABOVE_SINCE_VERSION :: 1
SUBSURFACE_PLACE_BELOW_SINCE_VERSION :: 1
SUBSURFACE_SET_SYNC_SINCE_VERSION :: 1
SUBSURFACE_SET_DESYNC_SINCE_VERSION :: 1

event_loop_fd_func_t :: #type proc "c" (fd: i32, mask: u32, data: rawptr) -> i32
event_loop_timer_func_t :: #type proc "c" (data: rawptr) -> i32
event_loop_signal_func_t :: #type proc "c" (signal_number: i32, data: rawptr) -> i32
event_loop_idle_func_t :: #type proc "c" (data: rawptr)
event_loop :: ^^^rawptr
event_source :: ^^^rawptr
listener :: struct {
    link: util.list,
    notify: notify_func_t,
}
notify_func_t :: #type proc "c" (listener_p: ^listener, data: rawptr)
display :: ^^^rawptr
client :: ^^^rawptr
global_bind_func_t :: #type proc "c" (client_p: ^client, data: rawptr, version: u32, id: u32)
global :: ^^^rawptr
display_global_filter_func_t :: #type proc "c" (client_p: ^client, global_p: ^global, data: rawptr) -> b8
resource :: ^^^rawptr
client_for_each_resource_iterator_func_t :: #type proc "c" (resource_p: ^resource, user_data: rawptr) -> util.iterator_result
user_data_destroy_func_t :: #type proc "c" (data: rawptr)
signal :: struct {
    listener_list: util.list,
}
resource_destroy_func_t :: #type proc "c" (resource_p: ^resource)
shm_buffer :: ^^^rawptr
shm_pool :: ^^^rawptr
protocol_logger_type :: enum u32 {PROTOCOL_LOGGER_REQUEST = 0, PROTOCOL_LOGGER_EVENT = 1, }
protocol_logger_message :: struct {
    resource_m: ^resource,
    message_opcode: i32,
    message: ^util.message,
    arguments_count: i32,
    arguments: [^]util.argument,
}
protocol_logger_func_t :: #type proc "c" (user_data: rawptr, direction: protocol_logger_type, message: ^protocol_logger_message)
protocol_logger :: ^^^rawptr
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
subcompositor :: ^^^rawptr
subsurface :: ^^^rawptr
surface :: ^^^rawptr
touch :: ^^^rawptr
display_error :: enum u32 {DISPLAY_ERROR_INVALID_OBJECT = 0, DISPLAY_ERROR_INVALID_METHOD = 1, DISPLAY_ERROR_NO_MEMORY = 2, DISPLAY_ERROR_IMPLEMENTATION = 3, }
sync_func_ptr_anon_0 :: #type proc "c" (client_p: ^client, resource_p: ^resource, callback_p: u32)
get_registry_func_ptr_anon_1 :: #type proc "c" (client_p: ^client, resource_p: ^resource, registry_p: u32)
display_interface :: struct {
    sync: sync_func_ptr_anon_0,
    get_registry: get_registry_func_ptr_anon_1,
}
bind_func_ptr_anon_2 :: #type proc "c" (client_p: ^client, resource_p: ^resource, name: u32, interface: cstring, version: u32, id: u32)
registry_interface :: struct {
    bind: bind_func_ptr_anon_2,
}
create_surface_func_ptr_anon_3 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32)
create_region_func_ptr_anon_4 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32)
compositor_interface :: struct {
    create_surface: create_surface_func_ptr_anon_3,
    create_region: create_region_func_ptr_anon_4,
}
create_buffer_func_ptr_anon_5 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32, offset: i32, width: i32, height: i32, stride: i32, format: u32)
destroy_func_ptr_anon_6 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
resize_func_ptr_anon_7 :: #type proc "c" (client_p: ^client, resource_p: ^resource, size: i32)
shm_pool_interface :: struct {
    create_buffer: create_buffer_func_ptr_anon_5,
    destroy: destroy_func_ptr_anon_6,
    resize: resize_func_ptr_anon_7,
}
shm_error :: enum u32 {SHM_ERROR_INVALID_FORMAT = 0, SHM_ERROR_INVALID_STRIDE = 1, SHM_ERROR_INVALID_FD = 2, }
shm_format :: enum u32 {SHM_FORMAT_ARGB8888 = 0, SHM_FORMAT_XRGB8888 = 1, SHM_FORMAT_C8 = 538982467, SHM_FORMAT_RGB332 = 943867730, SHM_FORMAT_BGR233 = 944916290, SHM_FORMAT_XRGB4444 = 842093144, SHM_FORMAT_XBGR4444 = 842089048, SHM_FORMAT_RGBX4444 = 842094674, SHM_FORMAT_BGRX4444 = 842094658, SHM_FORMAT_ARGB4444 = 842093121, SHM_FORMAT_ABGR4444 = 842089025, SHM_FORMAT_RGBA4444 = 842088786, SHM_FORMAT_BGRA4444 = 842088770, SHM_FORMAT_XRGB1555 = 892424792, SHM_FORMAT_XBGR1555 = 892420696, SHM_FORMAT_RGBX5551 = 892426322, SHM_FORMAT_BGRX5551 = 892426306, SHM_FORMAT_ARGB1555 = 892424769, SHM_FORMAT_ABGR1555 = 892420673, SHM_FORMAT_RGBA5551 = 892420434, SHM_FORMAT_BGRA5551 = 892420418, SHM_FORMAT_RGB565 = 909199186, SHM_FORMAT_BGR565 = 909199170, SHM_FORMAT_RGB888 = 875710290, SHM_FORMAT_BGR888 = 875710274, SHM_FORMAT_XBGR8888 = 875709016, SHM_FORMAT_RGBX8888 = 875714642, SHM_FORMAT_BGRX8888 = 875714626, SHM_FORMAT_ABGR8888 = 875708993, SHM_FORMAT_RGBA8888 = 875708754, SHM_FORMAT_BGRA8888 = 875708738, SHM_FORMAT_XRGB2101010 = 808669784, SHM_FORMAT_XBGR2101010 = 808665688, SHM_FORMAT_RGBX1010102 = 808671314, SHM_FORMAT_BGRX1010102 = 808671298, SHM_FORMAT_ARGB2101010 = 808669761, SHM_FORMAT_ABGR2101010 = 808665665, SHM_FORMAT_RGBA1010102 = 808665426, SHM_FORMAT_BGRA1010102 = 808665410, SHM_FORMAT_YUYV = 1448695129, SHM_FORMAT_YVYU = 1431918169, SHM_FORMAT_UYVY = 1498831189, SHM_FORMAT_VYUY = 1498765654, SHM_FORMAT_AYUV = 1448433985, SHM_FORMAT_NV12 = 842094158, SHM_FORMAT_NV21 = 825382478, SHM_FORMAT_NV16 = 909203022, SHM_FORMAT_NV61 = 825644622, SHM_FORMAT_YUV410 = 961959257, SHM_FORMAT_YVU410 = 961893977, SHM_FORMAT_YUV411 = 825316697, SHM_FORMAT_YVU411 = 825316953, SHM_FORMAT_YUV420 = 842093913, SHM_FORMAT_YVU420 = 842094169, SHM_FORMAT_YUV422 = 909202777, SHM_FORMAT_YVU422 = 909203033, SHM_FORMAT_YUV444 = 875713881, SHM_FORMAT_YVU444 = 875714137, SHM_FORMAT_R8 = 538982482, SHM_FORMAT_R16 = 540422482, SHM_FORMAT_RG88 = 943212370, SHM_FORMAT_GR88 = 943215175, SHM_FORMAT_RG1616 = 842221394, SHM_FORMAT_GR1616 = 842224199, SHM_FORMAT_XRGB16161616F = 1211388504, SHM_FORMAT_XBGR16161616F = 1211384408, SHM_FORMAT_ARGB16161616F = 1211388481, SHM_FORMAT_ABGR16161616F = 1211384385, SHM_FORMAT_XYUV8888 = 1448434008, SHM_FORMAT_VUY888 = 875713878, SHM_FORMAT_VUY101010 = 808670550, SHM_FORMAT_Y210 = 808530521, SHM_FORMAT_Y212 = 842084953, SHM_FORMAT_Y216 = 909193817, SHM_FORMAT_Y410 = 808531033, SHM_FORMAT_Y412 = 842085465, SHM_FORMAT_Y416 = 909194329, SHM_FORMAT_XVYU2101010 = 808670808, SHM_FORMAT_XVYU12_16161616 = 909334104, SHM_FORMAT_XVYU16161616 = 942954072, SHM_FORMAT_Y0L0 = 810299481, SHM_FORMAT_X0L0 = 810299480, SHM_FORMAT_Y0L2 = 843853913, SHM_FORMAT_X0L2 = 843853912, SHM_FORMAT_YUV420_8BIT = 942691673, SHM_FORMAT_YUV420_10BIT = 808539481, SHM_FORMAT_XRGB8888_A8 = 943805016, SHM_FORMAT_XBGR8888_A8 = 943800920, SHM_FORMAT_RGBX8888_A8 = 943806546, SHM_FORMAT_BGRX8888_A8 = 943806530, SHM_FORMAT_RGB888_A8 = 943798354, SHM_FORMAT_BGR888_A8 = 943798338, SHM_FORMAT_RGB565_A8 = 943797586, SHM_FORMAT_BGR565_A8 = 943797570, SHM_FORMAT_NV24 = 875714126, SHM_FORMAT_NV42 = 842290766, SHM_FORMAT_P210 = 808530512, SHM_FORMAT_P010 = 808530000, SHM_FORMAT_P012 = 842084432, SHM_FORMAT_P016 = 909193296, SHM_FORMAT_AXBXGXRX106106106106 = 808534593, SHM_FORMAT_NV15 = 892425806, SHM_FORMAT_Q410 = 808531025, SHM_FORMAT_Q401 = 825242705, SHM_FORMAT_XRGB16161616 = 942953048, SHM_FORMAT_XBGR16161616 = 942948952, SHM_FORMAT_ARGB16161616 = 942953025, SHM_FORMAT_ABGR16161616 = 942948929, SHM_FORMAT_C1 = 538980675, SHM_FORMAT_C2 = 538980931, SHM_FORMAT_C4 = 538981443, SHM_FORMAT_D1 = 538980676, SHM_FORMAT_D2 = 538980932, SHM_FORMAT_D4 = 538981444, SHM_FORMAT_D8 = 538982468, SHM_FORMAT_R1 = 538980690, SHM_FORMAT_R2 = 538980946, SHM_FORMAT_R4 = 538981458, SHM_FORMAT_R10 = 540029266, SHM_FORMAT_R12 = 540160338, SHM_FORMAT_AVUY8888 = 1498764865, SHM_FORMAT_XVUY8888 = 1498764888, SHM_FORMAT_P030 = 808661072, }
create_pool_func_ptr_anon_8 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32, fd: i32, size: i32)
release_func_ptr_anon_9 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
shm_interface :: struct {
    create_pool: create_pool_func_ptr_anon_8,
    release: release_func_ptr_anon_9,
}
destroy_func_ptr_anon_10 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
buffer_interface :: struct {
    destroy: destroy_func_ptr_anon_10,
}
data_offer_error :: enum u32 {DATA_OFFER_ERROR_INVALID_FINISH = 0, DATA_OFFER_ERROR_INVALID_ACTION_MASK = 1, DATA_OFFER_ERROR_INVALID_ACTION = 2, DATA_OFFER_ERROR_INVALID_OFFER = 3, }
accept_func_ptr_anon_11 :: #type proc "c" (client_p: ^client, resource_p: ^resource, serial: u32, mime_type: cstring)
receive_func_ptr_anon_12 :: #type proc "c" (client_p: ^client, resource_p: ^resource, mime_type: cstring, fd: i32)
destroy_func_ptr_anon_13 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
finish_func_ptr_anon_14 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
set_actions_func_ptr_anon_15 :: #type proc "c" (client_p: ^client, resource_p: ^resource, dnd_actions: u32, preferred_action: u32)
data_offer_interface :: struct {
    accept: accept_func_ptr_anon_11,
    receive: receive_func_ptr_anon_12,
    destroy: destroy_func_ptr_anon_13,
    finish: finish_func_ptr_anon_14,
    set_actions: set_actions_func_ptr_anon_15,
}
data_source_error :: enum u32 {DATA_SOURCE_ERROR_INVALID_ACTION_MASK = 0, DATA_SOURCE_ERROR_INVALID_SOURCE = 1, }
offer_func_ptr_anon_16 :: #type proc "c" (client_p: ^client, resource_p: ^resource, mime_type: cstring)
destroy_func_ptr_anon_17 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
set_actions_func_ptr_anon_18 :: #type proc "c" (client_p: ^client, resource_p: ^resource, dnd_actions: u32)
data_source_interface :: struct {
    offer: offer_func_ptr_anon_16,
    destroy: destroy_func_ptr_anon_17,
    set_actions: set_actions_func_ptr_anon_18,
}
data_device_error :: enum u32 {DATA_DEVICE_ERROR_ROLE = 0, DATA_DEVICE_ERROR_USED_SOURCE = 1, }
start_drag_func_ptr_anon_19 :: #type proc "c" (client_p: ^client, resource_p: ^resource, source: ^resource, origin: ^resource, icon: ^resource, serial: u32)
set_selection_func_ptr_anon_20 :: #type proc "c" (client_p: ^client, resource_p: ^resource, source: ^resource, serial: u32)
release_func_ptr_anon_21 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
data_device_interface :: struct {
    start_drag: start_drag_func_ptr_anon_19,
    set_selection: set_selection_func_ptr_anon_20,
    release: release_func_ptr_anon_21,
}
data_device_manager_dnd_action :: enum u32 {DATA_DEVICE_MANAGER_DND_ACTION_NONE = 0, DATA_DEVICE_MANAGER_DND_ACTION_COPY = 1, DATA_DEVICE_MANAGER_DND_ACTION_MOVE = 2, DATA_DEVICE_MANAGER_DND_ACTION_ASK = 4, }
create_data_source_func_ptr_anon_22 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32)
get_data_device_func_ptr_anon_23 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32, seat_p: ^resource)
data_device_manager_interface :: struct {
    create_data_source: create_data_source_func_ptr_anon_22,
    get_data_device: get_data_device_func_ptr_anon_23,
}
shell_error :: enum u32 {SHELL_ERROR_ROLE = 0, }
get_shell_surface_func_ptr_anon_24 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32, surface_p: ^resource)
shell_interface :: struct {
    get_shell_surface: get_shell_surface_func_ptr_anon_24,
}
shell_surface_resize :: enum u32 {SHELL_SURFACE_RESIZE_NONE = 0, SHELL_SURFACE_RESIZE_TOP = 1, SHELL_SURFACE_RESIZE_BOTTOM = 2, SHELL_SURFACE_RESIZE_LEFT = 4, SHELL_SURFACE_RESIZE_TOP_LEFT = 5, SHELL_SURFACE_RESIZE_BOTTOM_LEFT = 6, SHELL_SURFACE_RESIZE_RIGHT = 8, SHELL_SURFACE_RESIZE_TOP_RIGHT = 9, SHELL_SURFACE_RESIZE_BOTTOM_RIGHT = 10, }
shell_surface_transient :: enum u32 {SHELL_SURFACE_TRANSIENT_INACTIVE = 1, }
shell_surface_fullscreen_method :: enum u32 {SHELL_SURFACE_FULLSCREEN_METHOD_DEFAULT = 0, SHELL_SURFACE_FULLSCREEN_METHOD_SCALE = 1, SHELL_SURFACE_FULLSCREEN_METHOD_DRIVER = 2, SHELL_SURFACE_FULLSCREEN_METHOD_FILL = 3, }
pong_func_ptr_anon_25 :: #type proc "c" (client_p: ^client, resource_p: ^resource, serial: u32)
move_func_ptr_anon_26 :: #type proc "c" (client_p: ^client, resource_p: ^resource, seat_p: ^resource, serial: u32)
resize_func_ptr_anon_27 :: #type proc "c" (client_p: ^client, resource_p: ^resource, seat_p: ^resource, serial: u32, edges: u32)
set_toplevel_func_ptr_anon_28 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
set_transient_func_ptr_anon_29 :: #type proc "c" (client_p: ^client, resource_p: ^resource, parent: ^resource, x: i32, y: i32, flags: u32)
set_fullscreen_func_ptr_anon_30 :: #type proc "c" (client_p: ^client, resource_p: ^resource, method: u32, framerate: u32, output_p: ^resource)
set_popup_func_ptr_anon_31 :: #type proc "c" (client_p: ^client, resource_p: ^resource, seat_p: ^resource, serial: u32, parent: ^resource, x: i32, y: i32, flags: u32)
set_maximized_func_ptr_anon_32 :: #type proc "c" (client_p: ^client, resource_p: ^resource, output_p: ^resource)
set_title_func_ptr_anon_33 :: #type proc "c" (client_p: ^client, resource_p: ^resource, title: cstring)
set_class_func_ptr_anon_34 :: #type proc "c" (client_p: ^client, resource_p: ^resource, class_: cstring)
shell_surface_interface :: struct {
    pong: pong_func_ptr_anon_25,
    move: move_func_ptr_anon_26,
    resize: resize_func_ptr_anon_27,
    set_toplevel: set_toplevel_func_ptr_anon_28,
    set_transient: set_transient_func_ptr_anon_29,
    set_fullscreen: set_fullscreen_func_ptr_anon_30,
    set_popup: set_popup_func_ptr_anon_31,
    set_maximized: set_maximized_func_ptr_anon_32,
    set_title: set_title_func_ptr_anon_33,
    set_class: set_class_func_ptr_anon_34,
}
surface_error :: enum u32 {SURFACE_ERROR_INVALID_SCALE = 0, SURFACE_ERROR_INVALID_TRANSFORM = 1, SURFACE_ERROR_INVALID_SIZE = 2, SURFACE_ERROR_INVALID_OFFSET = 3, SURFACE_ERROR_DEFUNCT_ROLE_OBJECT = 4, }
destroy_func_ptr_anon_35 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
attach_func_ptr_anon_36 :: #type proc "c" (client_p: ^client, resource_p: ^resource, buffer_p: ^resource, x: i32, y: i32)
damage_func_ptr_anon_37 :: #type proc "c" (client_p: ^client, resource_p: ^resource, x: i32, y: i32, width: i32, height: i32)
frame_func_ptr_anon_38 :: #type proc "c" (client_p: ^client, resource_p: ^resource, callback_p: u32)
set_opaque_region_func_ptr_anon_39 :: #type proc "c" (client_p: ^client, resource_p: ^resource, region_p: ^resource)
set_input_region_func_ptr_anon_40 :: #type proc "c" (client_p: ^client, resource_p: ^resource, region_p: ^resource)
commit_func_ptr_anon_41 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
set_buffer_transform_func_ptr_anon_42 :: #type proc "c" (client_p: ^client, resource_p: ^resource, transform: i32)
set_buffer_scale_func_ptr_anon_43 :: #type proc "c" (client_p: ^client, resource_p: ^resource, scale: i32)
damage_buffer_func_ptr_anon_44 :: #type proc "c" (client_p: ^client, resource_p: ^resource, x: i32, y: i32, width: i32, height: i32)
offset_func_ptr_anon_45 :: #type proc "c" (client_p: ^client, resource_p: ^resource, x: i32, y: i32)
surface_interface :: struct {
    destroy: destroy_func_ptr_anon_35,
    attach: attach_func_ptr_anon_36,
    damage: damage_func_ptr_anon_37,
    frame: frame_func_ptr_anon_38,
    set_opaque_region: set_opaque_region_func_ptr_anon_39,
    set_input_region: set_input_region_func_ptr_anon_40,
    commit: commit_func_ptr_anon_41,
    set_buffer_transform: set_buffer_transform_func_ptr_anon_42,
    set_buffer_scale: set_buffer_scale_func_ptr_anon_43,
    damage_buffer: damage_buffer_func_ptr_anon_44,
    offset: offset_func_ptr_anon_45,
}
seat_capability :: enum u32 {SEAT_CAPABILITY_POINTER = 1, SEAT_CAPABILITY_KEYBOARD = 2, SEAT_CAPABILITY_TOUCH = 4, }
seat_error :: enum u32 {SEAT_ERROR_MISSING_CAPABILITY = 0, }
get_pointer_func_ptr_anon_46 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32)
get_keyboard_func_ptr_anon_47 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32)
get_touch_func_ptr_anon_48 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32)
release_func_ptr_anon_49 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
seat_interface :: struct {
    get_pointer: get_pointer_func_ptr_anon_46,
    get_keyboard: get_keyboard_func_ptr_anon_47,
    get_touch: get_touch_func_ptr_anon_48,
    release: release_func_ptr_anon_49,
}
pointer_error :: enum u32 {POINTER_ERROR_ROLE = 0, }
pointer_button_state :: enum u32 {POINTER_BUTTON_STATE_RELEASED = 0, POINTER_BUTTON_STATE_PRESSED = 1, }
pointer_axis :: enum u32 {POINTER_AXIS_VERTICAL_SCROLL = 0, POINTER_AXIS_HORIZONTAL_SCROLL = 1, }
pointer_axis_source :: enum u32 {POINTER_AXIS_SOURCE_WHEEL = 0, POINTER_AXIS_SOURCE_FINGER = 1, POINTER_AXIS_SOURCE_CONTINUOUS = 2, POINTER_AXIS_SOURCE_WHEEL_TILT = 3, }
pointer_axis_relative_direction :: enum u32 {POINTER_AXIS_RELATIVE_DIRECTION_IDENTICAL = 0, POINTER_AXIS_RELATIVE_DIRECTION_INVERTED = 1, }
set_cursor_func_ptr_anon_50 :: #type proc "c" (client_p: ^client, resource_p: ^resource, serial: u32, surface_p: ^resource, hotspot_x: i32, hotspot_y: i32)
release_func_ptr_anon_51 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
pointer_interface :: struct {
    set_cursor: set_cursor_func_ptr_anon_50,
    release: release_func_ptr_anon_51,
}
keyboard_keymap_format :: enum u32 {KEYBOARD_KEYMAP_FORMAT_NO_KEYMAP = 0, KEYBOARD_KEYMAP_FORMAT_XKB_V1 = 1, }
keyboard_key_state :: enum u32 {KEYBOARD_KEY_STATE_RELEASED = 0, KEYBOARD_KEY_STATE_PRESSED = 1, }
release_func_ptr_anon_52 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
keyboard_interface :: struct {
    release: release_func_ptr_anon_52,
}
release_func_ptr_anon_53 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
touch_interface :: struct {
    release: release_func_ptr_anon_53,
}
output_subpixel :: enum u32 {OUTPUT_SUBPIXEL_UNKNOWN = 0, OUTPUT_SUBPIXEL_NONE = 1, OUTPUT_SUBPIXEL_HORIZONTAL_RGB = 2, OUTPUT_SUBPIXEL_HORIZONTAL_BGR = 3, OUTPUT_SUBPIXEL_VERTICAL_RGB = 4, OUTPUT_SUBPIXEL_VERTICAL_BGR = 5, }
output_transform :: enum u32 {OUTPUT_TRANSFORM_NORMAL = 0, OUTPUT_TRANSFORM_90 = 1, OUTPUT_TRANSFORM_180 = 2, OUTPUT_TRANSFORM_270 = 3, OUTPUT_TRANSFORM_FLIPPED = 4, OUTPUT_TRANSFORM_FLIPPED_90 = 5, OUTPUT_TRANSFORM_FLIPPED_180 = 6, OUTPUT_TRANSFORM_FLIPPED_270 = 7, }
output_mode :: enum u32 {OUTPUT_MODE_CURRENT = 1, OUTPUT_MODE_PREFERRED = 2, }
release_func_ptr_anon_54 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
output_interface :: struct {
    release: release_func_ptr_anon_54,
}
destroy_func_ptr_anon_55 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
add_func_ptr_anon_56 :: #type proc "c" (client_p: ^client, resource_p: ^resource, x: i32, y: i32, width: i32, height: i32)
subtract_func_ptr_anon_57 :: #type proc "c" (client_p: ^client, resource_p: ^resource, x: i32, y: i32, width: i32, height: i32)
region_interface :: struct {
    destroy: destroy_func_ptr_anon_55,
    add: add_func_ptr_anon_56,
    subtract: subtract_func_ptr_anon_57,
}
subcompositor_error :: enum u32 {SUBCOMPOSITOR_ERROR_BAD_SURFACE = 0, SUBCOMPOSITOR_ERROR_BAD_PARENT = 1, }
destroy_func_ptr_anon_58 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
get_subsurface_func_ptr_anon_59 :: #type proc "c" (client_p: ^client, resource_p: ^resource, id: u32, surface_p: ^resource, parent: ^resource)
subcompositor_interface :: struct {
    destroy: destroy_func_ptr_anon_58,
    get_subsurface: get_subsurface_func_ptr_anon_59,
}
subsurface_error :: enum u32 {SUBSURFACE_ERROR_BAD_SURFACE = 0, }
destroy_func_ptr_anon_60 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
set_position_func_ptr_anon_61 :: #type proc "c" (client_p: ^client, resource_p: ^resource, x: i32, y: i32)
place_above_func_ptr_anon_62 :: #type proc "c" (client_p: ^client, resource_p: ^resource, sibling: ^resource)
place_below_func_ptr_anon_63 :: #type proc "c" (client_p: ^client, resource_p: ^resource, sibling: ^resource)
set_sync_func_ptr_anon_64 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
set_desync_func_ptr_anon_65 :: #type proc "c" (client_p: ^client, resource_p: ^resource)
subsurface_interface :: struct {
    destroy: destroy_func_ptr_anon_60,
    set_position: set_position_func_ptr_anon_61,
    place_above: place_above_func_ptr_anon_62,
    place_below: place_below_func_ptr_anon_63,
    set_sync: set_sync_func_ptr_anon_64,
    set_desync: set_desync_func_ptr_anon_65,
}

foreign import server_runic "system:wayland-server"

@(default_calling_convention = "c")
foreign server_runic {
    @(link_name = "wl_event_loop_create")
    event_loop_create :: proc() -> ^event_loop ---

    @(link_name = "wl_event_loop_destroy")
    event_loop_destroy :: proc(loop: ^event_loop) ---

    @(link_name = "wl_event_loop_add_fd")
    event_loop_add_fd :: proc(loop: ^event_loop, fd: i32, mask: u32, func: event_loop_fd_func_t, data: rawptr) -> ^event_source ---

    @(link_name = "wl_event_source_fd_update")
    event_source_fd_update :: proc(source: ^event_source, mask: u32) -> i32 ---

    @(link_name = "wl_event_loop_add_timer")
    event_loop_add_timer :: proc(loop: ^event_loop, func: event_loop_timer_func_t, data: rawptr) -> ^event_source ---

    @(link_name = "wl_event_loop_add_signal")
    event_loop_add_signal :: proc(loop: ^event_loop, signal_number: i32, func: event_loop_signal_func_t, data: rawptr) -> ^event_source ---

    @(link_name = "wl_event_source_timer_update")
    event_source_timer_update :: proc(source: ^event_source, ms_delay: i32) -> i32 ---

    @(link_name = "wl_event_source_remove")
    event_source_remove :: proc(source: ^event_source) -> i32 ---

    @(link_name = "wl_event_source_check")
    event_source_check :: proc(source: ^event_source) ---

    @(link_name = "wl_event_loop_dispatch")
    event_loop_dispatch :: proc(loop: ^event_loop, timeout: i32) -> i32 ---

    @(link_name = "wl_event_loop_dispatch_idle")
    event_loop_dispatch_idle :: proc(loop: ^event_loop) ---

    @(link_name = "wl_event_loop_add_idle")
    event_loop_add_idle :: proc(loop: ^event_loop, func: event_loop_idle_func_t, data: rawptr) -> ^event_source ---

    @(link_name = "wl_event_loop_get_fd")
    event_loop_get_fd :: proc(loop: ^event_loop) -> i32 ---

    @(link_name = "wl_event_loop_add_destroy_listener")
    event_loop_add_destroy_listener :: proc(loop: ^event_loop, listener_p: ^listener) ---

    @(link_name = "wl_event_loop_get_destroy_listener")
    event_loop_get_destroy_listener :: proc(loop: ^event_loop, notify: notify_func_t) -> ^listener ---

    @(link_name = "wl_display_create")
    display_create :: proc() -> ^display ---

    @(link_name = "wl_display_destroy")
    display_destroy :: proc(display_p: ^display) ---

    @(link_name = "wl_display_get_event_loop")
    display_get_event_loop :: proc(display_p: ^display) -> ^event_loop ---

    @(link_name = "wl_display_add_socket")
    display_add_socket :: proc(display_p: ^display, name: cstring) -> i32 ---

    @(link_name = "wl_display_add_socket_auto")
    display_add_socket_auto :: proc(display_p: ^display) -> cstring ---

    @(link_name = "wl_display_add_socket_fd")
    display_add_socket_fd :: proc(display_p: ^display, sock_fd: i32) -> i32 ---

    @(link_name = "wl_display_terminate")
    display_terminate :: proc(display_p: ^display) ---

    @(link_name = "wl_display_run")
    display_run :: proc(display_p: ^display) ---

    @(link_name = "wl_display_flush_clients")
    display_flush_clients :: proc(display_p: ^display) ---

    @(link_name = "wl_display_destroy_clients")
    display_destroy_clients :: proc(display_p: ^display) ---

    @(link_name = "wl_display_get_serial")
    display_get_serial :: proc(display_p: ^display) -> u32 ---

    @(link_name = "wl_display_next_serial")
    display_next_serial :: proc(display_p: ^display) -> u32 ---

    @(link_name = "wl_display_add_destroy_listener")
    display_add_destroy_listener :: proc(display_p: ^display, listener_p: ^listener) ---

    @(link_name = "wl_display_add_client_created_listener")
    display_add_client_created_listener :: proc(display_p: ^display, listener_p: ^listener) ---

    @(link_name = "wl_display_get_destroy_listener")
    display_get_destroy_listener :: proc(display_p: ^display, notify: notify_func_t) -> ^listener ---

    @(link_name = "wl_global_create")
    global_create :: proc(display_p: ^display, interface: ^util.interface, version: i32, data: rawptr, bind: global_bind_func_t) -> ^global ---

    @(link_name = "wl_global_remove")
    global_remove :: proc(global_p: ^global) ---

    @(link_name = "wl_global_destroy")
    global_destroy :: proc(global_p: ^global) ---

    @(link_name = "wl_display_set_global_filter")
    display_set_global_filter :: proc(display_p: ^display, filter: display_global_filter_func_t, data: rawptr) ---

    @(link_name = "wl_global_get_interface")
    global_get_interface :: proc(global_p: ^global) -> ^util.interface ---

    @(link_name = "wl_global_get_name")
    global_get_name :: proc(global_p: ^global, client_p: ^client) -> u32 ---

    @(link_name = "wl_global_get_version")
    global_get_version :: proc(global_p: ^global) -> u32 ---

    @(link_name = "wl_global_get_display")
    global_get_display :: proc(global_p: ^global) -> ^display ---

    @(link_name = "wl_global_get_user_data")
    global_get_user_data :: proc(global_p: ^global) -> rawptr ---

    @(link_name = "wl_global_set_user_data")
    global_set_user_data :: proc(global_p: ^global, data: rawptr) ---

    @(link_name = "wl_client_create")
    client_create :: proc(display_p: ^display, fd: i32) -> ^client ---

    @(link_name = "wl_display_get_client_list")
    display_get_client_list :: proc(display_p: ^display) -> ^util.list ---

    @(link_name = "wl_client_get_link")
    client_get_link :: proc(client_p: ^client) -> ^util.list ---

    @(link_name = "wl_client_from_link")
    client_from_link :: proc(link: ^util.list) -> ^client ---

    @(link_name = "wl_client_destroy")
    client_destroy :: proc(client_p: ^client) ---

    @(link_name = "wl_client_flush")
    client_flush :: proc(client_p: ^client) ---

    @(link_name = "wl_client_get_credentials")
    client_get_credentials :: proc(client_p: ^client, pid: ^linux.Pid, uid: ^linux.Uid, gid: ^linux.Gid) ---

    @(link_name = "wl_client_get_fd")
    client_get_fd :: proc(client_p: ^client) -> i32 ---

    @(link_name = "wl_client_add_destroy_listener")
    client_add_destroy_listener :: proc(client_p: ^client, listener_p: ^listener) ---

    @(link_name = "wl_client_get_destroy_listener")
    client_get_destroy_listener :: proc(client_p: ^client, notify: notify_func_t) -> ^listener ---

    @(link_name = "wl_client_add_destroy_late_listener")
    client_add_destroy_late_listener :: proc(client_p: ^client, listener_p: ^listener) ---

    @(link_name = "wl_client_get_destroy_late_listener")
    client_get_destroy_late_listener :: proc(client_p: ^client, notify: notify_func_t) -> ^listener ---

    @(link_name = "wl_client_get_object")
    client_get_object :: proc(client_p: ^client, id: u32) -> ^resource ---

    @(link_name = "wl_client_post_no_memory")
    client_post_no_memory :: proc(client_p: ^client) ---

    @(link_name = "wl_client_post_implementation_error")
    client_post_implementation_error :: proc(client_p: ^client, msg: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "wl_client_add_resource_created_listener")
    client_add_resource_created_listener :: proc(client_p: ^client, listener_p: ^listener) ---

    @(link_name = "wl_client_for_each_resource")
    client_for_each_resource :: proc(client_p: ^client, iterator: client_for_each_resource_iterator_func_t, user_data: rawptr) ---

    @(link_name = "wl_client_set_user_data")
    client_set_user_data :: proc(client_p: ^client, data: rawptr, dtor: user_data_destroy_func_t) ---

    @(link_name = "wl_client_get_user_data")
    client_get_user_data :: proc(client_p: ^client) -> rawptr ---

    @(link_name = "wl_signal_emit_mutable")
    signal_emit_mutable :: proc(signal_p: ^signal, data: rawptr) ---

    @(link_name = "wl_resource_post_event")
    resource_post_event :: proc(resource_p: ^resource, opcode: u32, #c_vararg var_args: ..any) ---

    @(link_name = "wl_resource_post_event_array")
    resource_post_event_array :: proc(resource_p: ^resource, opcode: u32, args: [^]util.argument) ---

    @(link_name = "wl_resource_queue_event")
    resource_queue_event :: proc(resource_p: ^resource, opcode: u32, #c_vararg var_args: ..any) ---

    @(link_name = "wl_resource_queue_event_array")
    resource_queue_event_array :: proc(resource_p: ^resource, opcode: u32, args: [^]util.argument) ---

    @(link_name = "wl_resource_post_error")
    resource_post_error :: proc(resource_p: ^resource, code: u32, msg: cstring, #c_vararg var_args: ..any) ---

    @(link_name = "wl_resource_post_no_memory")
    resource_post_no_memory :: proc(resource_p: ^resource) ---

    @(link_name = "wl_client_get_display")
    client_get_display :: proc(client_p: ^client) -> ^display ---

    @(link_name = "wl_resource_create")
    resource_create :: proc(client_p: ^client, interface: ^util.interface, version: i32, id: u32) -> ^resource ---

    @(link_name = "wl_resource_set_implementation")
    resource_set_implementation :: proc(resource_p: ^resource, implementation: rawptr, data: rawptr, destroy: resource_destroy_func_t) ---

    @(link_name = "wl_resource_set_dispatcher")
    resource_set_dispatcher :: proc(resource_p: ^resource, dispatcher: util.dispatcher_func_t, implementation: rawptr, data: rawptr, destroy: resource_destroy_func_t) ---

    @(link_name = "wl_resource_destroy")
    resource_destroy :: proc(resource_p: ^resource) ---

    @(link_name = "wl_resource_get_id")
    resource_get_id :: proc(resource_p: ^resource) -> u32 ---

    @(link_name = "wl_resource_get_link")
    resource_get_link :: proc(resource_p: ^resource) -> ^util.list ---

    @(link_name = "wl_resource_from_link")
    resource_from_link :: proc(resource_: ^util.list) -> ^resource ---

    @(link_name = "wl_resource_find_for_client")
    resource_find_for_client :: proc(list: ^util.list, client_p: ^client) -> ^resource ---

    @(link_name = "wl_resource_get_client")
    resource_get_client :: proc(resource_p: ^resource) -> ^client ---

    @(link_name = "wl_resource_set_user_data")
    resource_set_user_data :: proc(resource_p: ^resource, data: rawptr) ---

    @(link_name = "wl_resource_get_user_data")
    resource_get_user_data :: proc(resource_p: ^resource) -> rawptr ---

    @(link_name = "wl_resource_get_version")
    resource_get_version :: proc(resource_p: ^resource) -> i32 ---

    @(link_name = "wl_resource_set_destructor")
    resource_set_destructor :: proc(resource_p: ^resource, destroy: resource_destroy_func_t) ---

    @(link_name = "wl_resource_instance_of")
    resource_instance_of :: proc(resource_p: ^resource, interface: ^util.interface, implementation: rawptr) -> i32 ---

    @(link_name = "wl_resource_get_class")
    resource_get_class :: proc(resource_p: ^resource) -> cstring ---

    @(link_name = "wl_resource_add_destroy_listener")
    resource_add_destroy_listener :: proc(resource_p: ^resource, listener_p: ^listener) ---

    @(link_name = "wl_resource_get_destroy_listener")
    resource_get_destroy_listener :: proc(resource_p: ^resource, notify: notify_func_t) -> ^listener ---

    @(link_name = "wl_shm_buffer_get")
    shm_buffer_get :: proc(resource_p: ^resource) -> ^shm_buffer ---

    @(link_name = "wl_shm_buffer_begin_access")
    shm_buffer_begin_access :: proc(buffer_p: ^shm_buffer) ---

    @(link_name = "wl_shm_buffer_end_access")
    shm_buffer_end_access :: proc(buffer_p: ^shm_buffer) ---

    @(link_name = "wl_shm_buffer_get_data")
    shm_buffer_get_data :: proc(buffer_p: ^shm_buffer) -> rawptr ---

    @(link_name = "wl_shm_buffer_get_stride")
    shm_buffer_get_stride :: proc(buffer_p: ^shm_buffer) -> i32 ---

    @(link_name = "wl_shm_buffer_get_format")
    shm_buffer_get_format :: proc(buffer_p: ^shm_buffer) -> u32 ---

    @(link_name = "wl_shm_buffer_get_width")
    shm_buffer_get_width :: proc(buffer_p: ^shm_buffer) -> i32 ---

    @(link_name = "wl_shm_buffer_get_height")
    shm_buffer_get_height :: proc(buffer_p: ^shm_buffer) -> i32 ---

    @(link_name = "wl_shm_buffer_ref_pool")
    shm_buffer_ref_pool :: proc(buffer_p: ^shm_buffer) -> ^shm_pool ---

    @(link_name = "wl_shm_pool_unref")
    shm_pool_unref :: proc(pool: ^shm_pool) ---

    @(link_name = "wl_display_init_shm")
    display_init_shm :: proc(display_p: ^display) -> i32 ---

    @(link_name = "wl_display_add_shm_format")
    display_add_shm_format :: proc(display_p: ^display, format: u32) -> ^u32 ---

    @(link_name = "wl_shm_buffer_create")
    shm_buffer_create :: proc(client_p: ^client, id: u32, width: i32, height: i32, stride: i32, format: u32) -> ^shm_buffer ---

    @(link_name = "wl_log_set_handler_server")
    log_set_handler_server :: proc(handler: util.log_func_t) ---

    @(link_name = "wl_display_add_protocol_logger")
    display_add_protocol_logger :: proc(display_p: ^display, param1: protocol_logger_func_t, user_data: rawptr) -> ^protocol_logger ---

    @(link_name = "wl_protocol_logger_destroy")
    protocol_logger_destroy :: proc(logger: ^protocol_logger) ---

    @(link_name = "wl_display_interface")
    display_interface_v: util.interface

    @(link_name = "wl_registry_interface")
    registry_interface_v: util.interface

    @(link_name = "wl_callback_interface")
    callback_interface: util.interface

    @(link_name = "wl_compositor_interface")
    compositor_interface_v: util.interface

    @(link_name = "wl_shm_pool_interface")
    shm_pool_interface_v: util.interface

    @(link_name = "wl_shm_interface")
    shm_interface_v: util.interface

    @(link_name = "wl_buffer_interface")
    buffer_interface_v: util.interface

    @(link_name = "wl_data_offer_interface")
    data_offer_interface_v: util.interface

    @(link_name = "wl_data_source_interface")
    data_source_interface_v: util.interface

    @(link_name = "wl_data_device_interface")
    data_device_interface_v: util.interface

    @(link_name = "wl_data_device_manager_interface")
    data_device_manager_interface_v: util.interface

    @(link_name = "wl_shell_interface")
    shell_interface_v: util.interface

    @(link_name = "wl_shell_surface_interface")
    shell_surface_interface_v: util.interface

    @(link_name = "wl_surface_interface")
    surface_interface_v: util.interface

    @(link_name = "wl_seat_interface")
    seat_interface_v: util.interface

    @(link_name = "wl_pointer_interface")
    pointer_interface_v: util.interface

    @(link_name = "wl_keyboard_interface")
    keyboard_interface_v: util.interface

    @(link_name = "wl_touch_interface")
    touch_interface_v: util.interface

    @(link_name = "wl_output_interface")
    output_interface_v: util.interface

    @(link_name = "wl_region_interface")
    region_interface_v: util.interface

    @(link_name = "wl_subcompositor_interface")
    subcompositor_interface_v: util.interface

    @(link_name = "wl_subsurface_interface")
    subsurface_interface_v: util.interface

}

when (ODIN_ARCH == .amd64) || (ODIN_ARCH == .arm64) {

@(default_calling_convention = "c")
foreign server_runic {
    @(link_name = "wl_display_set_default_max_buffer_size")
    display_set_default_max_buffer_size :: proc(display_p: ^display, max_buffer_size: u64) ---

    @(link_name = "wl_client_set_max_buffer_size")
    client_set_max_buffer_size :: proc(client_p: ^client, max_buffer_size: u64) ---

}

}

when (ODIN_ARCH == .i386) || (ODIN_ARCH == .arm32) {

@(default_calling_convention = "c")
foreign server_runic {
    @(link_name = "wl_display_set_default_max_buffer_size")
    display_set_default_max_buffer_size :: proc(display_p: ^display, max_buffer_size: u32) ---

    @(link_name = "wl_client_set_max_buffer_size")
    client_set_max_buffer_size :: proc(client_p: ^client, max_buffer_size: u32) ---

}

}

