#include "monolib/device/CDeviceClock.hpp"
#include "monolib/device/CDeviceRemotePad.hpp"
#include "monolib/MemManager.hpp"
#include "string.h"


CDeviceClock* CDeviceClock::instance;

CDeviceClock::CDeviceClock(const char* name, CWorkThread* workThread) : CDeviceBase(name,workThread,0) {
	unk1F0 = 0;
	unk1F8 = 0;
	unk200 = 0;
	unk208 = 0;
	instance = this;
	memset((void*)&cal, 0, sizeof(OSCalendarTime));
	unk1F0 = getTimeNow();
	unk1C8 |= 1;
	unk1CC.initList(16, unk54);
}

CDeviceClock::~CDeviceClock(){
	instance = nullptr;
}

CDeviceClock* CDeviceClock::getInstance(){
	return instance;
}

bool CDeviceClock::func_8044DEE0(){
	return instance->CWorkThread_inline2();
}

s64 CDeviceClock::getTimeNow(){
	return OSGetTime();
}

void CDeviceClock::func_8044DF8C(){
	s64 time = getTimeNow();
	instance->unk200 = time;
	_reslist_node<IDeviceClockFrame*>* curNode = *instance->unk1CC.unk4;
	while((u32)curNode != (u32)instance->unk1CC.unk4){
		curNode->item->virtualFunc2();
		curNode = curNode->next;
	}
}

void CDeviceClock::func_8044DFF4(){
	s64 time = getTimeNow();
	instance->unk208 = time - instance->unk200;
	_reslist_node<IDeviceClockFrame*>* curNode = *instance->unk1CC.unk4;
	while((u32)curNode != (u32)instance->unk1CC.unk4){
		curNode->item->virtualFunc3();
		curNode = curNode->next;
	}
}

void CDeviceClock::wkUpdate(){
	unk1F8 = getTimeNow();
	OSTicksToCalendarTime(unk1F8, &cal);
}

bool CDeviceClock::WorkThreadEvent4(){
	func_80447598();
	CWorkThread::WorkThreadEvent4(); //Call base
}

