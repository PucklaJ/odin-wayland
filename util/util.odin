package util

object :: ^^^rawptr
interface :: struct {
    name: cstring,
    version: i32,
    method_count: i32,
    methods: [^]message,
    event_count: i32,
    events: [^]message,
}
message :: struct {
    name: cstring,
    signature: cstring,
    types: ^[^]interface,
}
list :: struct {
    prev: ^list,
    next: ^list,
}
fixed_t :: i32
argument :: struct #raw_union {i: i32, u: u32, f: fixed_t, s: cstring, o: ^object, n: u32, a: ^array, h: i32, }
dispatcher_func_t :: #type proc "c" (user_data: rawptr, target: rawptr, opcode: u32, msg: ^message, args: [^]argument) -> i32
log_func_t :: #type proc "c" (fmt: cstring, args: rawptr)
iterator_result :: enum u32 {WL_ITERATOR_STOP = 0, WL_ITERATOR_CONTINUE = 1, }

foreign import util_runic "system:wayland-client"

@(default_calling_convention = "c")
foreign util_runic {
    @(link_name = "wl_list_init")
    list_init :: proc(list_p: ^list) ---

    @(link_name = "wl_list_insert")
    list_insert :: proc(list_p: ^list, elm: ^list) ---

    @(link_name = "wl_list_remove")
    list_remove :: proc(elm: ^list) ---

    @(link_name = "wl_list_length")
    list_length :: proc(list_p: ^list) -> i32 ---

    @(link_name = "wl_list_empty")
    list_empty :: proc(list_p: ^list) -> i32 ---

    @(link_name = "wl_list_insert_list")
    list_insert_list :: proc(list_p: ^list, other: ^list) ---

    @(link_name = "wl_array_init")
    array_init :: proc(array_p: ^array) ---

    @(link_name = "wl_array_release")
    array_release :: proc(array_p: ^array) ---

    @(link_name = "wl_array_copy")
    array_copy :: proc(array_p: ^array, source: ^array) -> i32 ---

}

when (ODIN_ARCH == .amd64) || (ODIN_ARCH == .arm64) {

array :: struct {
    size: u64,
    alloc: u64,
    data: rawptr,
}

@(default_calling_convention = "c")
foreign util_runic {
    @(link_name = "wl_array_add")
    array_add :: proc(array_p: ^array, size: u64) -> rawptr ---

}

}

when (ODIN_ARCH == .i386) || (ODIN_ARCH == .arm32) {

array :: struct {
    size: u32,
    alloc: u32,
    data: rawptr,
}

@(default_calling_convention = "c")
foreign util_runic {
    @(link_name = "wl_array_add")
    array_add :: proc(array_p: ^array, size: u32) -> rawptr ---

}

}

