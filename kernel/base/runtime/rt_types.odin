
package runtime

@builtin Maybe :: union($T: typeid) {T}

Raw_String :: struct {
    data: [^]byte,
    len:  int,
}

Raw_Slice :: struct {
    data: rawptr,
    len:  int,
}

Raw_Dynamic_Array :: struct {
    data:      rawptr,
    len:       int,
    cap:       int,
    allocator: Allocator,
}

Raw_Map :: struct {
    data:      uintptr,
    len:       uintptr,
    allocator: Allocator,
}

Raw_Any :: struct {
    data: rawptr,
    id:   typeid,
}

Raw_Cstring :: struct {
    data: [^]byte,
}

Raw_Soa_Pointer :: struct {
    data:  rawptr,
    index: int,
}

Type_Info_Bit_Field :: struct {
    backing_type: ^Type_Info,
    names:        [^]string     `fmt:"v,field_count"`,
    types:        [^]^Type_Info `fmt:"v,field_count"`,
    bit_sizes:    [^]uintptr    `fmt:"v,field_count"`,
    bit_offsets:  [^]uintptr    `fmt:"v,field_count"`,
    tags:         [^]string     `fmt:"v,field_count"`,
    field_count:  int,
}
