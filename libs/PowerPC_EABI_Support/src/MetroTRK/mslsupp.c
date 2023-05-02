#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_files.h"
#include "PowerPC_EABI_Support/MetroTRK/target_options.h"
#include "PowerPC_EABI_Support/MetroTRK/targsupp.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

DSIOResult __read_file(__file_handle, char*, size_t*, __ref_con);
DSIOResult __write_file(__file_handle, char*, size_t*, __ref_con);
DSIOResult __access_file(__file_handle, char*, size_t*, __ref_con, MessageCommandID);


DSIOResult __read_console(__file_handle handle, char* buf, size_t* count, __ref_con ref_con){
    if(GetUseSerialIO() == 0) return 1;
    return __read_file(0, buf, count, ref_con);
}

DSIOResult __TRK_write_console(__file_handle handle, char* buf, size_t* count, __ref_con ref_con){
    if(GetUseSerialIO() == 0) return 1;
    return __write_file(1, buf, count, ref_con);
}

DSIOResult __read_file(__file_handle handle, char* buf, size_t* count, __ref_con ref_con){
    return __access_file(handle, buf, count, ref_con, kDSReadFile);
}

DSIOResult __write_file(__file_handle handle, char* buf, size_t* count, __ref_con ref_con){
    return __access_file(handle, buf, count, ref_con, kDSWriteFile);
}

//unused
DSIOResult __open_file(){
}

//unused
DSIOResult __close_file(){
}

//unused
int __position_file(){
}

//unused
int convertFileMode(){
}

DSIOResult __access_file(__file_handle handle, char* buf, size_t* count, __ref_con ref_con, MessageCommandID id){
    size_t countTemp;

    if(!GetTRKConnected()) return kDSIOError;

    countTemp = *count;
    u32 r0 = TRKAccessFile(id, handle, &countTemp, buf);
    *count = countTemp;

    switch((u8)r0){
        case kDSIONoError:
            return kDSIONoError;
        case kDSIOEOF:
            return kDSIOEOF;
        default:
            return kDSIOError;
    }
}

//unused
int __open_temp_file(){
}
