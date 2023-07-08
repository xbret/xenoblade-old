#include "PowerPC_EABI_Support/MetroTRK/msg.h"

TRKPacketSeq gPacketSeq;

DSError TRK_MessageSend(MessageBuffer* msg)
{
    u16 val = gPacketSeq.unk0;
    if(val == 0) val = 1;
    *(u16*)(msg->mBuffer + 2) = val;
    gPacketSeq.unk0 = (val & 0xFFFF) + 1;

	u32 write_val = TRKWriteUARTN(&msg->mMsg, msg->mMsgLength);
	if(write_val != 0) OSReport("MetroTRK - TRK_WriteUARTN returned %ld\n", write_val);
	return 0;
}
