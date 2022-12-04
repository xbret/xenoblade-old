.include "macros.inc"

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global lbl_80543E18
lbl_80543E18:
	.asciz "getbuf: Size is zero"
	.balign 4


.global lbl_80543E30
lbl_80543E30:
	.asciz "getbuf: Size is too big"
	.asciz "Free - Buf Corrupted"
	.balign 4
	.asciz "Freeing Linked Buf"
	.balign 4
	.asciz "Bad Buf QId"
	.asciz "Sending to unknown dest"
	.asciz "Send - Buffer corrupted"
	.asciz "Send - buffer linked"
	.balign 4


.global lbl_80543EC8
lbl_80543EC8:
	.asciz "Enqueue - Buffer corrupted"
	.balign 4


.global lbl_80543EE4
lbl_80543EE4:
	.asciz "Eneueue - buf already linked"
	.balign 4


.global lbl_80543F04
lbl_80543F04:
	.asciz "Eneueue head - buf already linked"
	.balign 4
	.asciz "GKI_get_buf_start:: bad addr"
	.balign 4


.global lbl_80543F48
lbl_80543F48:
	.asciz "Deleting bad pool"
	.balign 4
	.4byte 0
.global lbl_80543F60
lbl_80543F60:
	.asciz "HCIS: Unable to allocate buffer for incoming HCI message."
	.balign 4


.global lbl_80543F9C
lbl_80543F9C:
	.asciz "HCIS: Invalid length for incoming HCI message."
	.balign 4
	.4byte 0


.global lbl_80543FD0
lbl_80543FD0:
	.asciz "BTA got event 0x%x"
	.balign 4


.global lbl_80543FE4
lbl_80543FE4:
	.asciz "BTA got unregistered event id %d"
	.balign 4


.global lbl_80544008
lbl_80544008:
	.asciz " bta_dm_disable_timer_cback  "
	.balign 4


.global lbl_80544028
lbl_80544028:
	.asciz " bta_dm_search_timer_cback  "
	.balign 4


.global lbl_80544048
lbl_80544048:
	.asciz " bta_dm_pin_cback() -> Failed to start Remote Name Request  "
	.balign 4


.global lbl_80544088
lbl_80544088:
	.asciz " timer stopped  "
	.balign 4


.global lbl_8054409C
lbl_8054409C:
	.asciz "bta_dm_l2cap_server_compress_cback, BTA ID %d"
	.balign 4


.global lbl_805440CC
lbl_805440CC:
	.asciz "bta_dm_compress_cback open app_id %d, BTA id %d, state %d"
	.balign 4


.global lbl_80544108
lbl_80544108:
	.asciz "bta_dm_compress_cback close app_id %d, BTA id %d, state %d"
	.balign 4
	.4byte 0


.global lbl_80544148
lbl_80544148:
	.asciz "bta_dm_act no more connected service cbs"
	.balign 4


.global lbl_80544174
lbl_80544174:
	.asciz "bta_dm_act no more pm timers"
	.balign 4
	.4byte 0


.global lbl_80544198
lbl_80544198:
	.asciz "bta_hh_sdp_cback: p_cb: %d result 0x%02x,                             attr_mask 0x%02x"
	.balign 4


.global lbl_805441F0
lbl_805441F0:
	.asciz "bta_hh_start_sdp:: skip SDP for known devices"
	.balign 4


.global lbl_80544220
lbl_80544220:
	.asciz "bta_hh_start_sdp:  HID_HostGetSDPRecord failed:                 Status 0x%2X"
	.balign 4


.global lbl_80544270
lbl_80544270:
	.asciz "bta_hh_sdp_cmpl:  status 0x%2X"
	.balign 4


.global lbl_80544290
lbl_80544290:
	.asciz "bta_hh_sdp_cmpl:  HID_HostOpenDev failed:                     Status 0x%2X"
	.balign 4


.global lbl_805442DC
lbl_805442DC:
	.asciz "bta_hh_open_act:  Device[%d] connected"
	.balign 4
	.asciz "BTA_HH_GET_RPT_EVT"
	.balign 4
	.asciz "BTA_HH_SET_RPT_EVT"
	.balign 4
	.asciz "BTA_HH_GET_PROTO_EVT"
	.balign 4
	.asciz "BTA_HH_SET_PROTO_EVT"
	.balign 4
	.asciz "BTA_HH_GET_IDLE_EVT"
	.asciz "BTA_HH_SET_IDLE_EVT"
	.4byte 0
	.asciz "BTA_HH_OPEN_EVT"
	.asciz "Unknown event"
	.balign 4
	.asciz "HANDSHAKE received for: event = %s data= %d"
	.asciz "unknown transaction type"
	.balign 4


.global lbl_805443F0
lbl_805443F0:
	# ROM: 0x5404F0
	.4byte lbl_802E2CF8
	.4byte lbl_802E2CF8
	.4byte lbl_802E2C8C
	.4byte lbl_802E2CF8
	.4byte lbl_802E2B9C
	.4byte lbl_802E2C1C
	.4byte lbl_802E2B9C
	.4byte lbl_802E2C1C
	.4byte lbl_802E2B9C
	.4byte lbl_802E2C1C


.global lbl_80544418
lbl_80544418:
	# ROM: 0x540518
	.4byte lbl_802E2B64
	.4byte lbl_802E2B64
	.4byte lbl_802E2B5C
	.4byte lbl_802E2B64
	.4byte lbl_802E2B2C
	.4byte lbl_802E2B34
	.4byte lbl_802E2B3C
	.4byte lbl_802E2B44
	.4byte lbl_802E2B4C
	.4byte lbl_802E2B54

	
	.asciz "Ctrl DATA received w4: event[%s]"
	.balign 4
	.asciz "invalid  transaction type for DATA payload: 4_evt[%s]"
	.balign 4


.global lbl_8054449C
lbl_8054449C:
	# ROM: 0x54059C
	.4byte lbl_802E2EBC
	.4byte lbl_802E2EBC
	.4byte lbl_802E2EB4
	.4byte lbl_802E2EBC
	.4byte lbl_802E2E84
	.4byte lbl_802E2E8C
	.4byte lbl_802E2E94
	.4byte lbl_802E2E9C
	.4byte lbl_802E2EA4
	.4byte lbl_802E2EAC


.global lbl_805444C4
lbl_805444C4:
	# ROM: 0x5405C4
	.4byte lbl_802E2DD8
	.4byte lbl_802E2DD8
	.4byte lbl_802E2DD0
	.4byte lbl_802E2DD8
	.4byte lbl_802E2DA0
	.4byte lbl_802E2DA8
	.4byte lbl_802E2DB0
	.4byte lbl_802E2DB8
	.4byte lbl_802E2DC0
	.4byte lbl_802E2DC8
	.4byte 0


.global lbl_805444F0
lbl_805444F0:
	.asciz "invalid command"


.global lbl_80544500
lbl_80544500:
	.asciz "HID_HostWriteDev Error %d"
	.balign 4


.global lbl_8054451C
lbl_8054451C:
	.asciz "bta_hh_write_dev_act:: cmd type = %d"
	.balign 4
	.asciz "HID_HDEV_EVT_OPEN"
	.balign 4
	.asciz "HID_HDEV_EVT_CLOSE"
	.balign 4
	.asciz "HID_HDEV_EVT_RETRYING"
	.balign 4
	.asciz "HID_HDEV_EVT_INTR_DATA"
	.balign 4
	.asciz "HID_HDEV_EVT_INTR_DATC"
	.balign 4
	.asciz "HID_HDEV_EVT_CTRL_DATA"
	.balign 4
	.asciz "HID_HDEV_EVT_CTRL_DATC"
	.balign 4
	.asciz "HID_HDEV_EVT_HANDSHAKE"
	.balign 4
	.asciz "HID_HDEV_EVT_VC_UNPLUG"
	.balign 4
	.asciz "Unknown HID event"
	.balign 4
	.asciz "bta_hh_cback::HID_event [%s]"
	.balign 4


.global lbl_80544648
lbl_80544648:
	# ROM: 0x540748
	.4byte lbl_802E3674
	.4byte lbl_802E367C
	.4byte lbl_802E37E0
	.4byte lbl_802E3684
	.4byte lbl_802E369C
	.4byte lbl_802E3694
	.4byte lbl_802E369C
	.4byte lbl_802E368C
	.4byte lbl_802E36A8


.global lbl_8054466C
lbl_8054466C:
	# ROM: 0x54076C
	.4byte lbl_802E35FC
	.4byte lbl_802E3604
	.4byte lbl_802E360C
	.4byte lbl_802E3614
	.4byte lbl_802E361C
	.4byte lbl_802E3624
	.4byte lbl_802E362C
	.4byte lbl_802E3634
	.4byte lbl_802E363C


.global lbl_80544690
lbl_80544690:
	.asciz "No resource to send HID host Connect request."
	.balign 4


.global lbl_805446C0
lbl_805446C0:
	.asciz "wrong device handle: [%d]"
	.balign 4
	.asciz "BTA_HH_NULL_ST"
	.balign 4
	.asciz "BTA_HH_IDLE_ST"
	.balign 4
	.asciz "BTA_HH_W4_CONN_ST"
	.balign 4
	.asciz "BTA_HH_CONN_ST"
	.balign 4
	.asciz "unknown HID Host state"
	.balign 4
	.asciz "bta_hh_sm_execute: State 0x%02x [%s], Event [%s]"
	.balign 4
	.asciz "HH State Change: [%s] -> [%s] after Event [%s]"
	.balign 4


.global lbl_8054479C
lbl_8054479C:
	.asciz "bta_hh_hdl_event:: handle = %d dev_cb[%d] "
	.balign 4
	.asciz "BTA_HH_API_DISABLE_EVT"
	.balign 4
	.asciz "BTA_HH_API_ENABLE_EVT"
	.balign 4
	.asciz "BTA_HH_API_OPEN_EVT"
	.asciz "BTA_HH_API_CLOSE_EVT"
	.balign 4
	.asciz "BTA_HH_INT_OPEN_EVT"
	.asciz "BTA_HH_INT_CLOSE_EVT"
	.balign 4
	.asciz "BTA_HH_INT_HANDSK_EVT"
	.balign 4
	.asciz "BTA_HH_INT_DATA_EVT"
	.asciz "BTA_HH_INT_CTRL_DATA"
	.balign 4
	.asciz "BTA_HH_API_WRITE_DEV_EVT"
	.balign 4
	.asciz "BTA_HH_SDP_CMPL_EVT"
	.asciz "BTA_HH_DISC_CMPL_EVT"
	.balign 4
	.asciz "BTA_HH_API_MAINT_DEV_EVT"
	.balign 4
	.asciz "BTA_HH_API_GET_DSCP_EVT"
	.asciz "BTA_HH_OPEN_CMPL_EVT"
	.balign 4
	.asciz "BTA_HH_API_GET_ACL_Q_EVT"
	.balign 4
	.asciz "unknown HID Host event code"


.global lbl_80544960
lbl_80544960:
	# ROM: 0x540A60
	.4byte lbl_802E40DC
	.4byte lbl_802E40E4
	.4byte lbl_802E40EC
	.4byte lbl_802E40F4
	.4byte lbl_802E4104
	.4byte lbl_802E410C
	.4byte lbl_802E40FC
	.4byte lbl_802E411C
	.4byte lbl_802E4114
	.4byte lbl_802E4134
	.4byte lbl_802E412C
	.4byte lbl_802E413C
	.4byte lbl_802E40D4
	.4byte lbl_802E40CC
	.4byte lbl_802E4144
	.4byte lbl_802E4124


.global lbl_805449A0
lbl_805449A0:
	.asciz "found kdev_cb[%d] hid_handle = %d "
	.balign 4
	.asciz "in_use ? [%d] kdev[%d].hid_handle = %d state = [%d]"
	.asciz "bta_hh_find_cb:: index = %d while max = %d"
	.balign 4


.global lbl_80544A24
lbl_80544A24:
	.asciz "subclass = 0x%2x"
	.balign 4
	.asciz "bta_hh_parse_keybd_rpt:  (report=%p, report_len=%d) called"
	.balign 4
	.4byte 0
	.asciz "Alt key pressed"
	.asciz "Alt key not pressed"
	.asciz "this_char = %02x"
	.balign 4
	.asciz "BTA_HhParseKeybdRpt:  Cannot interpret scan code                 0x%02x"
	.asciz "bta_hh_parse_mice_rpt:  bta_keybd_rpt_rcvd(report=%p,                 report_len=%d) called"
	.asciz "mice button: 0x%2x"
	.balign 4
	.asciz "mice move: x = %d y = %d"
	.balign 4
	.asciz "bta_hh_trace_dev_db:: Device DB list********************"
	.balign 4
	.asciz "kdev[%d] in_use[%d]  handle[%d] "
	.balign 4
	.asciz "\t\t\t attr_mask[%04x] state [%d] sub_class[%02x] index = %d"
	.balign 4
	.asciz "*********************************************************"
	.balign 4
	.4byte 0


.global lbl_80544C60
lbl_80544C60:
	.asciz "Duplicate btm_acl_created: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4


.global lbl_80544CA0
lbl_80544CA0:
	.asciz "SetPacketType Mask -> 0x%04x"
	.balign 4


.global lbl_80544CC0
lbl_80544CC0:
	.asciz "Role change request declined since the previous request for this device is not completed "
	.balign 4
	.asciz "BTM_SetLinkPolicy switch not supported (settings: 0x%04x)"
	.balign 4
	.asciz "BTM_SetLinkPolicy hold not supported (settings: 0x%04x)"
	.asciz "BTM_SetLinkPolicy sniff not supported (settings: 0x%04x)"
	.balign 4
	.4byte 0
	.asciz "BTM_SetLinkPolicy park not supported (settings: 0x%04x)"
	.asciz "BTM_ReadLinkPolicy: RemBdAddr: %02x%02x%02x%02x%02x%02x"


.global lbl_80544E40
lbl_80544E40:
	.asciz "BTM_ReadClockOffset: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4


.global lbl_80544E7C
lbl_80544E7C:
	.asciz "Role Switch Event: new_role 0x%02x, HCI Status 0x%02x"
	.balign 4
	.asciz "BTM_SetQoS: BdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4


.global lbl_80544EE4
lbl_80544EE4:
	.asciz "BTM: p_flow->delay_variation: 0x%02x"
	.balign 4


.global lbl_80544F0C
lbl_80544F0C:
	.asciz "BTM_ReadRSSI: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4


.global lbl_80544F40
lbl_80544F40:
	.asciz "BTM_ReadLinkQuality: RemBdAddr: %02x%02x%02x%02x%02x%02x"
	.balign 4


.global lbl_80544F7C
lbl_80544F7C:
	.asciz "BTM RSSI Complete: rssi %d, hci status 0x%02x"
	.balign 4


.global lbl_80544FAC
lbl_80544FAC:
	.asciz "BTM Link Quality Complete: Link Quality %d, hci status 0x%02x"
	.balign 4
	.asciz "btm BEFORE SCO setting to 1 slot; hci hdl 0x%x"
	.balign 4
	.asciz "btm last SCO removed; unsniffing hci hdl 0x%x"
	.balign 4
	.asciz "btm last SCO removed; hci hdl 0x%x, types 0x%02x"
	.balign 4


.global lbl_80545080
lbl_80545080:
	.asciz "BTM_SetAfhChannels first: %d (%d) last: %d (%d)"


.global lbl_805450B0
lbl_805450B0:
	.asciz "btm_reset_complete"
	.balign 4
	.asciz "Local supported ACL packet types: 0x%04x"
	.balign 4
	.asciz "Local supported SCO packet types: 0x%04x"
	.balign 4


.global lbl_8054511C
lbl_8054511C:
	.asciz "BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i."
	.balign 4


.global lbl_8054515C
lbl_8054515C:
	.asciz "BTM: Unable to send vendor specific command (controller is busy)."
	.balign 4


.global lbl_805451A0
lbl_805451A0:
	.asciz "BTM Event: Received a vendor specific event from controller"
	.4byte 0


.global lbl_805451E0
lbl_805451E0:
	.asciz "BTM: BTM_WritePageTimeout: Timeout: %d."
	.asciz "BTM: BTM_WriteVoiceSettings: Settings: 0x%04x."
	.balign 4
	.asciz "BTM: BTM_EnableTestMode"


.global lbl_80545250
lbl_80545250:
	.asciz "BTM: BTM_ReadStoredLinkKey: Read_All: %s"
	.balign 4


.global lbl_8054527C
lbl_8054527C:
	.asciz "BTM: BTM_WriteStoredLinkKey: num_keys: %d"
	.balign 4


.global lbl_805452A8
lbl_805452A8:
	.asciz "BTM: BTM_DeleteStoredLinkKey: delete_all_flag: %s"
	.balign 4
	.4byte 0


.global lbl_805452E0
lbl_805452E0:
	.asciz "BTM_SetDiscoverability: mode %d [NonDisc-0, Lim-1, Gen-2], window 0x%04x, interval 0x%04x"
	.balign 4


.global lbl_8054533C
lbl_8054533C:
	.asciz "BTM_SetConnectability: mode %d [NonConn-0, Conn-1], window 0x%04x, interval 0x%04x"
	.balign 4


.global lbl_80545390
lbl_80545390:
	.asciz "BTM_CancelInquiry called"
	.balign 4


.global lbl_805453AC
lbl_805453AC:
	.asciz "BTM_StartInquiry: mode: %d, dur: %d, rsps: %d, flt: %d"
	.balign 4


.global lbl_805453E4
lbl_805453E4:
	.asciz "BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]"
	.balign 4


.global lbl_80545424
lbl_80545424:
	.asciz "BTM_CancelRemoteDeviceName()"
	.balign 4


.global lbl_80545444
lbl_80545444:
	.asciz "BTM_InqDbRead: bd addr [%02x%02x%02x%02x%02x%02x]"
	.balign 4


.global lbl_80545478
lbl_80545478:
	.asciz "BTM Warning: Set Event Filter Failed (HCI returned 0x%x)"
	.balign 4


.global lbl_805454B4
lbl_805454B4:
	.asciz "BTM Inq Compl Callback: status 0x%02x, num results %d"
	.balign 4
	.4byte 0


.global lbl_805454F0
lbl_805454F0:
	.asciz "btm mode change AFTER unsniffing; hci hdl 0x%x, types 0x%02x"
	.balign 4


.global lbl_80545530
lbl_80545530:
	.asciz "btm_esco_conn_rsp -> No Resources"
	.balign 4
	.asciz "TCS accept SCO: Packet Types 0x%04x"
	.asciz "BTM_CreateSco -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"

.global lbl_805455BC
lbl_805455BC:
	.asciz "      txbw 0x%x, rxbw 0x%x, lat 0x%x, voice 0x%x, retrans 0x%02x, pkt 0x%04x"
	.balign 4

.global lbl_8054560C
lbl_8054560C:
	.asciz "btm_sco_chk_pend_unpark -> (e)SCO Link for ACL handle 0x%04x, Desired Type %d"
	.balign 4


.global lbl_8054565C
lbl_8054565C:
	.asciz "btm_sco_conn_req: No one wants this SCO connection; rejecting it"
	.balign 4
	.asciz "BTM_SetEScoMode -> mode %d"
	.balign 4
	.asciz "BTM_SetEScoMode -> mode SCO (eSCO not supported)"
	.balign 4
	.asciz "    txbw 0x%08x, rxbw 0x%08x, max_lat 0x%04x, voice 0x%04x, pkt 0x%04x, rtx effort 0x%02x"
	.balign 4
	.4byte 0
	.asciz "BTM_ReadEScoLinkParms -> sco_inx 0x%04x"
	.asciz "BTM_ChangeEScoLinkParms -> SCO Link for handle 0x%04x, pkt 0x%04x"
	.balign 4
	.asciz "BTM_ChangeEScoLinkParms -> eSCO Link for handle 0x%04x"
	.balign 4


.global lbl_805457F4
lbl_805457F4:
	.asciz "btm_esco_proc_conn_chg -> handle 0x%04x, status 0x%02x"
	.balign 4
	.4byte 0


.global lbl_80545830
lbl_80545830:
	.asciz "BTM_Sec: application registered"
	.asciz "BTM_SetSecurityMode: mode:%d"
	.balign 4
	.asciz "BTM_SetSecurityMode: Authen Enable -> FALSE"
	.asciz "BTM_SetSecurityMode: Authen Enable -> TRUE"
	.balign 4


.global lbl_805458C8
lbl_805458C8:
	.asciz "BTM_SetPinType: pin type %d [variable-0, fixed-1], code %s, length %d"
	.balign 4
	.asciz "BTM_SEC_REG[%d]: id %d, is_orig %d, psm 0x%04x, proto_id %d, chan_id %d"
	.asciz "               : sec: 0x%x, service name [%s] (up to %d chars saved)"
	.balign 4
	.asciz "BTM_SEC_REG: Out of Service Records (%d)"
	.balign 4
	.4byte 0


.global lbl_805459D0
lbl_805459D0:
	.asciz "Security Manager: Attempting Authorization of Unknown Device Address [%02x%02x%02x%02x%02x%02x]"


.global lbl_80545A30
lbl_80545A30:
	.asciz "Security Manager: authorized status:%d State:%d"
	.asciz "BTM_SecBond BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.balign 4
	.asciz "BTM_SecBond: Illegal Pin len:%d"
	.asciz "BTM_SecBond: no device block"
	.balign 4
	.asciz "BTM_SecBond -> Already Paired"
	.balign 4
	.asciz "BTM_SecBond: Authen Enable -> TRUE"
	.balign 4
	.asciz "BTM_SecBond: no buffer"
	.balign 4


.global lbl_80545B2C
lbl_80545B2C:
	.asciz "btm_restore_mode: Authen Enable -> %d"
	.balign 4
	.asciz "Security Manager: BTM_SetEncryption not connected"
	.balign 4
	.asciz "Security Manager: BTM_SetEncryption already encrypted"
	.balign 4
	.asciz "Security Manager: BTM_SetEncryption busy"
	.balign 4
	.4byte 0
	.asciz "Security Manager: BTM_SetEncryption Handle:%d State:%d Flags:0x%x Required:0x%x"
	.asciz "Security Manager: l2cap_access_req PSM:%d no resources"
	.balign 4
	.asciz "Security Manager: l2cap_access_req PSM:%d no application registerd"
	.balign 4
	.asciz "Security Manager: l2cap_access_req PSM:%d postponed for multiplexer"
	.asciz "Security Manager: l2cap_access_req PSM:%d Handle:%d State:%d Flags:0x%x Required:0x%x"
	.balign 4
	.asciz "Security Manager: trusted:0x%04x%04x Flags:0x%x"


.global lbl_80545D88
lbl_80545D88:
	.asciz "Security Manager: MX service not found PSM:%d Proto:%d SCN:%d"
	.balign 4


.global lbl_80545DC8
lbl_80545DC8:
	.asciz "Security Manager: connect request from not paired device"
	.balign 4


.global lbl_80545E04
lbl_80545E04:
	.asciz "Security Manager: rmt_name_complete status:%d State:%d"
	.balign 4


.global lbl_80545E3C
lbl_80545E3C:
	.asciz "Security Manager: auth_complete status:%d State:%d"
	.balign 4


.global lbl_80545E70
lbl_80545E70:
	.asciz "Security Manager: mkey comp status:%d State:%d"
	.balign 4


.global lbl_80545EA0
lbl_80545EA0:
	.asciz "Security Manager: encrypt_change status:%d State:%d"


.global lbl_80545ED4
lbl_80545ED4:
	.asciz "Security Manager: btm_sec_connected handle:%d status:%d enc_mode:%d"


.global lbl_80545F18
lbl_80545F18:
	.asciz "btm_sec_link_key_notification()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"


.global lbl_80545F5C
lbl_80545F5C:
	.asciz "                                TYPE: %d"
	.balign 4


.global lbl_80545F88
lbl_80545F88:
	.asciz "btm_sec_link_key_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.balign 4


.global lbl_80545FC8
lbl_80545FC8:
	.asciz "btm_sec_pin_code_request_timeout()"
	.balign 4
	.asciz "btm_sec_pin_code_request()  BDA: %02x:%02x:%02x:%02x:%02x:%02x"
	.balign 4
	.asciz "btm_sec_pin_code_request bonding sending reply"
	.balign 4
	.asciz "btm_sec_pin_code_request: Authen Enable -> %d"
	.balign 4
	.asciz "btm_sec_pin_code_request(): Pairing disabled:%d; PIN callback:%x, Dev Rec:%x!"
	.balign 4
	.asciz "btm_sec_execute_procedure: Required:0x%x Flags:0x%x State:%d"
	.balign 4
	.asciz "L2CAP - no LCB for L2CA_conn_req"
	.balign 4
	.asciz "Security Manager: Start get name"
	.balign 4
	.asciz "Security Manager: Start authentication"
	.balign 4
	.asciz "Security Manager: Start encryption"
	.balign 4
	.asciz "Security Manager: Start authorization"
	.balign 4
	.asciz "Security Manager: trusted:0x%04x%04x"
	.balign 4
	.asciz "Security Manager: access granted"
	.balign 4


.global lbl_80546224
lbl_80546224:
	.asciz "btm_sec_collision_timeout()"


.global lbl_80546240
lbl_80546240:
	.asciz "Ctlr H/w error event"
	.balign 4


.global lbl_80546258
lbl_80546258:
	.asciz "Event mismatch opcode=%X cmd opcode=%X"
	.balign 4


.global lbl_80546280
lbl_80546280:
	.asciz "Cmd timeout; no cmd in queue"
	.balign 4


.global lbl_805462A0
lbl_805462A0:
	.asciz "BTU HCI command timeout - cmd opcode = 0x%02x"
	.balign 4


.global lbl_805462D0
lbl_805462D0:
	.asciz "WARNING: GAP Conn Indication for Unexpected Bd Addr...Disconnecting"


.global lbl_80546314
lbl_80546314:
	.asciz "GAP_CONN - Rcvd L2CAP conn ind, CID: 0x%x"
	.balign 4


.global lbl_80546340
lbl_80546340:
	.asciz "GAP_CONN - Rcvd L2CAP disc, CID: 0x%x"
	.balign 4


.global lbl_80546368
lbl_80546368:
	.asciz "GAP_CONN - Rcvd L2CAP Is Congested (%d), CID: 0x%x"
	.balign 4
	.4byte 0


.global lbl_805463A0
lbl_805463A0:
	.asciz "   GAP Inquiry Complete Event (Status 0x%04x, Result(s) %d)"
	.asciz "   GAP Discovery Complete Event(SDP Result: 0x%04x)"
	.asciz "   GAP Discovery Successfully Completed"
	.asciz "   GAP Remote Name Complete Event (status 0x%04x)"
	.balign 4


.global lbl_8054646C
lbl_8054646C:
	# ROM: 0x54256C
	.4byte lbl_802F09CC
	.4byte lbl_802F09D4
	.4byte lbl_802F09DC
	.4byte lbl_802F0A04
	.4byte lbl_802F09E4
	.4byte lbl_802F09E4
	.4byte lbl_802F09EC
	.4byte lbl_802F09F4
	.4byte lbl_802F09FC
	.asciz "GAP Inquiry Results Callback (bdaddr [%02x%02x%02x%02x%02x%02x])"
	.balign 4
	.asciz "                             (COD [%02x%02x%02x], clkoff 0x%04x)"
	.balign 4


.global lbl_80546518
lbl_80546518:
	.asciz "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x, Name [%s])"


.global lbl_8054655C
lbl_8054655C:
	.asciz "   GAP: FindAddrByName Rem Name Cmpl Evt (Status 0x%04x)"
	.balign 4


.global lbl_80546598
lbl_80546598:
	# ROM: 0x542698
	.4byte lbl_802F0C24
	.4byte lbl_802F0C2C
	.4byte lbl_802F0C34
	.4byte lbl_802F0C5C
	.4byte lbl_802F0C3C
	.4byte lbl_802F0C3C
	.4byte lbl_802F0C44
	.4byte lbl_802F0C4C
	.4byte lbl_802F0C54


.global lbl_805465BC
lbl_805465BC:
	# ROM: 0x5426BC
	.4byte lbl_802F0B8C
	.4byte lbl_802F0B94
	.4byte lbl_802F0B9C
	.4byte lbl_802F0BC4
	.4byte lbl_802F0BA4
	.4byte lbl_802F0BA4
	.4byte lbl_802F0BAC
	.4byte lbl_802F0BB4
	.4byte lbl_802F0BBC


.global lbl_805465E0
lbl_805465E0:
	.asciz "   GAP: FindAddrByName Inq Cmpl Evt (Status 0x%04x, Result(s) %d)"
	.balign 4


.global lbl_80546624
lbl_80546624:
	# ROM: 0x542724
	.4byte lbl_802F0DD8
	.4byte lbl_802F0DE0
	.4byte lbl_802F0DE8
	.4byte lbl_802F0E10
	.4byte lbl_802F0DF0
	.4byte lbl_802F0DF0
	.4byte lbl_802F0DF8
	.4byte lbl_802F0E00
	.4byte lbl_802F0E08


.global lbl_80546648
lbl_80546648:
	# ROM: 0x542748
	.4byte lbl_802F0D68
	.4byte lbl_802F0D70
	.4byte lbl_802F0D78
	.4byte lbl_802F0DA0
	.4byte lbl_802F0D80
	.4byte lbl_802F0D80
	.4byte lbl_802F0D88
	.4byte lbl_802F0D90
	.4byte lbl_802F0D98


.global lbl_8054666C
lbl_8054666C:
	# ROM: 0x54276C
	.4byte lbl_802F0E7C
	.4byte lbl_802F0E84
	.4byte lbl_802F0E8C
	.4byte lbl_802F0EB4
	.4byte lbl_802F0E94
	.4byte lbl_802F0E94
	.4byte lbl_802F0E9C
	.4byte lbl_802F0EA4
	.4byte lbl_802F0EAC


.global lbl_80546690
lbl_80546690:
	.asciz "HID - Originate started"


.global lbl_805466A8
lbl_805466A8:
	.asciz "HID - Originate failed"
	.balign 4


.global lbl_805466C0
lbl_805466C0:
	.asciz "hidd_proc_repage_timeout"
	.balign 4
	.4byte 0


.global lbl_805466E0
lbl_805466E0:
	.asciz "HID_ERR_NOT_REGISTERED"
	.balign 4
	.asciz "HID_ERR_INVALID_PARAM"
	.balign 4
	.asciz "HID_ERR_NO_CONNECTION dev_handle %d"
	.asciz "Security Registration 1 failed"
	.balign 4
	.asciz "Security Registration 2 failed"
	.balign 4
	.asciz "Security Registration 3 failed"
	.balign 4
	.asciz "Security Registration 4 failed"
	.balign 4
	.asciz "Security Registration 5 failed"
	.balign 4
	.asciz "Security Registration 6 failed"
	.balign 4
	.4byte 0


.global lbl_805467F8
lbl_805467F8:
	.asciz "HID Control Registration failed"


.global lbl_80546818
lbl_80546818:
	.asciz "HID Interrupt Registration failed"
	.balign 4


.global lbl_8054683C
lbl_8054683C:
	.asciz "HID - disconnect"
	.balign 4
	.asciz "HID - Rcvd L2CAP conn ind, PSM: 0x%04x  CID 0x%x"
	.balign 4
	.asciz "HID - Rcvd INTR L2CAP conn ind, but no CTL channel"
	.balign 4
	.asciz "HID - Rcvd INTR L2CAP conn ind, wrong state: %d"
	.asciz "HID - Rcvd CTL L2CAP conn ind, wrong state: %d"
	.balign 4
	.asciz "HID - Rcvd L2CAP conn ind, sent config req, PSM: 0x%04x  CID 0x%x"
	.balign 4


.global lbl_8054695C
lbl_8054695C:
	.asciz "HID - Originate failed"
	.balign 4
	.4byte 0
	.asciz "HID - Originator security pass."
	.asciz "HID - INTR Originate failed"
	.asciz "HID - Rcvd unexpected conn cnf, CID 0x%x "
	.balign 4
	.asciz "HID - got CTRL conn cnf, sent cfg req, CID: 0x%x"
	.balign 4


.global lbl_80546A14
lbl_80546A14:
	.asciz "HID - Rcvd L2CAP cfg ind, unknown CID: 0x%x"


.global lbl_80546A40
lbl_80546A40:
	.asciz "HID - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.asciz "HID - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.balign 4


.global lbl_80546A98
lbl_80546A98:
	.asciz "HID - Rcvd L2CAP disc, unknown CID: 0x%x"
	.balign 4


.global lbl_80546AC4
lbl_80546AC4:
	.asciz "HID - Rcvd L2CAP disc, CID: 0x%x"
	.balign 4


.global lbl_80546AE8
lbl_80546AE8:
	.asciz "HID - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.balign 4


.global lbl_80546B18
lbl_80546B18:
	.asciz "HID - Rcvd L2CAP disc cfm, CID: 0x%x"
	.balign 4


.global lbl_80546B40
lbl_80546B40:
	.asciz "HID - Rcvd L2CAP congestion status, unknown CID: 0x%x"
	.balign 4


.global lbl_80546B78
lbl_80546B78:
	.asciz "HID - Rcvd L2CAP congestion status, CID: 0x%x  Cong: %d"


.global lbl_80546BB0
lbl_80546BB0:
	.asciz "HID - Rcvd L2CAP data, unknown CID: 0x%x"
	.balign 4
	.4byte 0


.global lbl_80546BE0
lbl_80546BE0:
	.asciz "L2CAP - L2CA_Register() called for PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - no cb registering PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - invalid PSM value, PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - no RCB available, PSM: 0x%04x"
	.balign 4


.global lbl_80546C88
lbl_80546C88:
	.asciz "L2CAP - L2CA_Deregister() called for PSM: 0x%04x"
	.balign 4


.global lbl_80546CBC
lbl_80546CBC:
	.asciz "L2CAP - PSM: 0x%04x not found for deregistration"
	.balign 4
	.asciz "L2CA_ConnectReq()  PSM: 0x%04x"
	.balign 4
	.asciz "L2CA_ConnectReq()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.balign 4
	.asciz "L2CAP connect req - BTU not ready"
	.balign 4
	.asciz "L2CAP - no RCB for L2CA_conn_req, PSM: 0x%04x"
	.balign 4
	.asciz "L2CAP - no LCB for L2CA_conn_req"
	.balign 4
	.asciz "L2CAP API - L2CA_conn_req rejected - link disconnecting"
	.asciz "L2CAP - no CCB for L2CA_conn_req"
	.balign 4
	.asciz "L2CAP - L2CA_conn_req() returned CID: 0x%04x"
	.balign 4
	.asciz "L2CA_ConnectRsp()  CID: 0x%04x  Result: %d  Status: %d"
	.balign 4
	.asciz "L2CA_ConnectRsp()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.balign 4
	.asciz "L2CAP - no LCB for L2CA_conn_rsp"
	.balign 4
	.asciz "L2CAP - no CCB for L2CA_conn_rsp"
	.balign 4
	.asciz "L2CAP - bad id in L2CA_conn_rsp. Exp: %d  Got: %d"
	.balign 4


.global lbl_80546F38
lbl_80546F38:
	.asciz "L2CA_ConfigReq()  CID: 0x%04x"
	.balign 4


.global lbl_80546F58
lbl_80546F58:
	.asciz "L2CAP - no CCB for L2CA_cfg_req, CID: %d"
	.balign 4


.global lbl_80546F84
lbl_80546F84:
	.asciz "L2CA_ConfigRsp()  CID: 0x%04x  Result: %d"
	.balign 4


.global lbl_80546FB0
lbl_80546FB0:
	.asciz "L2CAP - no CCB for L2CA_cfg_rsp, CID: %d"
	.balign 4


.global lbl_80546FDC
lbl_80546FDC:
	.asciz "L2CA_DisconnectReq()  CID: 0x%04x"
	.balign 4


.global lbl_80547000
lbl_80547000:
	.asciz "L2CAP - no CCB for L2CA_disc_req, CID: %d"
	.balign 4


.global lbl_8054702C
lbl_8054702C:
	.asciz "L2CA_DisconnectRsp()  CID: 0x%04x"
	.balign 4


.global lbl_80547050
lbl_80547050:
	.asciz "L2CAP - no CCB for L2CA_disc_rsp, CID: %d"
	.balign 4
	.asciz "L2CA_DataWrite()  CID: 0x%04x  Len: %d"
	.balign 4
	.asciz "L2CAP - no CCB for L2CA_DataWrite, CID: %d"
	.balign 4
	.asciz "L2CAP - cannot send message bigger than peer's mtu size"
	.asciz "L2CA_Ping()  BDA: %02x-%02x-%02x-%02x-%02x-%02x"
	.asciz "L2CAP - no LCB for L2CA_ping"
	.balign 4
	.asciz "L2CAP - rejected second L2CA_ping"
	.balign 4
	.4byte 0
	.asciz "L2CAP - L2CA_ping rejected - link disconnecting"


.global lbl_805471B0
lbl_805471B0:
	.asciz "L2CAP - no CCB for L2CA_SetIdleTimeout, CID: %d"
	.asciz "L2CA_SetAclPriority()  bdaddr: %02x%02x%02x%02x%02x%02x"
	.asciz "L2CAP - no LCB for L2CA_SetAclPriority"
	.balign 4
	.asciz "L2CA_SetCompression() local cid %d, direction %d, pe_type %d, mem_level %d, wbits %d, enable %d"
	.asciz "L2CAP - no CCB for L2CA_Flush, CID: %d"
	.balign 4
	.asciz "L2CA_Flush()  CID: 0x%04x flushed %d buffers"
	.balign 4
	.asciz "L2CA_GetNumQueuedBufs()  CID: 0x%04x  abmormally returning 0"
	.balign 4
	.asciz "L2CA_GetNumQueuedBufs()  CID: 0x%04x  returning %d"
	.balign 4
	.4byte 0


.global lbl_80547370
lbl_80547370:
	# ROM: 0x543470
	.4byte lbl_802F74F4
	.4byte lbl_802F74F8
	.4byte lbl_802F74FC
	.4byte lbl_802F7500
	.4byte lbl_802F7504
	.4byte lbl_802F7508
	.4byte lbl_802F750C
	.4byte lbl_802F7510
	.4byte lbl_802F7514
	.asciz "L2CAP - st: CLOSED evt: %d"
	.balign 4


.global lbl_805473B0
lbl_805473B0:
	.asciz "L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  No Conf Needed"
	.balign 4
	.asciz "L2CAP - Calling ConnectCfm_Cb(), CID: 0x%04x  Status: %d"
	.balign 4

.global lbl_80547430
lbl_80547430:
	# ROM: 0x543530
	.4byte lbl_802F75DC
	.4byte lbl_802F760C
	.4byte lbl_802F7798
	.4byte lbl_802F7598
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7690
	.4byte lbl_802F76B4
	.4byte lbl_802F7798
	.4byte lbl_802F7700
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7784
	.4byte lbl_802F7654
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7790
	.4byte lbl_802F7798
	.4byte lbl_802F7798
	.4byte lbl_802F7784
	.4byte lbl_802F7730
	.asciz "L2CAP - st: ORIG_W4_SEC_COMP evt: %d"
	.balign 4


.global lbl_805474D4
lbl_805474D4:
	# ROM: 0x5435D4
	.4byte lbl_802F7830
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7874
	.4byte lbl_802F78A0
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F78E8
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F78F4
	.4byte lbl_802F7908
	.4byte lbl_802F7908
	.4byte lbl_802F78E8


.global lbl_80547540
lbl_80547540:
	.asciz "L2CAP - st: TERM_W4_SEC_COMP evt: %d"
	.balign 4


.global lbl_80547568
lbl_80547568:
	.asciz "L2CAP - Calling Connect_Ind_Cb(), CID: 0x%04x"
	.balign 4


.global lbl_80547598
lbl_80547598:
	# ROM: 0x543698
	.4byte lbl_802F7990
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F79A8
	.4byte lbl_802F7A10
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A44
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A2C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A38
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A6C
	.4byte lbl_802F7A2C

	#0x80547604
	.asciz "L2CAP - st: W4_L2CAP_CON_RSP evt: %d"
	.balign 4
	.asciz "L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Success"
	.balign 4
	.asciz "L2CAP - Calling Connect_Pnd_Cb()"
	.balign 4
	.asciz "L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Failure Code: %d"
	.asciz "L2CAP - Calling Connect_Cfm_Cb(), CID: 0x%04x, Timeout"
	.balign 4


.global lbl_80547700
lbl_80547700:
	# ROM: 0x543800
	.4byte lbl_802F7B08
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7B54
	.4byte lbl_802F7BB4
	.4byte lbl_802F7C0C
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CAC
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CA0
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CB4
	.4byte lbl_802F7CAC
	.4byte lbl_802F7C54


.global lbl_80547770
lbl_80547770:
	.asciz "L2CAP - st: W4_L2CA_CON_RSP evt: %d"


.global lbl_80547794
lbl_80547794:
	# ROM: 0x543894
	.4byte lbl_802F7D44
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E60
	.4byte lbl_802F7E8C
	.4byte lbl_802F7D8C
	.4byte lbl_802F7DEC
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E6C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E8C
	.4byte lbl_802F7E60
	.4byte lbl_802F7E08
	.asciz "L2CAP - st: CONFIG evt: %d"
	.balign 4
	.asciz "L2CAP - Calling Config_Req_Cb(), CID: 0x%04x"
	.balign 4
	.asciz "L2CAP - Calling Config_Rsp_Cb(), CID: 0x%04x"
	.balign 4
	.asciz "L2CAP - Calling Config_Rsp_Cb(), CID: 0x%04x, Failure: %d"
	.balign 4
	.asciz "L2CAP - Calling Disconnect_Ind_Cb(), CID: 0x%04x  Conf Needed"
	.balign 4
	.asciz "L2CAP - Calling DataInd_Cb(), CID: 0x%04x"
	.balign 4


.global lbl_80547928
lbl_80547928:
	# ROM: 0x543A28
	.4byte lbl_802F7F20
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F7F64
	.4byte lbl_802F7FC8
	.4byte lbl_802F8044
	.4byte lbl_802F8090
	.4byte lbl_802F8254
	.4byte lbl_802F81A4
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F80E8
	.4byte lbl_802F8114
	.4byte lbl_802F8160
	.4byte lbl_802F8180
	.4byte lbl_802F8254
	.4byte lbl_802F8254
	.4byte lbl_802F81E4
	.4byte lbl_802F820C
	.asciz "L2CAP - st: OPEN evt: %d"
	.balign 4


.global lbl_805479B4
lbl_805479B4:
	# ROM: 0x543AB4
	.4byte lbl_802F82E8
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F832C
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F8350
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F83C8
	.4byte lbl_802F84B0
	.4byte lbl_802F8420
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F8478
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F843C
	.4byte lbl_802F84B0
	.4byte lbl_802F84B0
	.4byte lbl_802F8460
	.asciz "L2CAP - st: W4_L2CAP_DISC_RSP evt: %d"
	.balign 4
	.asciz "L2CAP - Calling DisconnectCfm_Cb(), CID: 0x%04x"


.global lbl_80547A78
lbl_80547A78:
	# ROM: 0x543B78
	.4byte lbl_802F8548
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F85D8
	.4byte lbl_802F858C
	.4byte lbl_802F868C
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F8694
	.4byte lbl_802F868C
	.4byte lbl_802F8638


.global lbl_80547AE8
lbl_80547AE8:
	.asciz "L2CAP - st: W4_L2CA_DISC_RSP evt: %d"
	.balign 4


.global lbl_80547B10
lbl_80547B10:
	# ROM: 0x543C10
	.4byte lbl_802F8724
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87E8
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87F0
	.4byte lbl_802F87C8
	.4byte lbl_802F87F0
	.4byte lbl_802F87E8
	.4byte lbl_802F876C
.global lbl_80547B80
lbl_80547B80:
	.asciz "L2CAP - cannot send buffer, offset: %d"
	.balign 4


.global lbl_80547BA8
lbl_80547BA8:
	.asciz "L2CAP failed to allocate LCB"
	.balign 4


.global lbl_80547BC8
lbl_80547BC8:
	.asciz "L2CAP got conn_req while connected"
	.balign 4
	.4byte 0


.global lbl_80547BF0
lbl_80547BF0:
	.asciz "L2CAP got conn_comp for unknown BD_ADDR"


.global lbl_80547C18
lbl_80547C18:
	.asciz "L2CAP got conn_comp in bad state: %d  status: 0x%d"
	.balign 4


.global lbl_80547C4C
lbl_80547C4C:
	.asciz "L2CAP got sec_comp for unknown BD_ADDR"
	.balign 4


.global lbl_80547C74
lbl_80547C74:
	.asciz "L2CAP - ping timeout"
	.balign 4
	.asciz "L2CAP - Congested(), CID: 0x%04x, Congested"
	.asciz "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Congested"
	.balign 4
	.asciz "!!! L2CAP - buffer dropped"
	.balign 4
	.4byte 0
	.asciz "L2CAP - Calling CongestionStatus_Cb(), CID: 0x%04x, Uncongested"

.global lbl_80547D58
lbl_80547D58:
	.asciz "LCB %d Priority:%d XmitWindow:%d Congestion Start:%d End:%d Discard:%d"
	.balign 4


.global lbl_80547DA0
lbl_80547DA0:
	.asciz "L2CAP - dropping incomplete pkt"


.global lbl_80547DC0
lbl_80547DC0:
	.asciz "L2CAP - dropping too long pkt"
	.balign 4


.global lbl_80547DE0
lbl_80547DE0:
	.asciz "L2CAP - rcvd segment complete, unknown handle: %d"
	.balign 4
	.4byte 0


.global lbl_80547E18
lbl_80547E18:
	.asciz "L2CAP - expected pkt start, got: %d"
	.asciz "L2CAP - holding ACL for unknown handle:%d ls:%d cid:%d opcode:%d cur count:%d"
	.balign 4
	.4byte 0
	.asciz "L2CAP - unknown CID: %d"
	.asciz "L2CAP - got incorrect hci header"
	.balign 4
	.asciz "L2CAP - bad length in pkt. Exp: %d  Act: %d"
	.asciz "GOT CONNECTIONLESS DATA PSM:%d"
	.balign 4
	.asciz "Command len bad  pkt_len: %d  cmd_len: %d  code: %d"
	.asciz "L2CAP - MTU rej Handle: %d MTU: %d"
	.balign 4
	.asciz "L2CAP - rej with CID invalid, LCID: %d RCID: %d"
	.asciz "L2CAP - rcvd conn req for unknown PSM: %d"
	.balign 4
	.asciz "L2CAP - unable to allocate CCB"
	.balign 4
	.asciz "L2CAP - no CCB for conn rsp, LCID: %d RCID: %d"
	.balign 4
	.asciz "L2CAP - con rsp - bad ID. Exp: %d Got: %d"
	.balign 4
	.asciz "L2CAP - cfg rsp - bad ID. Exp: %d Got: %d"
	.balign 4
	.asciz "L2CAP - rcvd cfg rsp for unknown CID: %d"
	.balign 4
	.asciz "L2CAP - bad cmd code: %d"
	.balign 4

.global lbl_805480BC
lbl_805480BC:
	.4byte lbl_802FA998
	.4byte lbl_802FA048
	.4byte lbl_802FA11C
	.4byte lbl_802FA1E8
	.4byte lbl_802FA2E0
	.4byte lbl_802FA590
	.4byte lbl_802FA840
	.4byte lbl_802FA8B4
	.4byte lbl_802FA914
	.4byte lbl_802FA954
	.4byte lbl_802FA974
	.4byte lbl_802F9FC8


.global lbl_805480EC
lbl_805480EC:
	.asciz "L2CAP HOLD CONTINUE"


.global lbl_80548100
lbl_80548100:
	.asciz "L2CAP HOLD TIMEOUT"
	.balign 4
	.4byte 0


.global lbl_80548118
lbl_80548118:
	.asciz "L2CAP - no buffer cmd_rej"
	.balign 4


.global lbl_80548134
lbl_80548134:
	.asciz "L2CAP - no buffer for conn_req"
	.balign 4


.global lbl_80548154
lbl_80548154:
	.asciz "L2CAP - no buffer for cfg_rej"
	.balign 4


.global lbl_80548174
lbl_80548174:
	.asciz "L2CAP - no buffer for echo_req"
	.balign 4

.global lbl_80548194
lbl_80548194:
	.asciz "l2cu_create_conn - btm_is_sco_active_by_bdaddr() is_sco_active = %s"


.global lbl_805481D8
lbl_805481D8:
	.asciz "L2CAP - no buffer for l2cu_create_conn"
	.balign 4


.global lbl_80548200
lbl_80548200:
	.asciz "port_open_continue"
	.balign 4
	.asciz "port_open_continue no mx channel"
	.balign 4


.global lbl_80548238
lbl_80548238:
	.asciz "PORT_StartCnf result:%d"


.global lbl_80548250
lbl_80548250:
	.asciz "PORT_StartCnf failed result:%d"
	.balign 4


.global lbl_80548270
lbl_80548270:
	.asciz "PORT_StartInd"
	.balign 4


.global lbl_80548280
lbl_80548280:
	.asciz "PORT_ParNegInd dlci:%d mtu:%d"
	.balign 4


.global lbl_805482A0
lbl_805482A0:
	.asciz "PORT_ParNegInd: port not found"
	.balign 4


.global lbl_805482C0
lbl_805482C0:
	.asciz "PORT_ParNegCnf dlci:%d mtu:%d cl: %d k: %d"
	.balign 4


.global lbl_805482EC
lbl_805482EC:
	.asciz "PORT_DlcEstablishInd dlci:%d mtu:%d"


.global lbl_80548310
lbl_80548310:
	.asciz "PORT_DlcEstablishCnf dlci:%d mtu:%d result:%d"
	.balign 4


.global lbl_80548340
lbl_80548340:
	.asciz "PORT_PortNegInd"
	.asciz "PORT_PortNegCnf"
	.asciz "PORT_PortNegCnf no port"
	.asciz "PORT_PortNegCnf Control Already sent"
	.balign 4


.global lbl_805483A0
lbl_805483A0:
	.asciz "PORT_ControlInd"


.global lbl_805483B0
lbl_805483B0:
	.asciz "PORT_ControlInd DTR_DSR : %d, RTS_CTS : %d, RI : %d, DCD : %d"
	.balign 4


.global lbl_805483F0
lbl_805483F0:
	.asciz "PORT_ControlCnf"


.global lbl_80548400
lbl_80548400:
	.asciz "PORT_LineStatusInd"
	.balign 4


.global lbl_80548414
lbl_80548414:
	.asciz "PORT_DlcReleaseInd"
	.balign 4


.global lbl_80548428
lbl_80548428:
	.asciz "PORT_CloseInd"
	.balign 4


.global lbl_80548438
lbl_80548438:
	.asciz "Port_TimeOutCloseMux"
	.balign 4


.global lbl_80548450
lbl_80548450:
	.asciz "PORT_DataInd with data length %d"
	.balign 4


.global lbl_80548474
lbl_80548474:
	.asciz "PORT_DataInd. Buffer over run. Dropping the buffer"
	.balign 4


.global lbl_805484A8
lbl_805484A8:
	.asciz "PORT_FlowInd fc:%d"
	.balign 4

.global lbl_805484BC
lbl_805484BC:
	.asciz "Sending RFCOMM_DataReq"
	.balign 4


.global lbl_805484D4
lbl_805484D4:
	.asciz "port_rfc_closed in OPENING state ignored"
	.balign 4


.global lbl_80548500
lbl_80548500:
	.asciz "port_rfc_closed state:%d sending events:%x"
	.balign 4
	.4byte 0


.global lbl_80548530
lbl_80548530:
	.asciz "port_select_mtu bad packet size"
	.asciz "port_select_mtu selected %d based on connection speed"
	.balign 4
	.asciz "port_select_mtu selected %d based on l2cap PDU size"
	.4byte 0
	.asciz "port_select_mtu application selected %d"
	.asciz "port_select_mtu credit_rx_max %d, credit_rx_low %d, rx_buf_critical %d"
	.balign 4


.global lbl_80548630
lbl_80548630:
	.asciz "rfc_port_closed DONE"
	.balign 4


.global lbl_80548648
lbl_80548648:
	.asciz "PORT_DataInd Data reached HW. Sending FC set."
	.balign 4


.global lbl_80548678
lbl_80548678:
	.asciz "rfc_find_lcid_mcb LCID:0x%x"
	.asciz "rfc_find_lcid_mcb LCID reused LCID:0x%x current:0x%x"
	.balign 4
	.asciz "RFCOMM_ConnectCnf LCID:0x%x"
	.asciz "RFCOMM_ConfigInd LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_ConfigCnf LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_DisconnectInd LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_BufDataInd LCID:0x%x"
	.asciz "RFCOMM_CongestionStatusInd dropped LCID:0x%x"
	.balign 4
	.asciz "RFCOMM_CongestionStatusInd LCID:0x%x"
	.balign 4
	.4byte 0


.global lbl_805487B8
lbl_805487B8:
	# ROM: 0x5448B8
	.4byte lbl_802FEDA8
	.4byte lbl_802FEDAC
	.4byte lbl_802FEDB0
	.4byte lbl_802FEDB4
	.4byte lbl_802FEDB8
	.4byte lbl_802FEDBC
	.4byte lbl_802FEDC0
	.asciz "rfc_mx_sm_state_idle - evt:%d"
	.balign 4
	.asciz "Mx error state %d event %d"
	.balign 4
	.asciz "rfc_mx_send_config_req"
	.balign 4


.global lbl_80548828
lbl_80548828:
	.asciz "RFCOMM MX ignored - evt:%d in state:%d"
	.balign 4


.global lbl_80548850
lbl_80548850:
	# ROM: 0x544950
	.4byte lbl_802FEF90
	.4byte lbl_802FEF64
	.4byte lbl_802FEF64
	.4byte lbl_802FEF68
	.4byte lbl_802FEF7C
	.4byte lbl_802FEF90
	.4byte lbl_802FEE40
	.4byte lbl_802FEE84
	.4byte lbl_802FEF90
	.4byte lbl_802FEE84
	.4byte lbl_802FEEB0
	.4byte lbl_802FEE84
	.4byte lbl_802FEE84
	.asciz "rfc_mx_sm_state_wait_conn_cnf - evt:%d"
	.balign 4
	.asciz "rfc_mx_sm_state_configure - evt:%d"
	.balign 4


.global lbl_805488D0
lbl_805488D0:
	# ROM: 0x5449D0
	.4byte lbl_802FF214
	.4byte lbl_802FF274
	.4byte lbl_802FF274
	.4byte lbl_802FF214
	.4byte lbl_802FF274
	.4byte lbl_802FF250
	.4byte lbl_802FF240
	.4byte lbl_802FF274
	.4byte lbl_802FF260
	.asciz "rfc_mx_sm_sabme_wait_ua - evt:%d"
	.balign 4


.global lbl_80548918
lbl_80548918:
	# ROM: 0x544A18
	.4byte lbl_802FF3E8
	.4byte lbl_802FF398
	.4byte lbl_802FF3C0
	.4byte lbl_802FF3E8
	.4byte lbl_802FF3E8
	.4byte lbl_802FF3C8
	.4byte lbl_802FF338
	.4byte lbl_802FF3E8
	.4byte lbl_802FF3E8
	.4byte lbl_802FF338
	.4byte lbl_802FF3E8
	.4byte lbl_802FF374
	.4byte lbl_802FF364
	.4byte lbl_802FF3E8
	.4byte lbl_802FF384


.global lbl_80548954
lbl_80548954:
	.asciz "rfc_mx_sm_state_wait_sabme - evt:%d"


.global lbl_80548978
lbl_80548978:
	.asciz "rfc_mx_sm_state_connected - evt:%d"
	.balign 4


.global lbl_8054899C
lbl_8054899C:
	# ROM: 0x544A9C
	.4byte lbl_802FF5F8
	.4byte lbl_802FF624
	.4byte lbl_802FF5C0
	.4byte lbl_802FF624
	.4byte lbl_802FF624
	.4byte lbl_802FF5C0
	.4byte lbl_802FF624
	.4byte lbl_802FF624
	.4byte lbl_802FF624
	.4byte lbl_802FF624
	.4byte lbl_802FF624
	.4byte lbl_802FF5E4


.global lbl_805489CC
lbl_805489CC:
	.asciz "rfc_mx_sm_state_disc_wait_ua - evt:%d"
	.balign 4


.global lbl_805489F4
lbl_805489F4:
	# ROM: 0x544AF4
	.4byte lbl_802FF798
	.4byte lbl_802FF6DC
	.4byte lbl_802FF6DC
	.4byte lbl_802FF748
	.4byte lbl_802FF758
	.4byte lbl_802FF6DC
	.4byte lbl_802FF774
	.4byte lbl_802FF798
	.4byte lbl_802FF794
	.4byte lbl_802FF798
	.4byte lbl_802FF798
	.4byte lbl_802FF798
	.4byte lbl_802FF798
	.4byte lbl_802FF798
	.4byte lbl_802FF780


.global lbl_80548A30
lbl_80548A30:
	.asciz "rfc_mx_conf_cnf p_cfg:%08x res:%d "
	.balign 4


.global lbl_80548A54
lbl_80548A54:
	.asciz "rfc_mx_conf_ind p_cfg:%0x"
	.balign 4


.global lbl_80548A70
lbl_80548A70:
	.asciz "NULL port event %d"
	.balign 4


.global lbl_80548A84
lbl_80548A84:
	.asciz "Port error state %d event %d"
	.balign 4


.global lbl_80548AA4
lbl_80548AA4:
	.asciz "Port state closed Event ignored %d"
	.balign 4


.global lbl_80548AC8
lbl_80548AC8:
	# ROM: 0x544BC8
	.4byte lbl_802FFADC
	.4byte lbl_802FFB14
	.4byte lbl_802FFB18
	.4byte lbl_802FFB3C
	.4byte lbl_802FFB20
	.4byte lbl_802FFB50
	.4byte lbl_802FFB88
	.4byte lbl_802FFB88
	.4byte lbl_802FFB88
	.4byte lbl_802FFA94
	.4byte lbl_802FFB88
	.4byte lbl_802FFB88
	.4byte lbl_802FFB88
	.4byte lbl_802FFACC
	.4byte lbl_802FFAD0


.global lbl_80548B04
lbl_80548B04:
	.asciz "Port state sabme_wait_ua Event ignored %d"
	.balign 4


.global lbl_80548B30
lbl_80548B30:
	# ROM: 0x544C30
	.4byte lbl_802FFCE4
	.4byte lbl_802FFC74
	.4byte lbl_802FFC98
	.4byte lbl_802FFCB8
	.4byte lbl_802FFCF4
	.4byte lbl_802FFD00
	.4byte lbl_802FFD24
	.4byte lbl_802FFD24
	.4byte lbl_802FFD24
	.4byte lbl_802FFC08
	.4byte lbl_802FFD24
	.4byte lbl_802FFC08
	.4byte lbl_802FFC38
	.4byte lbl_802FFC60
	.4byte lbl_802FFC68
	.asciz "Port error state Term Wait Sec event Data"
	.balign 4
	.asciz "Port state term_wait_sec_check Event ignored %d"


.global lbl_80548BC8
lbl_80548BC8:
	# ROM: 0x544CC8
	.4byte lbl_802FFE64
	.4byte lbl_802FFEE4
	.4byte lbl_802FFEE4
	.4byte lbl_802FFE68
	.4byte lbl_802FFE98
	.4byte lbl_802FFEE4
	.4byte lbl_802FFEE4
	.4byte lbl_802FFEE4
	.4byte lbl_802FFEE4
	.4byte lbl_802FFDF4
	.4byte lbl_802FFEE4
	.4byte lbl_802FFEA4
	.4byte lbl_802FFDF4
	.4byte lbl_802FFE20
	.4byte lbl_802FFE38
	.4byte lbl_802FFDAC
	.asciz "Port error state Orig Wait Sec event Data"
	.balign 4
	.4byte 0
	.asciz "Port state orig_wait_sec_check Event ignored %d"


.global lbl_80548C68
lbl_80548C68:
	# ROM: 0x544D68
	.4byte lbl_802FFFB8
	.4byte lbl_80300034
	.4byte lbl_80300034
	.4byte lbl_80300034
	.4byte lbl_80300028
	.4byte lbl_80300034
	.4byte lbl_80300034
	.4byte lbl_80300034
	.4byte lbl_80300034
	.4byte lbl_802FFFB8
	.4byte lbl_80300034
	.4byte lbl_80300034
	.4byte lbl_802FFFE4
	.4byte lbl_80300034
	.4byte lbl_802FFFFC
	.4byte lbl_802FFF68


.global lbl_80548CA8
lbl_80548CA8:
	.asciz "Port state opened Event ignored %d"
	.balign 4


.global lbl_80548CCC
lbl_80548CCC:
	# ROM: 0x544DCC
	.4byte lbl_80300188
	.4byte lbl_80300184
	.4byte lbl_80300198
	.4byte lbl_803001B0
	.4byte lbl_803001D4
	.4byte lbl_803001E4
	.4byte lbl_8030021C
	.4byte lbl_8030021C
	.4byte lbl_8030021C
	.4byte lbl_803000B0
	.4byte lbl_8030021C
	.4byte lbl_8030021C
	.4byte lbl_803000E0
	.4byte lbl_80300108
	.4byte lbl_80300110


.global lbl_80548D08
lbl_80548D08:
	.asciz "Port state disc_wait_ua Event ignored %d"
	.balign 4


.global lbl_80548D34
lbl_80548D34:
	# ROM: 0x544E34
	.4byte lbl_803002F0
	.4byte lbl_803002D8
	.4byte lbl_803002E4
	.4byte lbl_80300304
	.4byte lbl_80300318
	.4byte lbl_80300334
	.4byte lbl_8030033C
	.4byte lbl_8030033C
	.4byte lbl_8030033C
	.4byte lbl_80300298
	.4byte lbl_8030033C
	.4byte lbl_80300298
	.4byte lbl_8030033C
	.4byte lbl_803002C4
	.4byte lbl_803002CC


.global lbl_80548D70
lbl_80548D70:
	.asciz "***** MX PN while disconnecting *****"
	.balign 4


.global lbl_80548D98
lbl_80548D98:
	.asciz "Bad Length1: %d"
	.asciz "Bad Length2 %d %d"
	.balign 4
	.asciz "Bad SABME"
	.balign 4
	.asciz "Bad DISC"
	.balign 4
	.asciz "Bad UIH - invalid DLCI"
	.balign 4
	.asciz "Bad UIH - FCS"
	.balign 4
	.asciz "Bad UIH - response"
	.balign 4
	.asciz "Illegal MX Frame ea:%d len:%d"
	.balign 4
	.asciz "Bad MX frame"
	.balign 4
	.asciz "Bad PN frame"
	.balign 4
	.asciz "Bad MSC frame"
	.balign 4
	.asciz "Bad RPN frame"
	.balign 4


.global lbl_80548E70
lbl_80548E70:
	.asciz "rfc_timer_stop"
	.balign 4


.global lbl_80548E80
lbl_80548E80:
	.asciz "rfc_timer_start - timeout:%d"
	.balign 4


.global lbl_80548EA0
lbl_80548EA0:
	.asciz "rfc_port_timer_start - timeout:%d"
	.balign 4


.global lbl_80548EC4
lbl_80548EC4:
	.asciz "rfc_port_timer_stop"
	.asciz "rfc_port_closed"


.global lbl_80548EE8
lbl_80548EE8:
	.asciz "rfc_inc_credit:%d"
	.balign 4
	.4byte 0


.global lbl_80548F00
lbl_80548F00:
	.asciz "SDP_InitDiscoveryDb Illegal param: p_db 0x%x, len %d, num_uuid %d, num_attr %d"
	.balign 4


.global lbl_80548F50
lbl_80548F50:
	.asciz "SDP_AddAttribute: attr_len:%d too long. truncate to (%d)"
	.balign 4


.global lbl_80548F8C
lbl_80548F8C:
	.asciz "SDP_AddUuidSequence - too long, add %d uuids of %d"
	.balign 4

.global lbl_80548FC0
lbl_80548FC0:
	.asciz "Deleting attr_id 0x%04x for handle 0x%x"


.global lbl_80548FE8
lbl_80548FE8:
	.asciz "SDP - Unexp. PDU: %d in state: %d"
	.balign 4
	.4byte 0


.global lbl_80549010
lbl_80549010:
	.asciz "SDP - Rcvd ServiceSearchRsp, no matches"


.global lbl_80549038
lbl_80549038:
	.asciz "SDP - Wrong type: 0x%02x in attr_rsp"
	.balign 4
	.asciz "SDP - Bad len in attr_rsp %d"
	.balign 4
	.asciz "SDP - DB full"
	.balign 4
	.asciz "SDP - Bad type: 0x%02x or len: %d in attr_rsp"
	.balign 4
	.asciz "SDP - attr nesting too deep"
	.asciz "SDP - bad len in UUID attr: %d"
	.balign 4
	.asciz "SDP - bad len in boolean attr: %d"
	.balign 4


.global lbl_80549120
lbl_80549120:
	# ROM: 0x545220
	.4byte lbl_80305BD0
	.4byte lbl_8030579C
	.4byte lbl_8030584C
	.4byte lbl_80305908
	.4byte lbl_80305B50
	.4byte lbl_80305B80
	.4byte lbl_80305A9C
	.4byte lbl_80305A9C
	.4byte lbl_80305B50
	.4byte 0


.global lbl_80549148
lbl_80549148:
	.asciz "Service Discovery"
	.balign 4
	.asciz "Security Registration Server failed"
	.asciz "Security Registration for Client failed"
	.asciz "SDP Registration failed"


.global lbl_805491C0
lbl_805491C0:
	.asciz "SDP - Rcvd L2CAP conn ind, sent config req, CID 0x%x"
	.balign 4
	.asciz "SDP - Rcvd conn cnf for unknown CID 0x%x"
	.balign 4
	.asciz "SDP - got conn cnf, sent cfg req, CID: 0x%x"
	.asciz "SDP - Rcvd conn cnf with error: 0x%x  CID 0x%x"
	.balign 4


.global lbl_80549280
lbl_80549280:
	.asciz "SDP - Rcvd L2CAP cfg ind, unknown CID: 0x%x"


.global lbl_805492AC
lbl_805492AC:
	.asciz "SDP - Rcvd cfg ind, sent cfg cfm, CID: 0x%x"
	.asciz "SDP - Rcvd cfg cfm, CID: 0x%x  Result: %d"
	.balign 4


.global lbl_80549304
lbl_80549304:
	.asciz "SDP - disconnect  CID: 0x%x"


.global lbl_80549320
lbl_80549320:
	.asciz "SDP - Rcvd L2CAP disc, unknown CID: 0x%x"
	.balign 4


.global lbl_8054934C
lbl_8054934C:
	.asciz "SDP - Rcvd L2CAP disc, CID: 0x%x"
	.balign 4


.global lbl_80549370
lbl_80549370:
	.asciz "SDP - Ignored L2CAP data while in state: %d, CID: 0x%x"
	.balign 4


.global lbl_805493A8
lbl_805493A8:
	.asciz "SDP - Rcvd L2CAP data, unknown CID: 0x%x"
	.balign 4
	.asciz "SDP - no spare CCB for orig"
	.asciz "SDP - Originate started"
	.asciz "SDP - Originate failed"
	.balign 4


.global lbl_80549420
lbl_80549420:
	.asciz "SDP - Rcvd L2CAP disc cfm, unknown CID: 0x%x"
	.balign 4


.global lbl_80549450
lbl_80549450:
	.asciz "SDP - Rcvd L2CAP disc cfm, CID: 0x%x"
	.balign 4


.global lbl_80549478
lbl_80549478:
	.asciz "SDP - CCB timeout in state: %d  CID: 0x%x"
	.balign 4
	.4byte 0


.global lbl_805494A8
lbl_805494A8:
	.asciz "SDP - server got unknown PDU: 0x%x"
	.balign 4


.global lbl_805494CC
lbl_805494CC:
	.asciz "SDP - no buf for search rsp"


.global lbl_805494E8
lbl_805494E8:
	# ROM: 0x5455E8
	.4byte lbl_803078FC
	.4byte lbl_8030789C
	.4byte lbl_803078AC
	.4byte lbl_803078FC
	.4byte lbl_803078C0
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078D4
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078FC
	.4byte lbl_803078E8


.global lbl_8054952C
lbl_8054952C:
	.asciz "SDP - sdpu_build_n_send_error  code: 0x%x  CID: 0x%x"
	.balign 4


.global lbl_80549564
lbl_80549564:
	.asciz "SDP - no buf for err msg"
	.balign 4

.global lbl_80549580
lbl_80549580:
	.4byte lbl_80307C0C
	.4byte lbl_80307B9C
	.4byte lbl_80307BA4
	.4byte lbl_80307C0C
	.4byte lbl_80307BAC
	.4byte lbl_80307BB4
	.4byte lbl_80307BC0
	.4byte lbl_80307BDC


.global lbl_805495A0
lbl_805495A0:
	# ROM: 0x5456A0
	.4byte lbl_80307B38
	.4byte lbl_80307AC8
	.4byte lbl_80307AD0
	.4byte lbl_80307B38
	.4byte lbl_80307AD8
	.4byte lbl_80307AE0
	.4byte lbl_80307AEC
	.4byte lbl_80307B08


.global lbl_805495C0
lbl_805495C0:
	# ROM: 0x5456C0
	.4byte lbl_80308048
	.4byte lbl_80308054
	.4byte lbl_80308060
	.4byte lbl_8030806C
	.4byte lbl_80308078
	.4byte lbl_80308084
	.4byte lbl_80308094
	.4byte lbl_803080B4


.global lbl_805495E0
lbl_805495E0:
	.asciz "DBExceptionDestination\n"


.global lbl_805495F8
lbl_805495F8:
	.asciz "<< RVL_SDK - DSP \trelease build: Feb 27 2009 10:01:57 (0x4302_145) >>"
	.balign 4
	.asciz "DSPInit(): Build Date: %s %s\n"
	.balign 4
	.asciz "Feb 27 2009"
	.asciz "10:01:57"
	.balign 4


.global lbl_80549678
lbl_80549678:
	.asciz "DSP is booting task: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
	.balign 4
	.asciz "__DSP_add_task() : Added task    : 0x%08X\n"
	.balign 4
	.4byte 0
.global lbl_805497B8
lbl_805497B8:
	.asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"


.global lbl_80549880
lbl_80549880:
	.asciz "Warning: DVDOpen(): file '%s' was not found under %s.\n"
	.balign 4


.global lbl_805498B8
lbl_805498B8:
	.asciz "DVDReadAsync(): specified area is out of the file  "


.global lbl_805498EC
lbl_805498EC:
	.asciz "DVDRead(): specified area is out of the file  "
	.balign 4
	.4byte 0

.global lbl_80549920
lbl_80549920:
	.asciz "<< RVL_SDK - DVD \trelease build: Feb 27 2009 10:01:59 (0x4302_145) >>"
	.balign 4


.global lbl_80549968
lbl_80549968:
	.asciz "DVDChangeDisk(): FST in the new disc is too big.   "


.global lbl_8054999C
lbl_8054999C:
	# ROM: 0x545A9C
	.4byte lbl_8030CBA8
	.4byte lbl_8030CB9C
	.4byte lbl_8030CB9C
	.4byte lbl_8030CBA8
	.4byte lbl_8030CB48
	.4byte lbl_8030CB48
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CB48
	.4byte lbl_8030CBA8
	.4byte lbl_8030CB48
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CB7C
	.4byte lbl_8030CB48
	.4byte lbl_8030CB48
	.4byte lbl_8030CB84
	.4byte lbl_8030CB84
	.4byte lbl_8030CB48
	.4byte lbl_8030CB84
	.4byte lbl_8030CBA8
	.4byte lbl_8030CBA8
	.4byte lbl_8030CB48
	.4byte lbl_8030CB48


.global lbl_80549A48
lbl_80549A48:
	# ROM: 0x545B48
	.4byte lbl_8030DEF0
	.4byte lbl_8030DA84
	.4byte lbl_8030DBAC
	.4byte lbl_8030DBC8
	.4byte lbl_8030DA84
	.4byte lbl_8030DA60
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DBF8
	.4byte lbl_8030DC18
	.4byte lbl_8030DBE0
	.4byte lbl_8030DC3C
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DC5C
	.4byte lbl_8030DC74
	.4byte lbl_8030DD9C
	.4byte lbl_8030DDC8
	.4byte lbl_8030DDF0
	.4byte lbl_8030DE00
	.4byte lbl_8030DDE0
	.4byte lbl_8030DEF0
	.4byte lbl_8030DE1C
	.4byte lbl_8030DE48
	.4byte lbl_8030DEBC


.global lbl_80549AF4
lbl_80549AF4:
	# ROM: 0x545BF4
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030D9B8
	.4byte lbl_8030D9B8
	.4byte lbl_8030DA3C
	.4byte lbl_8030D9B8
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030D9B8
	.4byte lbl_8030D9B8
	.4byte lbl_8030D9B8
	.4byte lbl_8030D9B8
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030D9B8
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030D9B8
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030DA3C
	.4byte lbl_8030D9B8
	.4byte lbl_8030D9B8
.global lbl_80549BA0
lbl_80549BA0:
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF


.global lbl_80549BAC
lbl_80549BAC:
	# ROM: 0x545CAC
	.4byte lbl_8030EE64
	.4byte lbl_8030EE04
	.4byte lbl_8030EE04
	.4byte lbl_8030EE64
	.4byte lbl_8030EDE4
	.4byte lbl_8030EDE4
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EDE4
	.4byte lbl_8030EE64
	.4byte lbl_8030EDE4
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EDE4
	.4byte lbl_8030EDE4
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EDE4
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EE64
	.4byte lbl_8030EDE4
	.4byte lbl_8030EDE4


.global lbl_80549C58
lbl_80549C58:
	# ROM: 0x545D58
	.4byte lbl_8030ECF0
	.4byte lbl_8030ECF0
	.4byte lbl_8030ED10
	.4byte lbl_8030ED74
	.4byte lbl_8030EDC0
	.4byte lbl_8030EE90
	.4byte lbl_8030EE90
	.4byte lbl_8030EE90
	.4byte lbl_8030EE90
	.4byte lbl_8030EFDC
	.4byte lbl_8030EFDC
	.4byte lbl_8030ECF0
	.4byte lbl_8030EE90
	.4byte lbl_8030EF8C
.global lbl_80549C90
lbl_80549C90:
	.4byte lbl_8030F0A8
	.4byte lbl_8030F0A8
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F0A8
	.4byte lbl_8030F09C
	.4byte lbl_8030F0A8
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F0A8
	.4byte lbl_8030F0A8
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F0A8
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F09C
	.4byte lbl_8030F0A8
	.4byte lbl_8030F0A8
	.4byte 0


.global lbl_80549D30
lbl_80549D30:
	# ROM: 0x545E30
	.asciz "/shared2/test2/dvderror.dat"


.global lbl_80549D4C
lbl_80549D4C:
	# ROM: 0x545E4C
	.asciz "/shared2/test2"
	.balign 4
	.4byte 0
	
.global lbl_80549D60
lbl_80549D60:
	#"\n\n\nエラーが発生しました。\n\nイジェクトボタンを押してディスクを取り出してか\nら、本体の電源をOFFにして、本体の取扱説明書の\n指示に従ってください。"
.global lbl_80549D60
lbl_80549D60:
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000

.global lbl_80549DF0
lbl_80549DF0:
	.asciz "\n\n\nAn error has occurred.\nPress the Eject Button, remove the\nGame Disc, and turn off the power to the\nconsole. Please read the Wii Operations\nManual for further instructions."
	.balign 4

.global lbl_80549EA0
lbl_80549EA0:
	#"\n\n\nEin Fehler ist aufgetreten.\nDrücke den Ausgabeknopf, entnimm die\nDisc und schalte die Wii-Konsole aus.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
.global lbl_80549EA0
lbl_80549EA0:
	.4byte 0x0A0A0A45
	.4byte 0x696E2046
	.4byte 0x65686C65
	.4byte 0x72206973
	.4byte 0x74206175
	.4byte 0x66676574
	.4byte 0x72657465
	.4byte 0x6E2E0A44
	.4byte 0x72FC636B
	.asciz "e den Ausgabeknopf, entnimm die\nDisc und schalte die Wii-Konsole aus.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."

.global lbl_80549F58
lbl_80549F58:
	#.asciz "\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et éteignez la console.\nVeuillez vous référer au Mode d'emploi\nde la Wii pour plus de détails."
.global lbl_80549F58
lbl_80549F58:
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x41707075
	.4byte 0x79657A20
	.4byte 0x73757220
	.4byte 0x6C652062
	.4byte 0x6F75746F
	.4byte 0x6E20454A
	.4byte 0x4543542C
	.4byte 0x20726574
	.4byte 0x6972657A
	.4byte 0x0A6C6520
	.4byte 0x64697371
	.4byte 0x75652065
	.4byte 0x7420E974
	.4byte 0x6569676E
	.4byte 0x657A206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x652E0A56
	.4byte 0x6575696C
	.4byte 0x6C657A20
	.4byte 0x766F7573
	.4byte 0x2072E966
	.4byte 0xE9726572
	.4byte 0x20617520
	.4byte 0x4D6F6465
	.4byte 0x20642765
	.4byte 0x6D706C6F
	.4byte 0x690A6465
	.4byte 0x206C6120
	.4byte 0x57696920
	.4byte 0x706F7572
	.4byte 0x20706C75
	.4byte 0x73206465
	.4byte 0x2064E974
	.asciz "ails."
	.balign 4
	.4byte 0

.global lbl_8054A008
lbl_8054A008:
	#"\n\n\nOcurrió un Error.\nOprime el Botón EJECT, saca el disco\ny apaga la consola. Consulta el manual\nde operaciones de la consola Wii para\nobtener más información."
.global lbl_8054A008
lbl_8054A008:
	.4byte 0x0A0A0A4F
	.4byte 0x63757272
	.4byte 0x69F32075
	.4byte 0x6E204572
	.4byte 0x726F722E
	.4byte 0x0A4F7072
	.4byte 0x696D6520
	.4byte 0x656C2042
	.4byte 0x6F74F36E
	.4byte 0x20454A45
	.4byte 0x43542C20
	.4byte 0x73616361
	.4byte 0x20656C20
	.4byte 0x64697363
	.4byte 0x6F0A7920
	.4byte 0x61706167
	.4byte 0x61206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x2E20436F
	.4byte 0x6E73756C
	.4byte 0x74612065
	.4byte 0x6C206D61
	.4byte 0x6E75616C
	.4byte 0x0A646520
	.4byte 0x6F706572
	.4byte 0x6163696F
	.4byte 0x6E657320
	.4byte 0x6465206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x69207061
	.4byte 0x72610A6F
	.4byte 0x6274656E
	.4byte 0x6572206D
	.4byte 0xE1732069
	.4byte 0x6E666F72
	.4byte 0x6D616369
	.4byte 0xF36E2E00

.global lbl_8054A0A8
lbl_8054A0A8:
	#"\n\n\nSi è verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ne spegni la console. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
.global lbl_8054A0A8
lbl_8054A0A8:
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ne spegni la console. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."

.global lbl_8054A154
lbl_8054A154:
	.asciz "\n\n\nEr is een fout opgetreden.\nDruk op de EJECT-knop, verwijder de\ndisk en zet het Wii-systeem uit. Lees\nde Wii-handleiding voor meer informatie."
	.balign 4

.global lbl_8054A1E8
lbl_8054A1E8:
	.asciz "\n\n\nAn error has occurred.\nPress the EJECT Button, remove the Disc,\nand turn off the power to the console.\nPlease refer to the Wii Operations Manual\nfor details."
	.balign 4

.global lbl_8054A28C
lbl_8054A28C:
	#"\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et éteignez la console.\nVeuillez vous référer au mode d'emploi\nWii pour plus de détails."
.global lbl_8054A28C
lbl_8054A28C:
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x41707075
	.4byte 0x79657A20
	.4byte 0x73757220
	.4byte 0x6C652062
	.4byte 0x6F75746F
	.4byte 0x6E20454A
	.4byte 0x4543542C
	.4byte 0x20726574
	.4byte 0x6972657A
	.4byte 0x0A6C6520
	.4byte 0x64697371
	.4byte 0x75652065
	.4byte 0x7420E974
	.4byte 0x6569676E
	.4byte 0x657A206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x652E0A56
	.4byte 0x6575696C
	.4byte 0x6C657A20
	.4byte 0x766F7573
	.4byte 0x2072E966
	.4byte 0xE9726572
	.4byte 0x20617520
	.4byte 0x6D6F6465
	.4byte 0x20642765
	.4byte 0x6D706C6F
	.4byte 0x690A5769
	.4byte 0x6920706F
	.4byte 0x75722070
	.4byte 0x6C757320
	.4byte 0x64652064
	.4byte 0xE9746169
	.4byte 0x6C732E00

.global lbl_8054A330
lbl_8054A330:
	#"\n\n\nSe ha producido un error.\nPulsa el Botón EJECT, extrae el disco y\napaga la consola. Consulta el manual de\ninstrucciones de la consola Wii para\nobtener más información."
	#.byte 0
.global lbl_8054A330
lbl_8054A330:
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F722E
	.4byte 0x0A50756C
	.4byte 0x73612065
	.4byte 0x6C20426F
	.4byte 0x74F36E20
	.4byte 0x454A4543
	.4byte 0x542C2065
	.4byte 0x78747261
	.4byte 0x6520656C
	.4byte 0x20646973
	.4byte 0x636F2079
	.4byte 0x0A617061
	.4byte 0x6761206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x612E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A696E73
	.4byte 0x74727563
	.4byte 0x63696F6E
	.4byte 0x65732064
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x20576969
	.4byte 0x20706172
	.4byte 0x610A6F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000
	
.global lbl_8054A3DC
lbl_8054A3DC:
	#"\n\nエラーコード１０４。\nエラーが発生しました。\n\nイジェクトボタンを押してディスクを取り出してか\nら、本体の電源をOFFにして、本体の取扱説明書の\n指示に従ってください。"
.global lbl_8054A3DC
lbl_8054A3DC:
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688250
	.4byte 0x824F8253
	.4byte 0x81420A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000

.global lbl_8054A480
lbl_8054A480:
	.asciz "\n\nError #104,\nAn error has occurred.\nPress the EJECT Button, remove the\nGame Disc, and turn the power off.\nPlease read the Wii Operations Manual\nfor more information."
	.balign 4

.global lbl_8054A528
lbl_8054A528:
	#"\n\n\nエラーコード００１。\n不明なデバイスが見つかりました。"
.global lbl_8054A528
lbl_8054A528:
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B835281
	.4byte 0x5B836882
	.4byte 0x4F824F82
	.4byte 0x5081420A
	.4byte 0x957396BE
	.4byte 0x82C88366
	.4byte 0x836F8343
	.4byte 0x835882AA
	.4byte 0x8CA982C2
	.4byte 0x82A982E8
	.4byte 0x82DC82B5
	.4byte 0x82BD8142
	.4byte 0

.global lbl_8054A564
lbl_8054A564:
	.asciz "\n\n\nError #001,\nunauthorized device has been detected."
	.balign 4

.global lbl_8054A59C
lbl_8054A59C:
	#"\n\n\nFehler #001:\nEs wurde eine unzulässige Komponente\nentdeckt."
	.4byte 0x0A0A0A46
	.4byte 0x65686C65
	.4byte 0x72202330
	.4byte 0x30313A0A
	.4byte 0x45732077
	.4byte 0x75726465
	.4byte 0x2065696E
	.4byte 0x6520756E
	.4byte 0x7A756CE4
	.asciz "ssige Komponente\nentdeckt."
	.balign 4

.global lbl_8054A5DC
lbl_8054A5DC:
	#.asciz "\n\n\nErreur 001:\nun dispositif non autorisé a été détecté."
	.4byte 0x0A0A0A45
	.4byte 0x72726575
	.4byte 0x72203030
	.4byte 0x313A0A75
	.4byte 0x6E206469
	.4byte 0x73706F73
	.4byte 0x69746966
	.4byte 0x206E6F6E
	.4byte 0x20617574
	.4byte 0x6F726973
	.4byte 0xE9206120
	.4byte 0xE974E920
	.4byte 0x64E97465
	.4byte 0x6374E92E
	.4byte 0

.global lbl_8054A618
lbl_8054A618:
	.asciz "\n\n\nError 001:\nSe ha detectado un dispositivo no\nautorizado."
	
.global lbl_8054A654
lbl_8054A654:
	.asciz "\n\n\nErrore #001:\nrilevato un dispositivo non autorizzato."
	.balign 4

.global lbl_8054A690
lbl_8054A690:
	.asciz "\n\n\nFout #001:\nongeoorloofd onderdeel gevonden."
	.balign 4


.global lbl_8054A6C0
lbl_8054A6C0:
	.asciz "(doTransactionCallback) Error - context mangled!\n"
	.balign 4
	.asciz "(doCoverCallback) Error - context mangled!\n"


.global lbl_8054A720
lbl_8054A720:
	.asciz "(DVDLowFinish) Error: IOS_Close failed\n"
	.asciz "IPCCltInit returned error: %d\n"
	.balign 4
	.asciz "(ddrAllocAligned32) Not enough space to allocate %d bytes\n"
	.balign 4
	.asciz "Allocation of diCommand blocks failed\n"
	.balign 4
	.asciz "Allocation of pathBuf failed\n"
	.balign 4
	.asciz "(DVDLowInit) Error: IOS_Open failed - pathname '/dev/di' does not exist\n"
	.balign 4
	.asciz "(DVDLowInit) Error: IOS_Open failed - calling thread lacks permission\n"
	.balign 4
	.asciz "(DVDLowInit) Error: IOS_Open failed - connection limit has been reached\n"
	.balign 4
	.asciz "(DVDLowInit) IOS_Open failed, errorcode = %d\n"
	.balign 4
	.4byte 0
	.asciz "(newContext) ERROR: freeDvdContext.inUse (#%d) is true\n"
	.asciz "(newContext) Now spinning in infinite loop\n"
	.4byte 0
	.asciz "(newContext) Something overwrote the context magic - spinning \n"
	.asciz "@@@@@@ WARNING - Calling DVDLowReadDiskId with NULL ptr\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDiskID) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "(DVDLowOpenPartition) eTicket memory is unaligned\n"
	.balign 4
	.4byte 0
	.asciz "(DVDLowOpenPartition) certificates memory is unaligned\n"
	.asciz "@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n"
	.balign 4
	.asciz "DVDLowOpenPartitionWithTmdAndTicket"
	.asciz "(%s) eTicket memory is unaligned\n"
	.balign 4
	.asciz "(%s) tmd parameter cannot be NULL\n"
	.balign 4
	.asciz "(%s) tmd memory is unaligned\n"
	.balign 4
	.asciz "(%s) eTicket parameter cannot be NULL\n"
	.balign 4
	.4byte 0
	.asciz "DVDLowOpenPartitionWithTmdAndTicketView"
	.asciz "(%s) eTicketView parameter cannot be NULL\n"
	.balign 4
	.asciz "(%s) eTicketView memory is unaligned\n"
	.balign 4
	.asciz "DVDLowGetNoDiscBufferSizes"
	.balign 4
	.asciz "(%s) Error: NULL pointer argument\n"
	.balign 4
	.asciz "(%s) numTmdBytes memory is unaligned\n"
	.balign 4
	.asciz "(%s) certificates memory is unaligned\n"
	.balign 4
	.asciz "@@@ (%s) IOS_IoctlvAsync returned error: %d\n"
	.balign 4
	.asciz "DVDLowGetNoDiscOpenPartitionParams"
	.balign 4
	.asciz "(%s) pointer argument is unaligned\n"
	.asciz "DVDLowNoDiscOpenPartition"
	.balign 4
	.asciz "@@@ (DVDLowClosePartition) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowUnencryptedRead) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowStopMotor) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowWaitForCoverClose) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n"
	.asciz "(DVDLowSetSpinupFlag): Synch functions can't be called in callbacks\n"
	.balign 4
	.asciz "@@@ (DVDLowNotifyReset) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowAudioBufferConfig) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "(DVDLowGetCoverStatus): Synch functions can't be called in callbacks\n"
	.balign 4
	.asciz "@@@ (DVDLowGetCoverStatus) IOS_Ioctl returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDVD) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDVDConfig) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDvdCopyright) IOS_IoctlAsync returned error: %d\n"
	.asciz "@@@ (DVDLowReadDvdPhysical) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDvdDiscKey) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReportKey) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowOffset) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowStopLaser) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowReadDiskBca) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowSerMeasControl) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowRequestDiscStatus) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowRequestRetryNumber) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowSetMaxRotation) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "(DVDLowRead): ERROR - destAddr buffer is not 32 byte aligned\n"
	.balign 4
	.asciz "@@@ (DVDLowRead) IOS_IoctlAsync returned error: %d\n"
	.asciz "@@@ (DVDLowSeek) IOS_IoctlAsync returned error: %d\n"
	.asciz "(DVDLowGetCoverReg): Synch functions can't be called in callbacks\n"
	.balign 4
	.asciz "@@@ (DVDLowGetCoverReg) IOS_Ioctl returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowPrepareCoverRegsiter) IOS_IoctlAsync returned error: %d\n"
	.asciz "@@@ (DVDLowPrepareStatusRegsiter) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowPrepareControlRegister) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowClearCoverInterrupt) IOS_IoctlAsync returned error: %d\n"
	.balign 4
	.asciz "@@@ (DVDLowEnableDvdVideo) IOS_IoctlAsync returned error: %d\n"
	.balign 4

.global lbl_8054B5C8
lbl_8054B5C8:
	.asciz "<< RVL_SDK - ENC \trelease build: Feb 27 2009 10:05:42 (0x4302_145) >>"
	.balign 4

.global lbl_8054B610
lbl_8054B610:
	.asciz "<< RVL_SDK - EXI \trelease build: Feb 27 2009 10:02:03 (0x4302_145) >>"
	.balign 4


.global lbl_8054B658
lbl_8054B658:
	.asciz "APP ERROR: Not enough IPC arena\n"
	.balign 4
	.4byte 0


.global lbl_8054B680
lbl_8054B680:
	.asciz "<< RVL_SDK - GX \trelease build: Feb 27 2009 10:04:13 (0x4302_145) >>"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000013
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.float 1.0
	.4byte 0
	.float -1.0
	.4byte 0xC0000000
	.4byte 0
	.4byte 0


.global lbl_8054B7F0
lbl_8054B7F0:
	# ROM: 0x5478F0
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00030000
	.4byte 0x00040000
	.4byte 0x00050000
	.4byte 0x00060000
	.4byte 0x00070000
	.4byte 0x00008000
	.4byte 0x00018000
	.4byte 0x00028000
	.4byte 0x00038000
	.4byte 0x00048000
	.4byte 0x00058000
	.4byte 0x00068000
	.4byte 0x00078000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00098000
	.4byte 0x00060000
	.4byte 0x000B8000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00088000
	.4byte 0x00050000
	.4byte 0x000A8000
	.4byte 0x00070000
	.4byte 0
	.4byte 0x00090000
	.4byte 0x00020000
	.4byte 0x000B0000
	.4byte 0x00040000
	.4byte 0x00090000
	.4byte 0x00060000
	.4byte 0x000B0000
	.4byte 0x00080000
	.4byte 0x00010000
	.4byte 0x000A0000
	.4byte 0x00030000
	.4byte 0x00080000
	.4byte 0x00050000
	.4byte 0x000A0000
	.4byte 0x00070000


.global lbl_8054B8B0
lbl_8054B8B0:
	# ROM: 0x5479B0
	.4byte __GXShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0


.global lbl_8054B8C0
lbl_8054B8C0:
	.asciz "CPUFifo: %08X - %08X\n"
	.balign 4


.global lbl_8054B8D8
lbl_8054B8D8:
	.asciz "GP Fifo: %08X - %08X\n"
	.balign 4


.global lbl_8054B8F0
lbl_8054B8F0:
	# ROM: 0x5479F0
	.4byte lbl_80319250
	.4byte lbl_80319264
	.4byte lbl_80319278
	.4byte lbl_8031928C
	.4byte lbl_803192A0
	.4byte lbl_803192B4
	.4byte lbl_803192C8
	.4byte lbl_803192DC
	.4byte lbl_803192F0
	.4byte lbl_80319304
	.4byte lbl_80319318
	.4byte lbl_80319380
	.4byte lbl_80319394
	.4byte lbl_803193A8
	.4byte lbl_803193BC
	.4byte lbl_803193D0
	.4byte lbl_803193E4
	.4byte lbl_803193F8
	.4byte lbl_8031940C
	.4byte lbl_80319420
	.4byte lbl_80319434
	.4byte lbl_80319444
	.4byte lbl_80319444
	.4byte lbl_80319444
	.4byte lbl_80319444
	.4byte lbl_8031934C


.global lbl_8054B958
lbl_8054B958:
	# ROM: 0x547A58
	.4byte lbl_803196F0
	.4byte lbl_80319708
	.4byte lbl_80319744
	.4byte lbl_80319758
	.4byte lbl_8031976C
	.4byte lbl_80319784
	.4byte lbl_8031979C
	.4byte lbl_803197B4
	.4byte lbl_803197CC
	.4byte lbl_803197EC
	.4byte lbl_80319804
	.4byte lbl_8031981C
	.4byte lbl_80319830
	.4byte lbl_80319830
	.4byte lbl_80319830
	.4byte lbl_80319830
	.4byte lbl_80319708
.global lbl_8054B99C
lbl_8054B99C:
	.4byte lbl_803198A8
	.4byte lbl_803198C0
	.4byte lbl_803198FC
	.4byte lbl_80319910
	.4byte lbl_80319924
	.4byte lbl_8031993C
	.4byte lbl_80319954
	.4byte lbl_8031996C
	.4byte lbl_80319984
	.4byte lbl_803199A4
	.4byte lbl_803199BC
	.4byte lbl_803199D4
	.4byte lbl_803199E8
	.4byte lbl_803199E8
	.4byte lbl_803199E8
	.4byte lbl_803199E8
	.4byte lbl_803198C0


.global lbl_8054B9E0
lbl_8054B9E0:
	# ROM: 0x547AE0
	.4byte lbl_80319B2C
	.4byte lbl_80319B38
	.4byte lbl_80319B44
	.4byte lbl_80319B50
	.4byte lbl_80319B6C
	.4byte lbl_80319B74
	.4byte lbl_80319B7C
	.4byte lbl_80319B84
	.4byte lbl_80319B8C
	.4byte lbl_80319B94
	.4byte lbl_80319B9C
	.4byte lbl_80319BA4
	.4byte lbl_80319BA8
	.4byte lbl_80319BA8
	.4byte lbl_80319BA8
	.4byte lbl_80319BA8
	.4byte lbl_80319BA8
	.4byte lbl_80319BA8
	.4byte lbl_80319BA8
	.4byte lbl_80319B5C
	.4byte lbl_80319B64
	.4byte 0

.global lbl_8054BA38
lbl_8054BA38:
	.4byte 0x00000001
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0


.global lbl_8054BA74
lbl_8054BA74:
	# ROM: 0x547B74
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000


.global lbl_8054BAB0
lbl_8054BAB0:
	# ROM: 0x547BB0
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BAEC
lbl_8054BAEC:
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BB28
lbl_8054BB28:
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8054BB64
lbl_8054BB64:
	.4byte 0x00000009
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0


.global lbl_8054BBA0
lbl_8054BBA0:
	# ROM: 0x547CA0
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8054BBDC
lbl_8054BBDC:
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BC18
lbl_8054BC18:
	.4byte 0x0000000A
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BC54
lbl_8054BC54:
	.4byte 0x0000000A
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8054BC90
lbl_8054BC90:
	.4byte 0x00000005
	.4byte 0x02800108
	.4byte 0x01080028
	.4byte 0x000B0280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0


.global lbl_8054BCCC
lbl_8054BCCC:
	# ROM: 0x547DCC
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8054BD08
lbl_8054BD08:
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BD44
lbl_8054BD44:
	.4byte 0x00000015
	.4byte 0x028000F0
	.4byte 0x00F00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0


.global lbl_8054BD80
lbl_8054BD80:
	# ROM: 0x547E80
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8054BDBC
lbl_8054BDBC:
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BDF8
lbl_8054BDF8:
	.4byte 0x00000016
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8054BE34
lbl_8054BE34:
	.4byte 0x00000016
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000


.global lbl_8054BE70
lbl_8054BE70:
	# ROM: 0x547F70
	.4byte lbl_8031C0E0
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0F8
	.4byte lbl_8031C0F8
	.4byte lbl_8031C0F8
	.4byte lbl_8031C0F8
	.4byte lbl_8031C104
	.4byte lbl_8031C0E0
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0F8
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0E0
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0EC
	.4byte lbl_8031C104
	.4byte lbl_8031C0F8
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0F8
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0E0
	.4byte lbl_8031C104
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0F8
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0F8
	.4byte lbl_8031C0F8
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0E0
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C104
	.4byte lbl_8031C0EC
	.4byte lbl_8031C0EC
	.4byte lbl_8031C104
	.4byte lbl_8031C0F8


.global lbl_8054BF64
lbl_8054BF64:
	# ROM: 0x548064
	.4byte lbl_8031C210
	.4byte lbl_8031C21C
	.4byte lbl_8031C21C
	.4byte lbl_8031C228
	.4byte lbl_8031C228
	.4byte lbl_8031C228
	.4byte lbl_8031C228
	.4byte lbl_8031C234
	.4byte lbl_8031C210
	.4byte lbl_8031C21C
	.4byte lbl_8031C228
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C210
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C21C
	.4byte lbl_8031C234
	.4byte lbl_8031C228
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C228
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C210
	.4byte lbl_8031C234
	.4byte lbl_8031C21C
	.4byte lbl_8031C228
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C21C
	.4byte lbl_8031C21C
	.4byte lbl_8031C21C
	.4byte lbl_8031C21C
	.4byte lbl_8031C228
	.4byte lbl_8031C228
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C210
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C234
	.4byte lbl_8031C21C
	.4byte lbl_8031C21C
	.4byte lbl_8031C234
	.4byte lbl_8031C228


.global lbl_8054C058
lbl_8054C058:
	# ROM: 0x548158
	.4byte lbl_8031C3F4
	.4byte lbl_8031C408
	.4byte lbl_8031C408
	.4byte lbl_8031C41C
	.4byte lbl_8031C41C
	.4byte lbl_8031C41C
	.4byte lbl_8031C430
	.4byte lbl_8031C458
	.4byte lbl_8031C3F4
	.4byte lbl_8031C408
	.4byte lbl_8031C41C
	.4byte lbl_8031C458
	.4byte lbl_8031C458
	.4byte lbl_8031C458
	.4byte lbl_8031C444
	.4byte 0


.global lbl_8054C098
lbl_8054C098:
	# ROM: 0x548198
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80


.global lbl_8054C0E8
lbl_8054C0E8:
	# ROM: 0x5481E8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0


.global lbl_8054C110
lbl_8054C110:
	# ROM: 0x548210
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005


.global lbl_8054C130
lbl_8054C130:
	# ROM: 0x548230
	.4byte lbl_8031EFB0
	.4byte lbl_8031EFCC
	.4byte lbl_8031EFE8
	.4byte lbl_8031F004
	.4byte lbl_8031F058
	.4byte lbl_8031F074
	.4byte lbl_8031F090
	.4byte lbl_8031F0AC
	.4byte lbl_8031F020
	.4byte lbl_8031F0C8
	.4byte lbl_8031F0F8
	.4byte lbl_8031F128
	.4byte lbl_8031F158
	.4byte lbl_8031F188
	.4byte lbl_8031F1B8
	.4byte lbl_8031F1E8
	.4byte lbl_8031F218
	.4byte lbl_8031F244
	.4byte lbl_8031F254
	.4byte lbl_8031F264
	.4byte lbl_8031F274
	.4byte lbl_8031F03C


.global lbl_8054C188
lbl_8054C188:
	# ROM: 0x548288
	.4byte lbl_8031EB8C
	.4byte lbl_8031EBAC
	.4byte lbl_8031EBCC
	.4byte lbl_8031EBEC
	.4byte lbl_8031EC0C
	.4byte lbl_8031EC2C
	.4byte lbl_8031EC4C
	.4byte lbl_8031EC6C
	.4byte lbl_8031EC8C
	.4byte lbl_8031ECAC
	.4byte lbl_8031ECEC
	.4byte lbl_8031ED0C
	.4byte lbl_8031ED28
	.4byte lbl_8031ED44
	.4byte lbl_8031ED60
	.4byte lbl_8031ED7C
	.4byte lbl_8031ED98
	.4byte lbl_8031EDB4
	.4byte lbl_8031EDD0
	.4byte lbl_8031EDEC
	.4byte lbl_8031EE08
	.4byte lbl_8031EE24
	.4byte lbl_8031EE40
	.4byte lbl_8031EE5C
	.4byte lbl_8031EE78
	.4byte lbl_8031EE94
	.4byte lbl_8031EEB0
	.4byte lbl_8031EECC
	.4byte lbl_8031EEE8
	.4byte lbl_8031EF04
	.4byte lbl_8031EF20
	.4byte lbl_8031EF3C
	.4byte lbl_8031EF58
	.4byte lbl_8031EF74
	.4byte lbl_8031ECCC
	.4byte 0

.global lbl_8054C218
lbl_8054C218:
	.asciz "homebutton::FrameController"
	.4byte 0

.global lbl_8054C238
lbl_8054C238:
	.4byte lbl_8054C218
	.4byte 0


.global lbl_8054C240
lbl_8054C240:
	# ROM: 0x548340
	.4byte lbl_8054C280
	.4byte 0
	.4byte __dt__Q210homebutton15FrameControllerFv
	.4byte calc__Q210homebutton15FrameControllerFv

.global lbl_8054C250
lbl_8054C250:
	.asciz "homebutton::GroupAnmController"
	.balign 4

.global lbl_8054C270
lbl_8054C270:
	.4byte lbl_8054C238
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054C280
lbl_8054C280:
	.4byte lbl_8054C250
	.4byte lbl_8054C270

.global lbl_8054C288
lbl_8054C288:
	# ROM: 0x548388
	.4byte lbl_8054C328
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9ComponentFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui13PaneComponentFv
	.4byte __dt__Q310homebutton3gui13PaneComponentFv
	.4byte getID__Q310homebutton3gui9ComponentFv
	.4byte isPointed__Q310homebutton3gui9ComponentFi
	.4byte setPointed__Q310homebutton3gui9ComponentFib
	.4byte onPoint__Q310homebutton3gui9ComponentFv
	.4byte offPoint__Q310homebutton3gui9ComponentFv
	.4byte onDrag__Q310homebutton3gui9ComponentFff
	.4byte onMove__Q310homebutton3gui9ComponentFff
	.4byte onTrig__Q310homebutton3gui9ComponentFUlR3Vec
	.4byte setDraggingButton__Q310homebutton3gui9ComponentFUl
	.4byte update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q310homebutton3gui9ComponentFv
	.4byte setTriggerTarget__Q310homebutton3gui9ComponentFb
	.4byte setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager
	.4byte isVisible__Q310homebutton3gui13PaneComponentFv
	.4byte contain__Q310homebutton3gui13PaneComponentFff
	.4byte setPane__Q310homebutton3gui13PaneComponentFPQ36nw4hbm3lyt4Pane
	.4byte getPane__Q310homebutton3gui13PaneComponentFv

.global lbl_8054C2F0
lbl_8054C2F0:
	.asciz "homebutton::gui::PaneComponent"
	.balign 4

.global lbl_8054C310
lbl_8054C310:
	.4byte lbl_8054C4F0
	.4byte 0
	.4byte lbl_8054C4C8
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054C328
lbl_8054C328:
	.4byte lbl_8054C2F0
	.4byte lbl_8054C310


.global lbl_8054C330
lbl_8054C330:
	# ROM: 0x548430
	.4byte lbl_8054C3C8
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui7ManagerFv
	.4byte calc__Q310homebutton3gui7ManagerFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui7ManagerFv
	.4byte __dt__Q310homebutton3gui11PaneManagerFv
	.4byte addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte delComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte getComponent__Q310homebutton3gui7ManagerFUl
	.4byte update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q310homebutton3gui7ManagerFUlUlPv
	.4byte setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb
	.4byte setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler
	.4byte createLayoutScene__Q310homebutton3gui11PaneManagerFRCQ36nw4hbm3lyt6Layout
	.4byte addLayoutScene__Q310homebutton3gui11PaneManagerFRCQ36nw4hbm3lyt6Layout
	.4byte delLayoutScene__Q310homebutton3gui11PaneManagerFRCQ36nw4hbm3lyt6Layout
	.4byte getPaneComponentByPane__Q310homebutton3gui11PaneManagerFPQ36nw4hbm3lyt4Pane
	.4byte getDrawInfo__Q310homebutton3gui11PaneManagerFv
	.4byte setDrawInfo__Q310homebutton3gui11PaneManagerFPCQ36nw4hbm3lyt8DrawInfo
	.4byte setAllBoundingBoxComponentTriggerTarget__Q310homebutton3gui11PaneManagerFb
	.4byte walkinchildren__q310homebutton3gui11panemanagerfrq36nw4hbm2ut30linklist_Q36nw4hbm3lyt4Pane_4_
	.4byte walkInChildrenDel__Q310homebutton3gui11PaneManagerFRQ36nw4hbm2ut30LinkList_Q36nw4hbm3lyt4Pane_4_

.global lbl_8054C394
lbl_8054C394:
	.asciz "homebutton::gui::PaneManager"
	.balign 4

.global lbl_8054C3B4
lbl_8054C3B4:
	.4byte lbl_8054C4F0
	.4byte 0
	.4byte lbl_8054C438
	.4byte 0
	.4byte 0

.global lbl_8054C3C8
lbl_8054C3C8:
	.4byte lbl_8054C394
	.4byte lbl_8054C3B4


.global lbl_8054C3D0
lbl_8054C3D0:
	# ROM: 0x5484D0
	.4byte lbl_8054C438
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui7ManagerFv
	.4byte calc__Q310homebutton3gui7ManagerFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui7ManagerFv
	.4byte __dt__Q310homebutton3gui7ManagerFv
	.4byte addComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte delComponent__Q310homebutton3gui7ManagerFPQ310homebutton3gui9Component
	.4byte getComponent__Q310homebutton3gui7ManagerFUl
	.4byte update__Q310homebutton3gui7ManagerFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui7ManagerFiffUlUlUlPv
	.4byte onEvent__Q310homebutton3gui7ManagerFUlUlPv
	.4byte setAllComponentTriggerTarget__Q310homebutton3gui7ManagerFb
	.4byte setEventHandler__Q310homebutton3gui7ManagerFPQ310homebutton3gui12EventHandler

.global lbl_8054C410
lbl_8054C410:
	.asciz "homebutton::gui::Manager"
	.balign 4

.global lbl_8054C42C
lbl_8054C42C:
	.4byte lbl_8054C4F0
	.4byte 0
	.4byte 0

.global lbl_8054C438
lbl_8054C438:
	.4byte lbl_8054C410
	.4byte lbl_8054C42C


.global lbl_8054C440
lbl_8054C440:
	# ROM: 0x548540
	.4byte lbl_8054C4C8
	.4byte 0
	.4byte create__Q310homebutton3gui9InterfaceFv
	.4byte init__Q310homebutton3gui9ComponentFv
	.4byte calc__Q310homebutton3gui9InterfaceFv
	.4byte draw__Q310homebutton3gui9InterfaceFRA3_A4_f
	.4byte draw__Q310homebutton3gui9InterfaceFv
	.4byte __dt__Q310homebutton3gui9ComponentFv
	.4byte getID__Q310homebutton3gui9ComponentFv
	.4byte isPointed__Q310homebutton3gui9ComponentFi
	.4byte setPointed__Q310homebutton3gui9ComponentFib
	.4byte onPoint__Q310homebutton3gui9ComponentFv
	.4byte offPoint__Q310homebutton3gui9ComponentFv
	.4byte onDrag__Q310homebutton3gui9ComponentFff
	.4byte onMove__Q310homebutton3gui9ComponentFff
	.4byte onTrig__Q310homebutton3gui9ComponentFUlR3Vec
	.4byte setDraggingButton__Q310homebutton3gui9ComponentFUl
	.4byte update__Q310homebutton3gui9ComponentFiPC10KPADStatusffPv
	.4byte update__Q310homebutton3gui9ComponentFiffUlUlUlPv
	.4byte isTriggerTarger__Q310homebutton3gui9ComponentFv
	.4byte setTriggerTarget__Q310homebutton3gui9ComponentFb
	.4byte setManager__Q310homebutton3gui9ComponentFPQ310homebutton3gui7Manager
	.4byte isVisible__Q310homebutton3gui9ComponentFv
	.4byte 0

.global lbl_8054C4A0
lbl_8054C4A0:
	.asciz "homebutton::gui::Component"
	.balign 4

.global lbl_8054C4BC
lbl_8054C4BC:
	.4byte lbl_8054C4F0
	.4byte 0
	.4byte 0

.global lbl_8054C4C8
lbl_8054C4C8:
	.4byte lbl_8054C4A0
	.4byte lbl_8054C4BC

.global lbl_8054C4D0
lbl_8054C4D0:
	.asciz "homebutton::gui::Interface"
	.balign 4
	.4byte 0

.global lbl_8054C4F0
lbl_8054C4F0:
	.4byte lbl_8054C4D0
	.4byte 0


.global lbl_8054C4F8
lbl_8054C4F8:
	# ROM: 0x5485F8
	.4byte lbl_8054C520
	.4byte 0
	.4byte __dt__Q210homebutton9RemoteSpkFv

.global lbl_8054C504
lbl_8054C504:
	.asciz "homebutton::RemoteSpk"
	.balign 4
	.4byte 0

.global lbl_8054C520
lbl_8054C520:
	.4byte lbl_8054C504
	.4byte 0

.global lbl_8054C528
lbl_8054C528:
	.asciz "midi\\00_home_button.mid"

.global lbl_8054C540
lbl_8054C540:
	.asciz "midi\\01_return_app.mid"
	.balign 4

.global lbl_8054C558
lbl_8054C558:
	.asciz "midi\\02_goto_menu.mid"
	.balign 4

.global lbl_8054C570
lbl_8054C570:
	.asciz "midi\\03_reset_app.mid"
	.balign 4

.global lbl_8054C588
lbl_8054C588:
	.asciz "midi\\04_focus.mid"
	.balign 4

.global lbl_8054C59C
lbl_8054C59C:
	.asciz "midi\\05_select.mid"
	.balign 4

.global lbl_8054C5B0
lbl_8054C5B0:
	.asciz "midi\\06_cancel.mid"
	.balign 4

.global lbl_8054C5C4
lbl_8054C5C4:
	.asciz "midi\\07_open_controller.mid"

.global lbl_8054C5E0
lbl_8054C5E0:
	.asciz "midi\\08_close_controller.mid"
	.balign 4

.global lbl_8054C600
lbl_8054C600:
	.asciz "midi\\09_volume_plus.mid"

.global lbl_8054C618
lbl_8054C618:
	.asciz "midi\\10_volume_minus.mid"
	.balign 4

.global lbl_8054C634
lbl_8054C634:
	.asciz "midi\\11_volume_plus_limit.mid"
	.balign 4

.global lbl_8054C654
lbl_8054C654:
	.asciz "midi\\12_volume_minus_limit.mid"
	.balign 4

.global lbl_8054C674
lbl_8054C674:
	.asciz "midi\\13_nothing_done.mid"
	.balign 4

.global lbl_8054C690
lbl_8054C690:
	.asciz "midi\\14_vibe_on.mid"

.global lbl_8054C6A4
lbl_8054C6A4:
	.asciz "midi\\15_vibe_off.mid"
	.balign 4

.global lbl_8054C6BC
lbl_8054C6BC:
	.asciz "midi\\16_start_connect_window.mid"
	.balign 4

.global lbl_8054C6E0
lbl_8054C6E0:
	.asciz "midi\\17_connected1.mid"
	.balign 4

.global lbl_8054C6F8
lbl_8054C6F8:
	.asciz "midi\\18_connected2.mid"
	.balign 4

.global lbl_8054C710
lbl_8054C710:
	.asciz "midi\\19_connected3.mid"
	.balign 4

.global lbl_8054C728
lbl_8054C728:
	.asciz "midi\\20_connected4.mid"
	.balign 4

.global lbl_8054C740
lbl_8054C740:
	.asciz "midi\\21_end_connect_window.mid"
	.balign 4

.global lbl_8054C760
lbl_8054C760:
	.asciz "midi\\22_manual_open.mid"

.global lbl_8054C778
lbl_8054C778:
	.asciz "midi\\23_manual_focus.mid"
	.balign 4

.global lbl_8054C794
lbl_8054C794:
	.asciz "midi\\24_manual_select.mid"
	.balign 4

.global lbl_8054C7B0
lbl_8054C7B0:
	.asciz "midi\\25_manual_scroll.mid"
	.balign 4

.global lbl_8054C7CC
lbl_8054C7CC:
	.asciz "midi\\26_manual_cancel.mid"
	.balign 4

.global lbl_8054C7E8
lbl_8054C7E8:
	.asciz "midi\\27_manual_return_app.mid"
	.balign 4


.global lbl_8054C808
lbl_8054C808:
	# ROM: 0x548908
	.4byte lbl_8054C528
	.4byte lbl_8054C540
	.4byte lbl_8054C558
	.4byte lbl_8054C570
	.4byte lbl_8054C588
	.4byte lbl_8054C59C
	.4byte lbl_8054C5B0
	.4byte lbl_8054C5C4
	.4byte lbl_8054C5E0
	.4byte lbl_8054C600
	.4byte lbl_8054C618
	.4byte lbl_8054C634
	.4byte lbl_8054C654
	.4byte lbl_8054C674
	.4byte lbl_8054C690
	.4byte lbl_8054C6A4
	.4byte lbl_8054C6BC
	.4byte lbl_8054C6E0
	.4byte lbl_8054C6F8
	.4byte lbl_8054C710
	.4byte lbl_8054C728
	.4byte lbl_8054C740
	.4byte lbl_8054C760
	.4byte lbl_8054C778
	.4byte lbl_8054C794
	.4byte lbl_8054C7B0
	.4byte lbl_8054C7CC
	.4byte lbl_8054C7E8

.global lbl_8054C878
lbl_8054C878:
	.asciz "<< RVL_SDK - HBM \trelease build: Mar  3 2009 14:00:03 (0x4201_142) >>"
	.balign 4


.global lbl_8054C8C0
lbl_8054C8C0:
	# ROM: 0x5489C0
	.4byte lbl_8054C878


.global lbl_8054C8C4
lbl_8054C8C4:
	# ROM: 0x5489C4
	.4byte lbl_805CD758


.global lbl_8054C8C8
lbl_8054C8C8:
	.asciz "P1_Def.brlyt"
	.balign 4

.global lbl_8054C8D8
lbl_8054C8D8:
	.asciz "P2_Def.brlyt"
	.balign 4

.global lbl_8054C8E8
lbl_8054C8E8:
	.asciz "P3_Def.brlyt"
	.balign 4

.global lbl_8054C8F8
lbl_8054C8F8:
	.asciz "P4_Def.brlyt"
	.balign 4
	.4byte lbl_8054C8C8
	.4byte lbl_8054C8D8
	.4byte lbl_8054C8E8
	.4byte lbl_8054C8F8

.global lbl_8054C918
lbl_8054C918:
	.asciz "N_Trans"

.global lbl_8054C920
lbl_8054C920:
	.4byte lbl_8054C918

.global lbl_8054C924
lbl_8054C924:
	.asciz "N_Rot"
	.balign 4
	.4byte lbl_8054C924

.global lbl_8054C930
lbl_8054C930:
	.asciz "N_SRot"
	.balign 4
	.4byte lbl_8054C930

.global lbl_8054C93C
lbl_8054C93C:
	.asciz "B_btnL_00"
	.balign 4

.global lbl_8054C948
lbl_8054C948:
	.asciz "B_btnL_01"
	.balign 4

.global lbl_8054C954
lbl_8054C954:
	.asciz "B_btnL_10"
	.balign 4


.global lbl_8054C960
lbl_8054C960:
	# ROM: 0x548A60
	.4byte lbl_8054C93C
	.4byte lbl_8054C948
	.4byte lbl_8054C954
	.4byte 0

.global lbl_8054C970
lbl_8054C970:
	.asciz "T_btnL_00"
	.balign 4

.global lbl_8054C97C
lbl_8054C97C:
	.asciz "T_btnL_01"
	.balign 4

.global lbl_8054C988
lbl_8054C988:
	.asciz "T_btnL_10"
	.balign 4
	.4byte 0
	.4byte lbl_8054C970
	.4byte lbl_8054C97C
	.4byte lbl_8054C988
	.4byte 0

.global lbl_8054C9A8
lbl_8054C9A8:
	.asciz "btnL_00_inOut"
	.balign 4

.global lbl_8054C9B8
lbl_8054C9B8:
	.asciz "btnL_01_inOut"
	.balign 4

.global lbl_8054C9C8
lbl_8054C9C8:
	.asciz "btnL_10_inOut"
	.balign 4

.global lbl_8054C9D8
lbl_8054C9D8:
	.asciz "btnL_11_inOut"
	.balign 4

.global lbl_8054C9E8
lbl_8054C9E8:
	.asciz "btnL_00_psh"

.global lbl_8054C9F4
lbl_8054C9F4:
	.asciz "btnL_01_psh"

.global lbl_8054CA00
lbl_8054CA00:
	.asciz "btnL_10_psh"

.global lbl_8054CA0C
lbl_8054CA0C:
	.asciz "btnL_11_psh"
	.4byte lbl_8054C9A8
	.4byte lbl_8054C9B8
	.4byte lbl_8054C9C8
	.4byte lbl_8054C9D8
	.4byte lbl_8054C9E8
	.4byte lbl_8054C9F4
	.4byte lbl_8054CA00
	.4byte lbl_8054CA0C

.global lbl_8054CA38
lbl_8054CA38:
	.asciz "_cntBtn_in.brlan"
	.balign 4

.global lbl_8054CA4C
lbl_8054CA4C:
	.asciz "_cntBtn_psh.brlan"
	.balign 4

.global lbl_8054CA60
lbl_8054CA60:
	.asciz "_cntBtn_out.brlan"
	.balign 4
	.4byte lbl_8054CA38
	.4byte lbl_8054CA4C
	.4byte lbl_8054CA60

.global lbl_8054CA80
lbl_8054CA80:
	.asciz "_ltrIcn_on.brlan"
	.balign 4

.global lbl_8054CA94
lbl_8054CA94:
	.asciz "_optn_bar_psh.brlan"

.global lbl_8054CAA8
lbl_8054CAA8:
	.asciz "_close_bar_psh.brlan"
	.balign 4

.global lbl_8054CAC0
lbl_8054CAC0:
	.asciz "_hmMenu_bar_in.brlan"
	.balign 4

.global lbl_8054CAD8
lbl_8054CAD8:
	.asciz "_hmMenu_bar_psh.brlan"
	.balign 4

.global lbl_8054CAF0
lbl_8054CAF0:
	.asciz "_link_msg_in.brlan"
	.balign 4

.global lbl_8054CB04
lbl_8054CB04:
	.asciz "_link_msg_out.brlan"

.global lbl_8054CB18
lbl_8054CB18:
	.asciz "_cmn_msg_in.brlan"
	.balign 4

.global lbl_8054CB2C
lbl_8054CB2C:
	.asciz "_cmn_msg_out.brlan"
	.balign 4

.global lbl_8054CB40
lbl_8054CB40:
	.asciz "_cntrl_up.brlan"

.global lbl_8054CB50
lbl_8054CB50:
	.asciz "_cntrl_wndw_opn.brlan"
	.balign 4

.global lbl_8054CB68
lbl_8054CB68:
	.asciz "_cntrl_dwn.brlan"
	.balign 4

.global lbl_8054CB7C
lbl_8054CB7C:
	.asciz "_hmMenu_bar_out.brlan"
	.balign 4

.global lbl_8054CB94
lbl_8054CB94:
	.asciz "_cmn_msg_rtrn.brlan"

.global lbl_8054CBA8
lbl_8054CBA8:
	.asciz "_12btn_on.brlan"
	.4byte lbl_8054CA80
	.4byte lbl_8054CA94
	.4byte lbl_8054CAA8
	.4byte lbl_8054CAC0
	.4byte lbl_8054CAD8
	.4byte lbl_8054CAF0
	.4byte lbl_8054CB04
	.4byte lbl_8054CB18
	.4byte lbl_8054CB2C
	.4byte lbl_8054CB40
	.4byte lbl_8054CB50
	.4byte lbl_8054CB68
	.4byte lbl_8054CB7C
	.4byte lbl_8054CB94
	.4byte lbl_8054CBA8

.global lbl_8054CBF4
lbl_8054CBF4:
	.asciz "ltrIcn_on"
	.balign 4

.global lbl_8054CC00
lbl_8054CC00:
	.asciz "optn_bar_psh"
	.balign 4

.global lbl_8054CC10
lbl_8054CC10:
	.asciz "close_bar_psh"
	.balign 4

.global lbl_8054CC20
lbl_8054CC20:
	.asciz "hmMenu_bar_in"
	.balign 4

.global lbl_8054CC30
lbl_8054CC30:
	.asciz "hmMenu_bar_psh"
	.balign 4

.global lbl_8054CC40
lbl_8054CC40:
	.asciz "link_msg_in"

.global lbl_8054CC4C
lbl_8054CC4C:
	.asciz "link_msg_out"
	.balign 4

.global lbl_8054CC5C
lbl_8054CC5C:
	.asciz "cmn_msg_in"
	.balign 4

.global lbl_8054CC68
lbl_8054CC68:
	.asciz "cmn_msg_out"

.global lbl_8054CC74
lbl_8054CC74:
	.asciz "cntrl_up"
	.balign 4

.global lbl_8054CC80
lbl_8054CC80:
	.asciz "cntrl_wndw_opn"
	.balign 4

.global lbl_8054CC90
lbl_8054CC90:
	.asciz "cntrl_dwn"
	.balign 4

.global lbl_8054CC9C
lbl_8054CC9C:
	.asciz "hmMenu_bar_out"
	.balign 4

.global lbl_8054CCAC
lbl_8054CCAC:
	.asciz "cmn_msg_rtrn"
	.balign 4

.global lbl_8054CCBC
lbl_8054CCBC:
	.asciz "12btn_on"
	.balign 4
	.4byte lbl_8054CBF4
	.4byte lbl_8054CC00
	.4byte lbl_8054CC10
	.4byte lbl_8054CC20
	.4byte lbl_8054CC30
	.4byte lbl_8054CC40
	.4byte lbl_8054CC4C
	.4byte lbl_8054CC5C
	.4byte lbl_8054CC68
	.4byte lbl_8054CC74
	.4byte lbl_8054CC80
	.4byte lbl_8054CC90
	.4byte lbl_8054CC9C
	.4byte lbl_8054CCAC
	.4byte lbl_8054CCBC

.global lbl_8054CD04
lbl_8054CD04:
	.asciz "_hmMenu_strt.brlan"
	.balign 4

.global lbl_8054CD18
lbl_8054CD18:
	.asciz "_hmMenu_fnsh.brlan"
	.balign 4

.global lbl_8054CD2C
lbl_8054CD2C:
	.asciz "_optn_bar_in.brlan"
	.balign 4

.global lbl_8054CD40
lbl_8054CD40:
	.asciz "_optn_bar_out.brlan"

.global lbl_8054CD54
lbl_8054CD54:
	.asciz "_optn_btn_in.brlan"
	.balign 4

.global lbl_8054CD68
lbl_8054CD68:
	.asciz "_optn_btn_psh.brlan"

.global lbl_8054CD7C
lbl_8054CD7C:
	.asciz "_vb_btn_wht_psh.brlan"
	.balign 4

.global lbl_8054CD94
lbl_8054CD94:
	.asciz "_optn_btn_out.brlan"

.global lbl_8054CDA8
lbl_8054CDA8:
	.asciz "_vb_btn_ylw_psh.brlan"
	.balign 4

.global lbl_8054CDC0
lbl_8054CDC0:
	.asciz "_sound_gry.brlan"
	.balign 4

.global lbl_8054CDD4
lbl_8054CDD4:
	.asciz "_sound_ylw.brlan"
	.balign 4

.global lbl_8054CDE8
lbl_8054CDE8:
	.asciz "_cmn_msg_btn_in.brlan"
	.balign 4

.global lbl_8054CE00
lbl_8054CE00:
	.asciz "_cmn_msg_btn_out.brlan"
	.balign 4

.global lbl_8054CE18
lbl_8054CE18:
	.asciz "_cmn_msg_btn_psh.brlan"
	.balign 4

.global lbl_8054CE30
lbl_8054CE30:
	.asciz "_vb_btn_ylw_ylw.brlan"
	.balign 4

.global lbl_8054CE48
lbl_8054CE48:
	.asciz "_btry_wink.brlan"
	.balign 4
	.4byte 0

.global lbl_8054CE60
lbl_8054CE60:
	.asciz "_btry_gry.brlan"

.global lbl_8054CE70
lbl_8054CE70:
	.asciz "_btry_wht.brlan"

.global lbl_8054CE80
lbl_8054CE80:
	.asciz "_btry_wink_gry.brlan"
	.balign 4

.global lbl_8054CE98
lbl_8054CE98:
	.asciz "_close_bar_in.brlan"

.global lbl_8054CEAC
lbl_8054CEAC:
	.asciz "_close_bar_out.brlan"
	.balign 4
	.4byte 0

.global lbl_8054CEC8
lbl_8054CEC8:
	.asciz "_btry_red.brlan"
	.4byte lbl_8054CD04
	.4byte lbl_8054CD18
	.4byte lbl_8054CD2C
	.4byte lbl_8054CD40
	.4byte lbl_8054CD54
	.4byte lbl_8054CD68
	.4byte lbl_8054CD7C
	.4byte lbl_8054CD94
	.4byte lbl_8054CDA8
	.4byte lbl_8054CDC0
	.4byte lbl_8054CDD4
	.4byte lbl_8054CDE8
	.4byte lbl_8054CE00
	.4byte lbl_8054CE18
	.4byte lbl_8054CE30
	.4byte lbl_8054CE48
	.4byte lbl_8054CE60
	.4byte lbl_8054CE70
	.4byte lbl_8054CE80
	.4byte lbl_8054CE98
	.4byte lbl_8054CEAC
	.4byte lbl_8054CEC8

.global lbl_8054CF30
lbl_8054CF30:
	.asciz "hmMenu_strt"

.global lbl_8054CF3C
lbl_8054CF3C:
	.asciz "hmMenu_fnsh"

.global lbl_8054CF48
lbl_8054CF48:
	.asciz "hmMenuBck_strt"
	.balign 4

.global lbl_8054CF58
lbl_8054CF58:
	.asciz "hmMenuBck_fnsh"
	.balign 4

.global lbl_8054CF68
lbl_8054CF68:
	.asciz "optn_bar_in"

.global lbl_8054CF74
lbl_8054CF74:
	.asciz "optn_bar_out"
	.balign 4

.global lbl_8054CF84
lbl_8054CF84:
	.asciz "optnBtn_00_inOut"
	.balign 4

.global lbl_8054CF98
lbl_8054CF98:
	.asciz "optnBtn_01_inOut"
	.balign 4

.global lbl_8054CFAC
lbl_8054CFAC:
	.asciz "optnBtn_10_inOut"
	.balign 4

.global lbl_8054CFC0
lbl_8054CFC0:
	.asciz "optnBtn_11_inOut"
	.balign 4

.global lbl_8054CFD4
lbl_8054CFD4:
	.asciz "optnBtn_20_inOut"
	.balign 4

.global lbl_8054CFE8
lbl_8054CFE8:
	.asciz "optnBtn_00_psh"
	.balign 4

.global lbl_8054CFF8
lbl_8054CFF8:
	.asciz "optnBtn_01_psh"
	.balign 4

.global lbl_8054D008
lbl_8054D008:
	.asciz "optnBtn_10_psh"
	.balign 4

.global lbl_8054D018
lbl_8054D018:
	.asciz "optnBtn_11_psh"
	.balign 4

.global lbl_8054D028
lbl_8054D028:
	.asciz "optnBtn_20_psh"
	.balign 4

.global lbl_8054D038
lbl_8054D038:
	.asciz "optnBtn_10_cntrl"
	.balign 4
	.4byte 0

.global lbl_8054D050
lbl_8054D050:
	.asciz "msgBtn_00_inOut"

.global lbl_8054D060
lbl_8054D060:
	.asciz "msgBtn_01_inOut"

.global lbl_8054D070
lbl_8054D070:
	.asciz "msgBtn_00_psh"
	.balign 4

.global lbl_8054D080
lbl_8054D080:
	.asciz "msgBtn_01_psh"
	.balign 4

.global lbl_8054D090
lbl_8054D090:
	.asciz "vol_00"
	.balign 4

.global lbl_8054D098
lbl_8054D098:
	.asciz "vol_01"
	.balign 4

.global lbl_8054D0A0
lbl_8054D0A0:
	.asciz "vol_02"
	.balign 4

.global lbl_8054D0A8
lbl_8054D0A8:
	.asciz "vol_03"
	.balign 4

.global lbl_8054D0B0
lbl_8054D0B0:
	.asciz "vol_04"
	.balign 4

.global lbl_8054D0B8
lbl_8054D0B8:
	.asciz "vol_05"
	.balign 4

.global lbl_8054D0C0
lbl_8054D0C0:
	.asciz "vol_06"
	.balign 4

.global lbl_8054D0C8
lbl_8054D0C8:
	.asciz "vol_07"
	.balign 4

.global lbl_8054D0D0
lbl_8054D0D0:
	.asciz "vol_08"
	.balign 4

.global lbl_8054D0D8
lbl_8054D0D8:
	.asciz "vol_09"
	.balign 4

.global lbl_8054D0E0
lbl_8054D0E0:
	.asciz "plyr_00"

.global lbl_8054D0E8
lbl_8054D0E8:
	.asciz "plyr_01"

.global lbl_8054D0F0
lbl_8054D0F0:
	.asciz "plyr_02"

.global lbl_8054D0F8
lbl_8054D0F8:
	.asciz "plyr_03"
	.4byte lbl_8054CF30
	.4byte lbl_8054CF3C
	.4byte lbl_8054CF48
	.4byte lbl_8054CF58
	.4byte lbl_8054CF68
	.4byte lbl_8054CF74
	.4byte lbl_8054CF84
	.4byte lbl_8054CF98
	.4byte lbl_8054CFAC
	.4byte lbl_8054CFC0
	.4byte lbl_8054CFD4
	.4byte lbl_8054CFE8
	.4byte lbl_8054CFF8
	.4byte lbl_8054D008
	.4byte lbl_8054D018
	.4byte lbl_8054D028
	.4byte lbl_8054D038
	.4byte lbl_8054D050
	.4byte lbl_8054D060
	.4byte lbl_8054D070
	.4byte lbl_8054D080
	.4byte lbl_8054D090
	.4byte lbl_8054D098
	.4byte lbl_8054D0A0
	.4byte lbl_8054D0A8
	.4byte lbl_8054D0B0
	.4byte lbl_8054D0B8
	.4byte lbl_8054D0C0
	.4byte lbl_8054D0C8
	.4byte lbl_8054D0D0
	.4byte lbl_8054D0D8
	.4byte lbl_8054D0E0
	.4byte lbl_8054D0E8
	.4byte lbl_8054D0F0
	.4byte lbl_8054D0F8

.global lbl_8054D18C
lbl_8054D18C:
	.asciz "let_icn_00"
	.balign 4

.global lbl_8054D198
lbl_8054D198:
	.asciz "N_plyr_00"
	.balign 4

.global lbl_8054D1A4
lbl_8054D1A4:
	.asciz "N_plyr_01"
	.balign 4

.global lbl_8054D1B0
lbl_8054D1B0:
	.asciz "N_plyr_02"
	.balign 4

.global lbl_8054D1BC
lbl_8054D1BC:
	.asciz "N_plyr_03"
	.balign 4
	.4byte lbl_8054D18C
	.4byte lbl_8054D198
	.4byte lbl_8054D1A4
	.4byte lbl_8054D1B0
	.4byte lbl_8054D1BC

.global lbl_8054D1DC
lbl_8054D1DC:
	.asciz "B_btn_00"
	.balign 4

.global lbl_8054D1E8
lbl_8054D1E8:
	.asciz "B_bar_10"
	.balign 4

.global lbl_8054D1F4
lbl_8054D1F4:
	.asciz "B_optnBtn_00"
	.balign 4

.global lbl_8054D204
lbl_8054D204:
	.asciz "B_optnBtn_01"
	.balign 4

.global lbl_8054D214
lbl_8054D214:
	.asciz "B_optnBtn_10"
	.balign 4

.global lbl_8054D224
lbl_8054D224:
	.asciz "B_optnBtn_11"
	.balign 4

.global lbl_8054D234
lbl_8054D234:
	.asciz "B_optnBtn_20"
	.balign 4

.global lbl_8054D244
lbl_8054D244:
	.asciz "B_BtnA"
	.balign 4

.global lbl_8054D24C
lbl_8054D24C:
	.asciz "B_BtnB"
	.balign 4

.global lbl_8054D254
lbl_8054D254:
	.asciz "cntrl_00"
	.balign 4


.global lbl_8054D260
lbl_8054D260:
	# ROM: 0x549360
	.4byte lbl_8054D1DC
	.4byte lbl_8054D1E8
	.4byte lbl_8054D1F4
	.4byte lbl_8054D204
	.4byte lbl_8054D214
	.4byte lbl_8054D224
	.4byte lbl_8054D234
	.4byte lbl_8054D244
	.4byte lbl_8054D24C
	.4byte lbl_8054D254

.global lbl_8054D288
lbl_8054D288:
	.asciz "T_msg_00"
	.balign 4

.global lbl_8054D294
lbl_8054D294:
	.asciz "T_msg_01"
	.balign 4

.global lbl_8054D2A0
lbl_8054D2A0:
	.asciz "T_Dialog"
	.balign 4


.global lbl_8054D2AC
lbl_8054D2AC:
	# ROM: 0x5493AC
	.4byte lbl_8054D288
	.4byte lbl_8054D294
	.4byte lbl_8054D2A0

.global lbl_8054D2B8
lbl_8054D2B8:
	.asciz "btryPwr_00_0"
	.balign 4

.global lbl_8054D2C8
lbl_8054D2C8:
	.asciz "btryPwr_00_1"
	.balign 4

.global lbl_8054D2D8
lbl_8054D2D8:
	.asciz "btryPwr_00_2"
	.balign 4

.global lbl_8054D2E8
lbl_8054D2E8:
	.asciz "btryPwr_00_3"
	.balign 4

.global lbl_8054D2F8
lbl_8054D2F8:
	.asciz "btryPwr_01_0"
	.balign 4

.global lbl_8054D308
lbl_8054D308:
	.asciz "btryPwr_01_1"
	.balign 4

.global lbl_8054D318
lbl_8054D318:
	.asciz "btryPwr_01_2"
	.balign 4

.global lbl_8054D328
lbl_8054D328:
	.asciz "btryPwr_01_3"
	.balign 4

.global lbl_8054D338
lbl_8054D338:
	.asciz "btryPwr_02_0"
	.balign 4

.global lbl_8054D348
lbl_8054D348:
	.asciz "btryPwr_02_1"
	.balign 4

.global lbl_8054D358
lbl_8054D358:
	.asciz "btryPwr_02_2"
	.balign 4

.global lbl_8054D368
lbl_8054D368:
	.asciz "btryPwr_02_3"
	.balign 4

.global lbl_8054D378
lbl_8054D378:
	.asciz "btryPwr_03_0"
	.balign 4

.global lbl_8054D388
lbl_8054D388:
	.asciz "btryPwr_03_1"
	.balign 4

.global lbl_8054D398
lbl_8054D398:
	.asciz "btryPwr_03_2"
	.balign 4

.global lbl_8054D3A8
lbl_8054D3A8:
	.asciz "btryPwr_03_3"
	.balign 4


.global lbl_8054D3B8
lbl_8054D3B8:
	# ROM: 0x5494B8
	.4byte lbl_8054D2B8
	.4byte lbl_8054D2C8
	.4byte lbl_8054D2D8
	.4byte lbl_8054D2E8
	.4byte lbl_8054D2F8
	.4byte lbl_8054D308
	.4byte lbl_8054D318
	.4byte lbl_8054D328
	.4byte lbl_8054D338
	.4byte lbl_8054D348
	.4byte lbl_8054D358
	.4byte lbl_8054D368
	.4byte lbl_8054D378
	.4byte lbl_8054D388
	.4byte lbl_8054D398
	.4byte lbl_8054D3A8
	.4byte 0x61726300
	.4byte 0
	.asciz "back_01"
	.asciz "N_cntrl_01"
	.balign 4
	.4byte 0
	.asciz "back_00"
	.asciz "back_02"


.global lbl_8054D428
lbl_8054D428:
	# ROM: 0x549528
	.4byte lbl_80324E0C
	.4byte lbl_80324FD8
	.4byte lbl_803265BC
	.4byte lbl_80325248
	.4byte lbl_80325340
	.4byte lbl_80325460
	.4byte lbl_80325460
	.4byte lbl_80325728
	.4byte lbl_803257EC
	.4byte lbl_803259A4
	.4byte lbl_803259F8
	.4byte lbl_80325AF0
	.4byte lbl_80325B34
	.4byte lbl_80325B6C
	.4byte lbl_80325C64
	.4byte lbl_80325DF4
	.4byte lbl_80325E78
	.4byte lbl_80325F28
	.4byte lbl_803261A4
	.4byte lbl_803261B0


.global lbl_8054D478
lbl_8054D478:
	# ROM: 0x549578
	.4byte lbl_80328514
	.4byte lbl_803285D4
	.4byte lbl_80328B88
	.4byte lbl_80328C58
	.4byte lbl_80328D28
	.4byte lbl_80328DF8
	.4byte lbl_80328EC8
	.4byte lbl_80328F98
	.4byte lbl_80329068
	.4byte lbl_803285D4


.global lbl_8054D4A0
lbl_8054D4A0:
	# ROM: 0x5495A0
	.4byte lbl_80329364
	.4byte lbl_803293D8
	.4byte lbl_8032990C
	.4byte lbl_80329994
	.4byte lbl_80329A1C
	.4byte lbl_80329AA4
	.4byte lbl_80329B2C
	.4byte lbl_80329BB4
	.4byte lbl_80329C3C
	.4byte lbl_803293D8


.global lbl_8054D4C8
lbl_8054D4C8:
	# ROM: 0x5495C8
	.4byte lbl_80329FD4
	.4byte lbl_8032A068
	.4byte lbl_8032A1C0
	.4byte lbl_8032A48C
	.4byte lbl_8032A75C
	.4byte lbl_8032A990
	.4byte lbl_8032AB1C
	.4byte lbl_8032ACE0
	.4byte lbl_8032AE48
	.4byte lbl_8032A068


.global lbl_8054D4F0
lbl_8054D4F0:
	# ROM: 0x5495F0
	.4byte lbl_8054D530
	.4byte 0
	.4byte onEvent__Q210homebutton22HomeButtonEventHandlerFUlUlPv
	.4byte setManager__Q310homebutton3gui12EventHandlerFPQ310homebutton3gui7Manager

.global lbl_8054D500
lbl_8054D500:
	.asciz "homebutton::HomeButtonEventHandler"
	.balign 4

.global lbl_8054D524
lbl_8054D524:
	.4byte lbl_8054D568
	.4byte 0
	.4byte 0

.global lbl_8054D530
lbl_8054D530:
	.4byte lbl_8054D500
	.4byte lbl_8054D524
	.4byte lbl_8054D568
	.4byte 0
	.4byte onEvent__Q310homebutton3gui12EventHandlerFUlUlPv
	.4byte setManager__Q310homebutton3gui12EventHandlerFPQ310homebutton3gui7Manager

.global lbl_8054D548
lbl_8054D548:
	.asciz "homebutton::gui::EventHandler"
	.balign 4

.global lbl_8054D568
lbl_8054D568:
	.4byte lbl_8054D548
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "homebutton::gui::Interface"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8054D5B8
lbl_8054D5B8:
	# ROM: 0x5496B8
	.4byte lbl_8054D608
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt18AnimTransformBasicFv
	.4byte SetResource__Q36nw4hbm3lyt18AnimTransformBasicFPCQ46nw4hbm3lyt3res14AnimationBlockPQ36nw4hbm3lyt16ResourceAccessor
	.4byte Bind__Q36nw4hbm3lyt18AnimTransformBasicFPQ36nw4hbm3lyt4Paneb
	.4byte Bind__Q36nw4hbm3lyt18AnimTransformBasicFPQ36nw4hbm3lyt8Material
	.4byte Animate__Q36nw4hbm3lyt18AnimTransformBasicFUlPQ36nw4hbm3lyt4Pane
	.4byte Animate__Q36nw4hbm3lyt18AnimTransformBasicFUlPQ36nw4hbm3lyt8Material

.global lbl_8054D5D8
lbl_8054D5D8:
	.asciz "nw4hbm::lyt::AnimTransformBasic"

.global lbl_8054D5F8
lbl_8054D5F8:
	.4byte lbl_8054D630
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054D608
lbl_8054D608:
	.4byte lbl_8054D5D8
	.4byte lbl_8054D5F8

.global lbl_8054D610
lbl_8054D610:
	.asciz "nw4hbm::lyt::AnimTransform"
	.balign 4
	.4byte 0

.global lbl_8054D630
lbl_8054D630:
	.4byte lbl_8054D610
	.4byte 0


.global lbl_8054D638
lbl_8054D638:
	# ROM: 0x549738
	.4byte 0x2E000000


.global lbl_8054D63C
lbl_8054D63C:
	# ROM: 0x54973C
	.4byte 0x2E2E0000


.global lbl_8054D640
lbl_8054D640:
	# ROM: 0x549740
	.4byte lbl_8054D688
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt19ArcResourceAccessorFv
	.4byte GetResource__Q36nw4hbm3lyt19ArcResourceAccessorFUlPCcPUl
	.4byte GetFont__Q36nw4hbm3lyt24MultiArcResourceAccessorFPCc

.global lbl_8054D654
lbl_8054D654:
	.asciz "nw4hbm::lyt::ArcResourceAccessor"
	.balign 4

.global lbl_8054D678
lbl_8054D678:
	.4byte lbl_8054D6B0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054D688
lbl_8054D688:
	.4byte lbl_8054D654
	.4byte lbl_8054D678

.global lbl_8054D690
lbl_8054D690:
	.asciz "nw4hbm::lyt::ResourceAccessor"
	.balign 4

.global lbl_8054D6B0
lbl_8054D6B0:
	.4byte lbl_8054D690
	.4byte 0


.global lbl_8054D6B8
lbl_8054D6B8:
	# ROM: 0x5497B8
	.4byte lbl_8054D748
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8BoundingFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt8BoundingCFv
	.4byte func_80331CD0
	.4byte func_80331FD0
	.4byte DrawSelf__Q36nw4hbm3lyt8BoundingFRCQ36nw4hbm3lyt8DrawInfo
	.4byte func_803320E0
	.4byte func_80332170
	.4byte func_80331AC0
	.4byte func_80331AD0
	.4byte func_80331AE0
	.4byte func_80331B10
	.4byte func_80331B40
	.4byte func_80331B50
	.4byte func_80331B60
	.4byte func_80331C10
	.4byte func_80332230
	.4byte func_80332250
	.4byte func_803322E0
	.4byte func_80332300
	.4byte func_803323E0
	.4byte func_80332460
	.4byte func_80332710
	.4byte func_80332520

.global lbl_8054D71C
lbl_8054D71C:
	.asciz "nw4hbm::lyt::Bounding"
	.balign 4

.global lbl_8054D734
lbl_8054D734:
	.4byte lbl_8054D798
	.4byte 0
	.4byte lbl_8054D770
	.4byte 0
	.4byte 0

.global lbl_8054D748
lbl_8054D748:
	.4byte lbl_8054D71C
	.4byte lbl_8054D734

.global lbl_8054D750
lbl_8054D750:
	.asciz "nw4hbm::lyt::Pane"
	.balign 4

.global lbl_8054D764
lbl_8054D764:
	.4byte lbl_8054D798
	.4byte 0
	.4byte 0

.global lbl_8054D770
lbl_8054D770:
	.4byte lbl_8054D750
	.4byte lbl_8054D764

.global lbl_8054D778
lbl_8054D778:
	.asciz "nw4hbm::lyt::detail::PaneBase"
	.balign 4

.global lbl_8054D798
lbl_8054D798:
	.4byte lbl_8054D778
	.4byte 0


.global lbl_8054D7A0
lbl_8054D7A0:
	# ROM: 0x5498A0
	.4byte lbl_8054D7C8
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8DrawInfoFv

.global lbl_8054D7AC
lbl_8054D7AC:
	.asciz "nw4hbm::lyt::DrawInfo"
	.balign 4
	.4byte 0

.global lbl_8054D7C8
lbl_8054D7C8:
	.4byte lbl_8054D7AC
	.4byte 0


.global lbl_8054D7D0
lbl_8054D7D0:
	# ROM: 0x5498D0
	.4byte lbl_8054D7F0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt5GroupFv

.global lbl_8054D7DC
lbl_8054D7DC:
	.asciz "nw4hbm::lyt::Group"
	.balign 4

.global lbl_8054D7F0
lbl_8054D7F0:
	.4byte lbl_8054D7DC
	.4byte 0


.global lbl_8054D7F8
lbl_8054D7F8:
	# ROM: 0x5498F8
	.4byte lbl_8054D840
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt6LayoutFv
	.4byte Build__Q36nw4hbm3lyt6LayoutFPCvPQ36nw4hbm3lyt16ResourceAccessor
	.4byte CreateAnimTransform__Q36nw4hbm3lyt6LayoutFPCvPQ36nw4hbm3lyt16ResourceAccessor
	.4byte BindAnimation__Q36nw4hbm3lyt6LayoutFPQ36nw4hbm3lyt13AnimTransform
	.4byte UnbindAnimation__Q36nw4hbm3lyt6LayoutFPQ36nw4hbm3lyt13AnimTransform
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt6LayoutFv
	.4byte SetAnimationEnable__Q36nw4hbm3lyt6LayoutFPQ36nw4hbm3lyt13AnimTransformb
	.4byte CalculateMtx__Q36nw4hbm3lyt6LayoutFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Draw__Q36nw4hbm3lyt6LayoutFRCQ36nw4hbm3lyt8DrawInfo
	.4byte Animate__Q36nw4hbm3lyt6LayoutFUl
	.4byte SetTagProcessor__Q36nw4hbm3lyt6LayoutFPQ36nw4hbm2ut19TagProcessorBase_w_

.global lbl_8054D82C
lbl_8054D82C:
	.asciz "nw4hbm::lyt::Layout"

.global lbl_8054D840
lbl_8054D840:
	.4byte lbl_8054D82C
	.4byte 0

.global lbl_8054D848
lbl_8054D848:
	# ROM: 0x549948
	.4byte 0x0000001F
	.4byte 0x0000001B
	.4byte 0x00000017
	.4byte 0x00000013
	.4byte 0x0000001E
	.4byte 0x0000001A
	.4byte 0x00000016
	.4byte 0x00000012


.global lbl_8054D868
lbl_8054D868:
	# ROM: 0x549968
	.4byte 0x0000001F
	.4byte 0x0000001B
	.4byte 0x00000017
	.4byte 0x00000013
	.4byte 0x0000001E
	.4byte 0x0000001A
	.4byte 0x00000016
	.4byte 0x00000012


.global lbl_8054D888
lbl_8054D888:
	# ROM: 0x549988
	.4byte lbl_8054D8C8
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt8MaterialFv
	.4byte SetupGX__Q36nw4hbm3lyt8MaterialFbUc
	.4byte BindAnimation__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransform
	.4byte UnbindAnimation__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransform
	.4byte UnbindAllAnimation__Q36nw4hbm3lyt8MaterialFv
	.4byte Animate__Q36nw4hbm3lyt8MaterialFv
	.4byte FindAnimationLink__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransform
	.4byte SetAnimationEnable__Q36nw4hbm3lyt8MaterialFPQ36nw4hbm3lyt13AnimTransformb

.global lbl_8054D8B0
lbl_8054D8B0:
	.asciz "nw4hbm::lyt::Material"
	.balign 4

.global lbl_8054D8C8
lbl_8054D8C8:
	.4byte lbl_8054D8B0
	.4byte 0


.global lbl_8054D8D0
lbl_8054D8D0:
	# ROM: 0x5499D0
	.4byte lbl_8054D770
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt4PaneFv
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt4PaneCFv
	.4byte func_80331CD0
	.4byte func_80331FD0
	.4byte func_80332060
	.4byte func_803320E0
	.4byte func_80332170
	.4byte func_80331AC0
	.4byte func_80331AD0
	.4byte func_80331AE0
	.4byte func_80331B10
	.4byte func_80331B40
	.4byte func_80331B50
	.4byte func_80331B60
	.4byte func_80331C10
	.4byte func_80332230
	.4byte func_80332250
	.4byte func_803322E0
	.4byte func_80332300
	.4byte func_803323E0
	.4byte func_80332460
	.4byte func_80332710
	.4byte func_80332520
	.4byte 0


.global __vt__8054D938
__vt__8054D938:
	# ROM: 0x549A38
	.4byte lbl_8054D9D0
	.4byte 0
	.4byte func_80332860
	.4byte GetRuntimeTypeInfo__Q36nw4hbm3lyt7PictureCFv
	.4byte func_80331CD0
	.4byte func_80331FD0
	.4byte DrawSelf__Q36nw4hbm3lyt7PictureFRCQ36nw4hbm3lyt8DrawInfo
	.4byte func_803320E0
	.4byte func_80332170
	.4byte func_80332AF0
	.4byte func_80332B10
	.4byte func_80331AE0
	.4byte func_80331B10
	.4byte GetVtxColorElement__Q36nw4hbm3lyt7PictureCFUl
	.4byte SetVtxColorElement__Q36nw4hbm3lyt7PictureFUlUc
	.4byte func_80331B60
	.4byte func_80331C10
	.4byte func_80332230
	.4byte func_80332250
	.4byte func_803322E0
	.4byte func_80332300
	.4byte func_803323E0
	.4byte func_80332460
	.4byte func_80332710
	.4byte func_80332520
	.4byte func_80332930
	.4byte func_80332980

.global lbl_8054D9A4
lbl_8054D9A4:
	.asciz "nw4hbm::lyt::Picture"
	.balign 4

.global lbl_8054D9BC
lbl_8054D9BC:
	.4byte lbl_8054D798
	.4byte 0
	.4byte lbl_8054D770
	.4byte 0
	.4byte 0

.global lbl_8054D9D0
lbl_8054D9D0:
	.4byte lbl_8054D9A4
	.4byte lbl_8054D9BC


.global lbl_8054D9D8
lbl_8054D9D8:
	# ROM: 0x549AD8
	.4byte lbl_8054D6B0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt16ResourceAccessorFv
	.4byte 0
	.4byte GetFont__Q36nw4hbm3lyt16ResourceAccessorFPCc
	.4byte 0
.global lbl_8054D9F0
lbl_8054D9F0:
	.4byte 0x000A0000


.global __vt__8054D9F4
__vt__8054D9F4:
	# ROM: 0x549AF4
	.4byte lbl_8054DA98
	.4byte 0
	.4byte func_80332FB0
	.4byte func_80334110
	.4byte func_80331CD0
	.4byte func_80331FD0
	.4byte func_803331E0
	.4byte func_803320E0
	.4byte func_80332170
	.4byte func_80333140
	.4byte func_80333160
	.4byte func_80331AE0
	.4byte func_80331B10
	.4byte func_803331A0
	.4byte func_803331C0
	.4byte func_80331B60
	.4byte func_80331C10
	.4byte func_80332230
	.4byte func_80332250
	.4byte func_803322E0
	.4byte func_80332300
	.4byte func_803323E0
	.4byte func_80332460
	.4byte func_80332710
	.4byte func_80332520
	.4byte func_80333D50
	.4byte FreeStringBuffer__Q36nw4hbm3lyt7TextBoxFv
	.4byte SetString__Q36nw4hbm3lyt7TextBoxFPCwUs
	.4byte func_80333E90

.global lbl_8054DA68
lbl_8054DA68:
	.asciz "nw4hbm::lyt::TextBox"
	.balign 4

.global lbl_8054DA80
lbl_8054DA80:
	.4byte lbl_8054D798
	.4byte 0
	.4byte lbl_8054D770
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054DA98
lbl_8054DA98:
	.4byte lbl_8054DA68
	.4byte lbl_8054DA80


.global lbl_8054DAA0
lbl_8054DAA0:
	# ROM: 0x549BA0
	.4byte 0x00000100
	.4byte 0x00010101
	.4byte 0x00010100
	.4byte 0x00000101
	.4byte 0x00010001
	.4byte 0x00010101
	.4byte 0x00000100
	.4byte 0x00010001
	.4byte 0x00000101
	.4byte 0x01000100
	.4byte 0x01010001
	.4byte 0x01000000
	.4byte 0x00010100
	.4byte 0x01010000
	.4byte 0x00010100


.global __vt__Q36nw4hbm3lyt6Window
__vt__Q36nw4hbm3lyt6Window:
	# ROM: 0x549BDC
	.4byte lbl_8054DB80
	.4byte 0
	.4byte func_80334350
	.4byte func_80336610
	.4byte func_80331CD0
	.4byte func_80331FD0
	.4byte func_80334780
	.4byte func_803320E0
	.4byte func_803348C0
	.4byte func_803346F0
	.4byte func_80334710
	.4byte func_80331AE0
	.4byte func_80331B10
	.4byte func_80334740
	.4byte func_80334760
	.4byte func_80331B60
	.4byte func_803344A0
	.4byte func_80332230
	.4byte func_80332250
	.4byte func_803322E0
	.4byte func_80334950
	.4byte func_803345A0
	.4byte func_80334650
	.4byte func_80332710
	.4byte func_80332520
	.4byte func_80336600
	.4byte func_803365D0
	.4byte func_803349E0
	.4byte func_80334AF0
	.4byte func_803350D0
	.4byte func_803357A0

.global lbl_8054DB58
lbl_8054DB58:
	.asciz "nw4hbm::lyt::Window"

.global lbl_8054DB6C
lbl_8054DB6C:
	.4byte lbl_8054D798
	.4byte 0
	.4byte lbl_8054D770
	.4byte 0
	.4byte 0

.global lbl_8054DB80
lbl_8054DB80:
	.4byte lbl_8054DB58
	.4byte lbl_8054DB6C


.global lbl_8054DB88
lbl_8054DB88:
	# ROM: 0x549C88
	.4byte 0
	.float 1.0
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3D48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3DC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC73ABD
	.4byte 0xBB587725
	.4byte 0x3E164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC68017
	.4byte 0xBB7F865D
	.4byte 0x3E2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC11A11
	.4byte 0xBBE00086
	.4byte 0x3E94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3EA09AED
	.4byte 0x3F731444
	.4byte 0x3CBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3ECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3EDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB27675
	.4byte 0xBC393038
	.4byte 0x3EF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB022DD
	.4byte 0xBC41E365
	.4byte 0x3EFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CADB61C
	.4byte 0xBC4A7935
	.4byte 0x3F039C41
	.4byte 0x3F5B9421
	.4byte 0x3CAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F136827
	.4byte 0x3F514D40
	.4byte 0x3CA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA00193
	.4byte 0xBC737B8D
	.4byte 0x3F1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3C9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F226794
	.4byte 0x3F45E3FC
	.4byte 0x3C99D884
	.4byte 0xBC817332
	.4byte 0x3F273659
	.4byte 0x3F41D873
	.4byte 0x3C969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F3085C2
	.4byte 0x3F396840
	.4byte 0x3C8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F396840
	.4byte 0x3F3085C2
	.4byte 0x3C88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F41D873
	.4byte 0x3F273659
	.4byte 0x3C817332
	.4byte 0xBC99D884
	.4byte 0x3F45E3FC
	.4byte 0x3F226794
	.4byte 0x3C7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C737B8D
	.4byte 0xBCA00193
	.4byte 0x3F4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F514D40
	.4byte 0x3F136827
	.4byte 0x3C637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F5B9421
	.4byte 0x3F039C41
	.4byte 0x3C4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C41E365
	.4byte 0xBCB022DD
	.4byte 0x3F61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C393038
	.4byte 0xBCB27675
	.4byte 0x3F64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F731444
	.4byte 0x3EA09AED
	.4byte 0x3BF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BE00086
	.4byte 0xBCC11A11
	.4byte 0x3F76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F79C79B
	.4byte 0x3E605C03
	.4byte 0x3BA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3B9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3AC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7FB107
	.4byte 0x3D48FB87
	.4byte 0x3A6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.float 1.0
	.4byte 0
	.4byte 0xB99DCF89
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0xBCC90A35
	.4byte 0xBA6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FB107
	.4byte 0xBD48FB87
	.4byte 0xBAC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBB0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBBA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F79C79B
	.4byte 0xBE605C03
	.4byte 0xBBB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBE00086
	.4byte 0xBCC11A11
	.4byte 0x3F74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F731444
	.4byte 0xBEA09AED
	.4byte 0xBC02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC393038
	.4byte 0xBCB27675
	.4byte 0x3F61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC41E365
	.4byte 0xBCB022DD
	.4byte 0x3F5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5B9421
	.4byte 0xBF039C41
	.4byte 0xBC52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F514D40
	.4byte 0xBF136827
	.4byte 0xBC6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC737B8D
	.4byte 0xBCA00193
	.4byte 0x3F49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F45E3FC
	.4byte 0xBF226794
	.4byte 0xBC817332
	.4byte 0xBC99D884
	.4byte 0x3F41D873
	.4byte 0xBF273659
	.4byte 0xBC852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F396840
	.4byte 0xBF3085C2
	.4byte 0xBC8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3085C2
	.4byte 0xBF396840
	.4byte 0xBC934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F273659
	.4byte 0xBF41D873
	.4byte 0xBC99D884
	.4byte 0xBC817332
	.4byte 0x3F226794
	.4byte 0xBF45E3FC
	.4byte 0xBC9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBCA00193
	.4byte 0xBC737B8D
	.4byte 0x3F187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F136827
	.4byte 0xBF514D40
	.4byte 0xBCA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F039C41
	.4byte 0xBF5B9421
	.4byte 0xBCADB61C
	.4byte 0xBC4A7935
	.4byte 0x3EFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCB022DD
	.4byte 0xBC41E365
	.4byte 0x3EF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB27675
	.4byte 0xBC393038
	.4byte 0x3EE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3ECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3EC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EA09AED
	.4byte 0xBF731444
	.4byte 0xBCBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3E94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCC11A11
	.4byte 0xBBE00086
	.4byte 0x3E888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC68017
	.4byte 0xBB7F865D
	.4byte 0x3E164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC73ABD
	.4byte 0xBB587725
	.4byte 0x3DFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3D96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0
	.float -1.0
	.4byte 0xBCC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBD48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBDC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC73ABD
	.4byte 0x3B587725
	.4byte 0xBE164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC68017
	.4byte 0x3B7F865D
	.4byte 0xBE2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC11A11
	.4byte 0x3BE00086
	.4byte 0xBE94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBEA09AED
	.4byte 0xBF731444
	.4byte 0xBCBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBEDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB27675
	.4byte 0x3C393038
	.4byte 0xBEF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB022DD
	.4byte 0x3C41E365
	.4byte 0xBEFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCADB61C
	.4byte 0x3C4A7935
	.4byte 0xBF039C41
	.4byte 0xBF5B9421
	.4byte 0xBCAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF136827
	.4byte 0xBF514D40
	.4byte 0xBCA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA00193
	.4byte 0x3C737B8D
	.4byte 0xBF1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBC9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF226794
	.4byte 0xBF45E3FC
	.4byte 0xBC99D884
	.4byte 0x3C817332
	.4byte 0xBF273659
	.4byte 0xBF41D873
	.4byte 0xBC969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF3085C2
	.4byte 0xBF396840
	.4byte 0xBC8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF396840
	.4byte 0xBF3085C2
	.4byte 0xBC88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF41D873
	.4byte 0xBF273659
	.4byte 0xBC817332
	.4byte 0x3C99D884
	.4byte 0xBF45E3FC
	.4byte 0xBF226794
	.4byte 0xBC7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC737B8D
	.4byte 0x3CA00193
	.4byte 0xBF4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF514D40
	.4byte 0xBF136827
	.4byte 0xBC637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF5B9421
	.4byte 0xBF039C41
	.4byte 0xBC4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC41E365
	.4byte 0x3CB022DD
	.4byte 0xBF61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC393038
	.4byte 0x3CB27675
	.4byte 0xBF64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF731444
	.4byte 0xBEA09AED
	.4byte 0xBBF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBE00086
	.4byte 0x3CC11A11
	.4byte 0xBF76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF79C79B
	.4byte 0xBE605C03
	.4byte 0xBBA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBB9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBAC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7FB107
	.4byte 0xBD48FB87
	.4byte 0xBA6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.float -1.0
	.4byte 0x80000000
	.4byte 0x399DCF89
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0x3CC90A35
	.4byte 0x3A6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FB107
	.4byte 0x3D48FB87
	.4byte 0x3AC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3B0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3BA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF79C79B
	.4byte 0x3E605C03
	.4byte 0x3BB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BE00086
	.4byte 0x3CC11A11
	.4byte 0xBF74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF731444
	.4byte 0x3EA09AED
	.4byte 0x3C02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C393038
	.4byte 0x3CB27675
	.4byte 0xBF61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C41E365
	.4byte 0x3CB022DD
	.4byte 0xBF5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5B9421
	.4byte 0x3F039C41
	.4byte 0x3C52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF514D40
	.4byte 0x3F136827
	.4byte 0x3C6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C737B8D
	.4byte 0x3CA00193
	.4byte 0xBF49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF45E3FC
	.4byte 0x3F226794
	.4byte 0x3C817332
	.4byte 0x3C99D884
	.4byte 0xBF41D873
	.4byte 0x3F273659
	.4byte 0x3C852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF396840
	.4byte 0x3F3085C2
	.4byte 0x3C8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3085C2
	.4byte 0x3F396840
	.4byte 0x3C934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF273659
	.4byte 0x3F41D873
	.4byte 0x3C99D884
	.4byte 0x3C817332
	.4byte 0xBF226794
	.4byte 0x3F45E3FC
	.4byte 0x3C9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3CA00193
	.4byte 0x3C737B8D
	.4byte 0xBF187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF136827
	.4byte 0x3F514D40
	.4byte 0x3CA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF039C41
	.4byte 0x3F5B9421
	.4byte 0x3CADB61C
	.4byte 0x3C4A7935
	.4byte 0xBEFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CB022DD
	.4byte 0x3C41E365
	.4byte 0xBEF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB27675
	.4byte 0x3C393038
	.4byte 0xBEE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBEC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEA09AED
	.4byte 0x3F731444
	.4byte 0x3CBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBE94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CC11A11
	.4byte 0x3BE00086
	.4byte 0xBE888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC68017
	.4byte 0x3B7F865D
	.4byte 0xBE164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC73ABD
	.4byte 0x3B587725
	.4byte 0xBDFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBD96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0x80000000
	.float 1.0
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89


.global lbl_8054EB98
lbl_8054EB98:
	# ROM: 0x54AC98
	.4byte 0
	.4byte 0x3FA2EBF1
	.4byte 0x3FA2EBF1
	.4byte 0x3FA29AB1
	.4byte 0x4022C351
	.4byte 0x3FA1F923
	.4byte 0x4073BFE2
	.4byte 0x3FA10925
	.4byte 0x40A2223B
	.4byte 0x3F9FCD71
	.4byte 0x40CA1597
	.4byte 0x3F9E498C
	.4byte 0x40F1A7FA
	.4byte 0x3F9C81AB
	.4byte 0x410C6432
	.4byte 0x3F9A7A9B
	.4byte 0x411FB386
	.4byte 0x3F98399D
	.4byte 0x4132BAB9
	.4byte 0x3F95C44B
	.4byte 0x41457343
	.4byte 0x3F932075
	.4byte 0x4157D751
	.4byte 0x3F905408
	.4byte 0x4169E1D2
	.4byte 0x3F8D64EB
	.4byte 0x417B8E70
	.4byte 0x3F8A58EC
	.4byte 0x41866CC7
	.4byte 0x3F8735A9
	.4byte 0x418EE021
	.4byte 0x3F84007D
	.4byte 0x41972029
	.4byte 0x3F80BE73
	.4byte 0x419F2C10
	.4byte 0x3F7AE877
	.4byte 0x41A70354
	.4byte 0x3F744C4A
	.4byte 0x41AEA5B6
	.4byte 0x3F6DB032
	.4byte 0x41B61338
	.4byte 0x3F671B36
	.4byte 0x41BD4C11
	.4byte 0x3F60938F
	.4byte 0x41C450AE
	.4byte 0x3F5A1EB2
	.4byte 0x41CB21A3
	.4byte 0x3F53C157
	.4byte 0x41D1BFAE
	.4byte 0x3F4D7F84
	.4byte 0x41D82BAA
	.4byte 0x3F475C97
	.4byte 0x41DE668F
	.4byte 0x3F415B59
	.4byte 0x41E4716A
	.4byte 0x3F3B7E02
	.4byte 0x41EA4D5A
	.4byte 0x3F35C652
	.4byte 0x41EFFB8C
	.4byte 0x3F303593
	.4byte 0x41F57D39
	.4byte 0x3F2ACCAE
	.4byte 0x41FAD39E
	.4byte 0x3F258C33
	.4byte 0x42000000
	.4byte 0x3F207467


.global lbl_8054ECA0
lbl_8054ECA0:
	# ROM: 0x54ADA0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336970
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_803369F0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336A30
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336A10


.global __vt__8054ECD0
__vt__8054ECD0:
	# ROM: 0x54ADD0
	.4byte lbl_8054ED50
	.4byte 0
	.4byte func_80338800
	.4byte func_80338B60
	.4byte func_80338B70
	.4byte func_80338B80
	.4byte func_80338B90
	.4byte func_80338BB0
	.4byte func_80338BD0
	.4byte func_80338BE0
	.4byte func_80338BF0
	.4byte func_80338C00
	.4byte func_80338C10
	.4byte func_80338C20
	.4byte func_80338C30
	.4byte func_80338C50
	.4byte func_80338C70
	.4byte func_80338D10
	.4byte func_80338D20
	.4byte func_80338D70
	.4byte func_80338E70
	.4byte func_80338F20

#dol offset: 0x54ae28
.global lbl_8054ED28
lbl_8054ED28:
	.asciz "nw4hbm::ut::ResFont"

.global lbl_8054ED3C
lbl_8054ED3C:
	.4byte lbl_8054EDA8
	.4byte 0
	.4byte lbl_8054ED88
	.4byte 0
	.4byte 0

.global lbl_8054ED50
lbl_8054ED50:
	.4byte lbl_8054ED28
	.4byte lbl_8054ED3C

.global lbl_8054ED58
lbl_8054ED58:
	.asciz "nw4hbm::ut::detail::ResFontBase"

.global lbl_8054ED78
lbl_8054ED78:
	.4byte lbl_8054EDA8
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054ED88
lbl_8054ED88:
	.4byte lbl_8054ED58
	.4byte lbl_8054ED78

.global lbl_8054ED90
lbl_8054ED90:
	.asciz "nw4hbm::ut::Font"
	.balign 4
	.4byte 0

.global lbl_8054EDA8
lbl_8054EDA8:
	.4byte lbl_8054ED90
	.4byte 0

.global lbl_8054EDB0
lbl_8054EDB0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336A10
	.4byte 0


.global lbl_8054EDC0
lbl_8054EDC0:
	# ROM: 0x54AEC0
	.4byte lbl_8054ED88
	.4byte 0
	.4byte func_80338B10
	.4byte func_80338B60
	.4byte func_80338B70
	.4byte func_80338B80
	.4byte func_80338B90
	.4byte func_80338BB0
	.4byte func_80338BD0
	.4byte func_80338BE0
	.4byte func_80338BF0
	.4byte func_80338C00
	.4byte func_80338C10
	.4byte func_80338C20
	.4byte func_80338C30
	.4byte func_80338C50
	.4byte func_80338C70
	.4byte func_80338D10
	.4byte func_80338D20
	.4byte func_80338D70
	.4byte func_80338E70
	.4byte func_80338F20


.global __vt__8054EE18
__vt__8054EE18:
	# ROM: 0x54AF18
	.4byte lbl_8054EDA8
	.4byte 0
	.4byte func_80333F60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__8054EE70
__vt__8054EE70:
	# ROM: 0x54AF70
	.4byte lbl_8054EEB0
	.4byte 0
	.4byte func_80339680
	.4byte func_803396C0
	.4byte func_80339820

.global lbl_8054EE84
lbl_8054EE84:
	.asciz "nw4hbm::ut::TagProcessorBase<wchar_t>"
	.balign 4
	.4byte 0

.global lbl_8054EEB0
lbl_8054EEB0:
	.4byte lbl_8054EE84
	.4byte 0

.global lbl_8054EEB8
lbl_8054EEB8:
	# ROM: 0x54AFB8
	.4byte lbl_8054EEF0
	.4byte 0
	.4byte __dt__Q36nw4hbm2ut19TagProcessorBase_c_Fv
	.4byte func_80339160
	.4byte func_803392C0

.global lbl_8054EECC
lbl_8054EECC:
	.asciz "nw4hbm::ut::TagProcessorBase<char>"
	.balign 4

.global lbl_8054EEF0
lbl_8054EEF0:
	.4byte lbl_8054EECC
	.4byte 0


.global lbl_8054EEF8
lbl_8054EEF8:
	# ROM: 0x54AFF8
	.4byte 0x00000100


.global lbl_8054EEFC
lbl_8054EEFC:
	# ROM: 0x54AFFC
	.4byte 0x00000100


.global lbl_8054EF00
lbl_8054EF00:
	# ROM: 0x54B000
	.4byte 0x00000001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x0009000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000E
	.4byte 0x000E000E
	.4byte 0x000E000E
	.4byte 0x000E000F
	.4byte 0x000F000F
	.4byte 0x000F000F
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100011
	.4byte 0x00110011
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00120012
	.4byte 0x00120013
	.4byte 0x00130013
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00170018
	.4byte 0x00180018
	.4byte 0x00180019
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001B001C
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0x001D001E
	.4byte 0x001E001E
	.4byte 0x001F001F
	.4byte 0x00200020
	.4byte 0x00200021
	.4byte 0x00210021
	.4byte 0x00220022
	.4byte 0x00230023
	.4byte 0x00230024
	.4byte 0x00240025
	.4byte 0x00250026
	.4byte 0x00260026
	.4byte 0x00270027
	.4byte 0x00280028
	.4byte 0x00290029
	.4byte 0x002A002A
	.4byte 0x002B002B
	.4byte 0x002C002C
	.4byte 0x002D002D
	.4byte 0x002E002E
	.4byte 0x002F002F
	.4byte 0x00300031
	.4byte 0x00310032
	.4byte 0x00320033
	.4byte 0x00330034
	.4byte 0x00350035
	.4byte 0x00360037
	.4byte 0x00370038
	.4byte 0x00380039
	.4byte 0x003A003A
	.4byte 0x003B003C
	.4byte 0x003D003D
	.4byte 0x003E003F
	.4byte 0x003F0040
	.4byte 0x00410042
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460046
	.4byte 0x00470048
	.4byte 0x0049004A
	.4byte 0x004B004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620064
	.4byte 0x00650066
	.4byte 0x00670068
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00740075
	.4byte 0x00760078
	.4byte 0x0079007B
	.4byte 0x007C007E
	.4byte 0x007F0080
	.4byte 0x00820083
	.4byte 0x00850087
	.4byte 0x0088008A
	.4byte 0x008B008D
	.4byte 0x008F0090
	.4byte 0x00920094
	.4byte 0x00950097
	.4byte 0x0099009B
	.4byte 0x009C009E
	.4byte 0x00A000A2
	.4byte 0x00A400A6
	.4byte 0x00A800AA
	.4byte 0x00AB00AD
	.4byte 0x00AF00B2
	.4byte 0x00B400B6
	.4byte 0x00B800BA
	.4byte 0x00BC00BE
	.4byte 0x00C000C3
	.4byte 0x00C500C7
	.4byte 0x00CA00CC
	.4byte 0x00CE00D1
	.4byte 0x00D300D6
	.4byte 0x00D800DB
	.4byte 0x00DD00E0
	.4byte 0x00E200E5
	.4byte 0x00E700EA
	.4byte 0x00ED00F0
	.4byte 0x00F200F5
	.4byte 0x00F800FB
	.4byte 0x00FE0101
	.4byte 0x01040107
	.4byte 0x010A010D
	.4byte 0x01100113
	.4byte 0x0116011A
	.4byte 0x011D0120
	.4byte 0x01240127
	.4byte 0x012A012E
	.4byte 0x01310135
	.4byte 0x0138013C
	.4byte 0x01400143
	.4byte 0x0147014B
	.4byte 0x014F0153
	.4byte 0x0157015B
	.4byte 0x015F0163
	.4byte 0x0167016B
	.4byte 0x016F0173
	.4byte 0x0178017C
	.4byte 0x01800185
	.4byte 0x0189018E
	.4byte 0x01930197
	.4byte 0x019C01A1
	.4byte 0x01A601AB
	.4byte 0x01AF01B4
	.4byte 0x01BA01BF
	.4byte 0x01C401C9
	.4byte 0x01CE01D4
	.4byte 0x01D901DF
	.4byte 0x01E401EA
	.4byte 0x01EF01F5
	.4byte 0x01FB0201
	.4byte 0x0207020D
	.4byte 0x02130219
	.4byte 0x021F0226
	.4byte 0x022C0232
	.4byte 0x02390240
	.4byte 0x0246024D
	.4byte 0x0254025B
	.4byte 0x02620269
	.4byte 0x02700277
	.4byte 0x027E0286
	.4byte 0x028D0295
	.4byte 0x029D02A4
	.4byte 0x02AC02B4
	.4byte 0x02BC02C4
	.4byte 0x02CC02D5
	.4byte 0x02DD02E6
	.4byte 0x02EE02F7
	.4byte 0x03000309
	.4byte 0x0312031B
	.4byte 0x0324032D
	.4byte 0x03370340
	.4byte 0x034A0354
	.4byte 0x035D0367
	.4byte 0x0371037C
	.4byte 0x03860390
	.4byte 0x039B03A6
	.4byte 0x03B103BB
	.4byte 0x03C703D2
	.4byte 0x03DD03E9
	.4byte 0x03F40400
	.4byte 0x040C0418
	.4byte 0x04240430
	.4byte 0x043D0449
	.4byte 0x04560463
	.4byte 0x0470047D
	.4byte 0x048A0498
	.4byte 0x04A504B3
	.4byte 0x04C104CF
	.4byte 0x04DD04EC
	.4byte 0x04FA0509
	.4byte 0x05180527
	.4byte 0x05360546
	.4byte 0x05550565
	.4byte 0x05750586
	.4byte 0x059605A6
	.4byte 0x05B705C8
	.4byte 0x05D905EB
	.4byte 0x05FC060E
	.4byte 0x06200632
	.4byte 0x06440657
	.4byte 0x066A067D
	.4byte 0x069006A4
	.4byte 0x06B706CB
	.4byte 0x06DF06F4
	.4byte 0x0708071D
	.4byte 0x07320748
	.4byte 0x075D0773
	.4byte 0x0789079F
	.4byte 0x07B607CD
	.4byte 0x07E407FB
	.4byte 0x0813082B
	.4byte 0x0843085C
	.4byte 0x0874088E
	.4byte 0x08A708C1
	.4byte 0x08DA08F5
	.4byte 0x090F092A
	.4byte 0x09450961
	.4byte 0x097D0999
	.4byte 0x09B509D2
	.4byte 0x09EF0A0D
	.4byte 0x0A2A0A48
	.4byte 0x0A670A86
	.4byte 0x0AA50AC5
	.4byte 0x0AE50B05
	.4byte 0x0B250B47
	.4byte 0x0B680B8A
	.4byte 0x0BAC0BCF
	.4byte 0x0BF20C15
	.4byte 0x0C390C5D
	.4byte 0x0C820CA7
	.4byte 0x0CCC0CF2
	.4byte 0x0D190D3F
	.4byte 0x0D670D8E
	.4byte 0x0DB70DDF
	.4byte 0x0E080E32
	.4byte 0x0E5C0E87
	.4byte 0x0EB20EDD
	.4byte 0x0F090F36
	.4byte 0x0F630F91
	.4byte 0x0FBF0FEE
	.4byte 0x101D104D
	.4byte 0x107D10AE
	.4byte 0x10DF1111
	.4byte 0x11441177
	.4byte 0x11AB11DF
	.4byte 0x1214124A
	.4byte 0x128012B7
	.4byte 0x12EE1326
	.4byte 0x135F1399
	.4byte 0x13D3140D
	.4byte 0x14491485
	.4byte 0x14C214FF
	.4byte 0x153E157D
	.4byte 0x15BC15FD
	.4byte 0x163E1680
	.4byte 0x16C31706
	.4byte 0x174A178F
	.4byte 0x17D5181C
	.4byte 0x186318AC
	.4byte 0x18F5193F
	.4byte 0x198A19D5
	.4byte 0x1A221A6F
	.4byte 0x1ABE1B0D
	.4byte 0x1B5D1BAE
	.4byte 0x1C001C53
	.4byte 0x1CA71CFC
	.4byte 0x1D521DA9
	.4byte 0x1E011E5A
	.4byte 0x1EB41F0F
	.4byte 0x1F6B1FC8
	.4byte 0x20262086
	.4byte 0x20E62148
	.4byte 0x21AA220E
	.4byte 0x227322D9
	.4byte 0x234123A9
	.4byte 0x2413247E
	.4byte 0x24EA2557
	.4byte 0x25C62636
	.4byte 0x26A7271A
	.4byte 0x278E2803
	.4byte 0x287A28F2
	.4byte 0x296B29E6
	.4byte 0x2A622AE0
	.4byte 0x2B5F2BDF
	.4byte 0x2C612CE5
	.4byte 0x2D6A2DF1
	.4byte 0x2E792F03
	.4byte 0x2F8E301B
	.4byte 0x30AA313A
	.4byte 0x31CC325F
	.4byte 0x32F5338C
	.4byte 0x342534BF
	.4byte 0x355B35FA
	.4byte 0x369A373C
	.4byte 0x37DF3885
	.4byte 0x392C39D6
	.4byte 0x3A813B2F
	.4byte 0x3BDE3C90
	.4byte 0x3D433DF9
	.4byte 0x3EB13F6A
	.4byte 0x402640E5
	.4byte 0x41A54268
	.4byte 0x432C43F4
	.4byte 0x44BD4589
	.4byte 0x46574727
	.4byte 0x47FA48D0
	.4byte 0x49A84A82
	.4byte 0x4B5F4C3E
	.4byte 0x4D204E05
	.4byte 0x4EEC4FD6
	.4byte 0x50C351B2
	.4byte 0x52A45399
	.4byte 0x5491558C
	.4byte 0x5689578A
	.4byte 0x588D5994
	.4byte 0x5A9D5BAA
	.4byte 0x5CBA5DCD
	.4byte 0x5EE35FFC
	.4byte 0x61196238
	.4byte 0x635C6482
	.4byte 0x65AC66D9
	.4byte 0x680A693F
	.4byte 0x6A776BB2
	.4byte 0x6CF26E35
	.4byte 0x6F7B70C6
	.4byte 0x72147366
	.4byte 0x74BC7616
	.4byte 0x777478D6
	.4byte 0x7A3D7BA7
	.4byte 0x7D167E88
	.4byte 0x7FFF817B
	.4byte 0x82FB847F
	.4byte 0x86088795
	.4byte 0x89278ABE
	.4byte 0x8C598DF9
	.4byte 0x8F9E9148
	.4byte 0x92F694AA
	.4byte 0x96639820
	.4byte 0x99E39BAB
	.4byte 0x9D799F4C
	.4byte 0xA124A302
	.4byte 0xA4E5A6CE
	.4byte 0xA8BCAAB0
	.4byte 0xACAAAEAA
	.4byte 0xB0B0B2BC
	.4byte 0xB4CEB6E5
	.4byte 0xB904BB28
	.4byte 0xBD53BF84
	.4byte 0xC1BCC3FA
	.4byte 0xC63FC88B
	.4byte 0xCADDCD37
	.4byte 0xCF97D1FE
	.4byte 0xD46DD6E3
	.4byte 0xD960DBE4
	.4byte 0xDE70E103
	.4byte 0xE39EE641
	.4byte 0xE8EBEB9E
	.4byte 0xEE58F11B
	.4byte 0xF3E6F6B9
	.4byte 0xF994FC78
	.4byte 0xFF640000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE8
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE5
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE3
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE1
	.4byte 0xFFFFFFE0
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDE
	.4byte 0xFFFFFFDD
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDB
	.4byte 0xFFFFFFDA
	.4byte 0xFFFFFFD9
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD7
	.4byte 0xFFFFFFD6
	.4byte 0xFFFFFFD5
	.4byte 0xFFFFFFD4
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFD2
	.4byte 0xFFFFFFD1
	.4byte 0xFFFFFFD0
	.4byte 0xFFFFFFCF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCD
	.4byte 0xFFFFFFCC
	.4byte 0xFFFFFFCA
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFFC8
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFC5
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFC3
	.4byte 0xFFFFFFC1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFBE
	.4byte 0xFFFFFFBD
	.4byte 0xFFFFFFBB
	.4byte 0xFFFFFFB9
	.4byte 0xFFFFFFB8
	.4byte 0xFFFFFFB6
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFB2
	.4byte 0xFFFFFFB0
	.4byte 0xFFFFFFAD
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFA3
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFF9D
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFF88
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFF7B
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF5D
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFF2E
	.4byte 0xFFFFFC78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xFFFDFFFD
	.4byte 0xFFFDFFFC
	.4byte 0xFFFCFFFC
	.4byte 0xFFFBFFFB
	.4byte 0xFFFAFFFA
	.4byte 0xFFFAFFF9
	.4byte 0xFFF9FFF8
	.4byte 0xFFF8FFF7
	.4byte 0xFFF7FFF6
	.4byte 0xFFF5FFF5
	.4byte 0xFFF4FFF4
	.4byte 0xFFF3FFF2
	.4byte 0xFFF2FFF1
	.4byte 0xFFF0FFEF
	.4byte 0xFFEFFFEE
	.4byte 0xFFEDFFEC
	.4byte 0xFFEBFFEB
	.4byte 0xFFEAFFE9
	.4byte 0xFFE8FFE7
	.4byte 0xFFE6FFE5
	.4byte 0xFFE4FFE3
	.4byte 0xFFE2FFE1
	.4byte 0xFFE0FFDE
	.4byte 0xFFDDFFDC
	.4byte 0xFFDBFFDA
	.4byte 0xFFD8FFD7
	.4byte 0xFFD6FFD4
	.4byte 0xFFD3FFD1
	.4byte 0xFFD0FFCE
	.4byte 0xFFCCFFCB
	.4byte 0xFFC9FFC7
	.4byte 0xFFC6FFC4
	.4byte 0xFFC2FFC0
	.4byte 0xFFBEFFBC
	.4byte 0xFFBAFFB7
	.4byte 0xFFB5FFB3
	.4byte 0xFFB0FFAE
	.4byte 0xFFABFFA8
	.4byte 0xFFA6FFA3
	.4byte 0xFFA0FF9C
	.4byte 0xFF99FF96
	.4byte 0xFF92FF8E
	.4byte 0xFF8AFF86
	.4byte 0xFF82FF7D
	.4byte 0xFF78FF73
	.4byte 0xFF6EFF68
	.4byte 0xFF61FF5A
	.4byte 0xFF53FF4B
	.4byte 0xFF42FF37
	.4byte 0xFF2CFF1F
	.4byte 0xFF0FFEFB
	.4byte 0xFEE2FEBF
	.4byte 0xFE83FC40
	.4byte 0xFFC3FFC3
	.4byte 0xFFC4FFC5
	.4byte 0xFFC5FFC6
	.4byte 0xFFC6FFC7
	.4byte 0xFFC8FFC8
	.4byte 0xFFC9FFC9
	.4byte 0xFFCAFFCB
	.4byte 0xFFCBFFCC
	.4byte 0xFFCCFFCD
	.4byte 0xFFCEFFCE
	.4byte 0xFFCFFFCF
	.4byte 0xFFD0FFD0
	.4byte 0xFFD1FFD1
	.4byte 0xFFD2FFD2
	.4byte 0xFFD3FFD3
	.4byte 0xFFD4FFD4
	.4byte 0xFFD5FFD5
	.4byte 0xFFD6FFD6
	.4byte 0xFFD7FFD7
	.4byte 0xFFD8FFD8
	.4byte 0xFFD9FFD9
	.4byte 0xFFDAFFDA
	.4byte 0xFFDAFFDB
	.4byte 0xFFDBFFDC
	.4byte 0xFFDCFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xFFDEFFDE
	.4byte 0xFFDFFFDF
	.4byte 0xFFE0FFE0
	.4byte 0xFFE0FFE1
	.4byte 0xFFE1FFE1
	.4byte 0xFFE2FFE2
	.4byte 0xFFE3FFE3
	.4byte 0xFFE3FFE4
	.4byte 0xFFE4FFE4
	.4byte 0xFFE5FFE5
	.4byte 0xFFE5FFE6
	.4byte 0xFFE6FFE6
	.4byte 0xFFE7FFE7
	.4byte 0xFFE7FFE8
	.4byte 0xFFE8FFE8
	.4byte 0xFFE9FFE9
	.4byte 0xFFE9FFEA
	.4byte 0xFFEAFFEA
	.4byte 0xFFEBFFEB
	.4byte 0xFFEBFFEC
	.4byte 0xFFECFFEC
	.4byte 0xFFECFFED
	.4byte 0xFFEDFFED
	.4byte 0xFFEEFFEE
	.4byte 0xFFEEFFEE
	.4byte 0xFFEFFFEF
	.4byte 0xFFEFFFEF
	.4byte 0xFFF0FFF0
	.4byte 0xFFF0FFF0
	.4byte 0xFFF1FFF1
	.4byte 0xFFF1FFF1
	.4byte 0xFFF2FFF2
	.4byte 0xFFF2FFF2
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF4
	.4byte 0xFFF4FFF4
	.4byte 0xFFF4FFF5


.global lbl_8054FA90
lbl_8054FA90:
	# ROM: 0x54BB90
	.4byte 0
	.4byte 0x3C000219
	.4byte 0x3C800000
	.4byte 0x3CC0010C
	.4byte 0x3D000000
	.4byte 0x3D200086
	.4byte 0x3D400000
	.4byte 0x3D600086
	.4byte 0x3D800000
	.4byte 0x3D900043
	.4byte 0x3DA00000
	.4byte 0x3DB00043
	.4byte 0x3DC00000
	.4byte 0x3DD00043
	.4byte 0x3DE00000
	.4byte 0x3DF00043
	.float 0.125
	.4byte 0x3E080022
	.4byte 0x3E100000
	.4byte 0x3E180022
	.4byte 0x3E200000
	.4byte 0x3E280022
	.4byte 0x3E300000
	.4byte 0x3E380022
	.4byte 0x3E400000
	.4byte 0x3E480022
	.4byte 0x3E500000
	.4byte 0x3E580022
	.4byte 0x3E600000
	.4byte 0x3E680022
	.4byte 0x3E700000
	.4byte 0x3E780022
	.float 0.25
	.4byte 0x3E840011
	.4byte 0x3E880000
	.4byte 0x3E8C0011
	.4byte 0x3E900000
	.4byte 0x3E940011
	.4byte 0x3E980000
	.4byte 0x3E9C0011
	.4byte 0x3EA00000
	.4byte 0x3EA40011
	.4byte 0x3EA80000
	.4byte 0x3EAC0011
	.4byte 0x3EB00000
	.4byte 0x3EB40011
	.4byte 0x3EB80000
	.4byte 0x3EBC0011
	.4byte 0x3EC00000
	.4byte 0x3EC40011
	.4byte 0x3EC80000
	.4byte 0x3ECC0011
	.4byte 0x3ED00000
	.4byte 0x3ED40011
	.4byte 0x3ED80000
	.4byte 0x3EDC0011
	.4byte 0x3EE00000
	.4byte 0x3EE40011
	.4byte 0x3EE80000
	.4byte 0x3EEC0011
	.4byte 0x3EF00000
	.4byte 0x3EF40011
	.4byte 0x3EF80000
	.4byte 0x3EFC0011
	.float 0.5
	.4byte 0x3F020008
	.4byte 0x3F040000
	.4byte 0x3F060008
	.4byte 0x3F080000
	.4byte 0x3F0A0008
	.4byte 0x3F0C0000
	.4byte 0x3F0E0008
	.4byte 0x3F100000
	.4byte 0x3F120008
	.4byte 0x3F140000
	.4byte 0x3F160008
	.4byte 0x3F180000
	.4byte 0x3F1A0008
	.4byte 0x3F1C0000
	.4byte 0x3F1E0008
	.4byte 0x3F200000
	.4byte 0x3F220008
	.4byte 0x3F240000
	.4byte 0x3F260008
	.4byte 0x3F280000
	.4byte 0x3F2A0008
	.4byte 0x3F2C0000
	.4byte 0x3F2E0008
	.4byte 0x3F300000
	.4byte 0x3F320008
	.4byte 0x3F340000
	.4byte 0x3F360008
	.4byte 0x3F380000
	.4byte 0x3F3A0008
	.4byte 0x3F3C0000
	.4byte 0x3F3E0008
	.float 0.75
	.4byte 0x3F420008
	.4byte 0x3F440000
	.4byte 0x3F460008
	.4byte 0x3F480000
	.4byte 0x3F4A0008
	.4byte 0x3F4C0000
	.4byte 0x3F4E0008
	.4byte 0x3F500000
	.4byte 0x3F520008
	.4byte 0x3F540000
	.4byte 0x3F560008
	.4byte 0x3F580000
	.4byte 0x3F5A0008
	.4byte 0x3F5C0000
	.4byte 0x3F5E0008
	.4byte 0x3F600000
	.4byte 0x3F620008
	.4byte 0x3F640000
	.4byte 0x3F660008
	.4byte 0x3F680000
	.4byte 0x3F6A0008
	.4byte 0x3F6C0000
	.4byte 0x3F6E0008
	.4byte 0x3F700000
	.4byte 0x3F720008
	.4byte 0x3F740000
	.4byte 0x3F760008
	.4byte 0x3F780000
	.4byte 0x3F7A0008
	.4byte 0x3F7C0000
	.4byte 0x3F7E0008


.global lbl_8054FC90
lbl_8054FC90:
	# ROM: 0x54BD90
	.4byte 0xFC400000
	.4byte 0xFCB67A80
	.4byte 0xFD2EE3F9
	.4byte 0xFD7553B8
	.4byte 0xFDA74D72
	.4byte 0xFDCE1108
	.4byte 0xFDEDBD30
	.4byte 0xFE08848A
	.4byte 0xFE1FB6EA
	.4byte 0xFE342CEF
	.4byte 0xFE467A80
	.4byte 0xFE57091D
	.4byte 0xFE6626A9
	.4byte 0xFE740E4D
	.4byte 0xFE80EE03
	.4byte 0xFE8CEA3F
	.4byte 0xFE982063
	.4byte 0xFEA2A878
	.4byte 0xFEAC9668
	.4byte 0xFEB5FADF
	.4byte 0xFEBEE3F9
	.4byte 0xFEC75DC2
	.4byte 0xFECF7295
	.4byte 0xFED72B6E
	.4byte 0xFEDE9022
	.4byte 0xFEE5A78F
	.4byte 0xFEEC77C6
	.4byte 0xFEF30626
	.4byte 0xFEF9577C
	.4byte 0xFEFF700E
	.4byte 0xFF0553B8
	.4byte 0xFF0B05F0
	.4byte 0xFF1089DC
	.4byte 0xFF15E254
	.4byte 0xFF1B11F1
	.4byte 0xFF201B12
	.4byte 0xFF24FFE1
	.4byte 0xFF29C25C
	.4byte 0xFF2E6457
	.4byte 0xFF32E784
	.4byte 0xFF374D72
	.4byte 0xFF3B9791
	.4byte 0xFF3FC73A
	.4byte 0xFF43DDAC
	.4byte 0xFF47DC0E
	.4byte 0xFF4BC376
	.4byte 0xFF4F94E7
	.4byte 0xFF535152
	.4byte 0xFF56F99B
	.4byte 0xFF5A8E94
	.4byte 0xFF5E1108
	.4byte 0xFF6181B0
	.4byte 0xFF64E13E
	.4byte 0xFF68305A
	.4byte 0xFF6B6F9F
	.4byte 0xFF6E9FA4
	.4byte 0xFF71C0F4
	.4byte 0xFF74D416
	.4byte 0xFF77D987
	.4byte 0xFF7AD1BF
	.4byte 0xFF7DBD30
	.4byte 0xFF809C47
	.4byte 0xFF836F69
	.4byte 0xFF8636F9
	.4byte 0xFF88F355
	.4byte 0xFF8BA4D4
	.4byte 0xFF8E4BCD
	.4byte 0xFF90E890
	.4byte 0xFF937B6A
	.4byte 0xFF9604A6
	.4byte 0xFF98848A
	.4byte 0xFF9AFB5B
	.4byte 0xFF9D6959
	.4byte 0xFF9FCEC3
	.4byte 0xFFA22BD4
	.4byte 0xFFA480C6
	.4byte 0xFFA6CDD0
	.4byte 0xFFA91327
	.4byte 0xFFAB50FD
	.4byte 0xFFAD8784
	.4byte 0xFFAFB6EA
	.4byte 0xFFB1DF5E
	.4byte 0xFFB4010A
	.4byte 0xFFB61C19
	.4byte 0xFFB830B3
	.4byte 0xFFBA3F00
	.4byte 0xFFBC4724
	.4byte 0xFFBE4946
	.4byte 0xFFC04587
	.4byte 0xFFC23C0A
	.4byte 0xFFC42CEF
	.4byte 0xFFC61857
	.4byte 0xFFC7FE60
	.4byte 0xFFC9DF28
	.4byte 0xFFCBBACB
	.4byte 0xFFCD9166
	.4byte 0xFFCF6313
	.4byte 0xFFD12FED
	.4byte 0xFFD2F80D
	.4byte 0xFFD4BB8B
	.4byte 0xFFD67A80
	.4byte 0xFFD83502
	.4byte 0xFFD9EB29
	.4byte 0xFFDB9D08
	.4byte 0xFFDD4AB7
	.4byte 0xFFDEF449
	.4byte 0xFFE099D2
	.4byte 0xFFE23B66
	.4byte 0xFFE3D918
	.4byte 0xFFE572F9
	.4byte 0xFFE7091D
	.4byte 0xFFE89B93
	.4byte 0xFFEA2A6D
	.4byte 0xFFEBB5BC
	.4byte 0xFFED3D8F
	.4byte 0xFFEEC1F6
	.4byte 0xFFF04300
	.4byte 0xFFF1C0BC
	.4byte 0xFFF33B38
	.4byte 0xFFF4B283
	.4byte 0xFFF626A9
	.4byte 0xFFF797B9
	.4byte 0xFFF905BF
	.4byte 0xFFFA70C9
	.4byte 0xFFFBD8E2
	.4byte 0xFFFD3E16
	.4byte 0xFFFEA072
	.4byte 0


.global lbl_8054FE90
lbl_8054FE90:
	# ROM: 0x54BF90
	.4byte 0xFC400000
	.4byte 0xFE70DF7B
	.4byte 0xFEAD1437
	.4byte 0xFED04C17
	.4byte 0xFEE948F4
	.4byte 0xFEFCAABF
	.4byte 0xFF0C80D3
	.4byte 0xFF19E480
	.4byte 0xFF257DB0
	.4byte 0xFF2FB8B2
	.4byte 0xFF38DF7B
	.4byte 0xFF4126C9
	.4byte 0xFF48B58F
	.4byte 0xFF4FA961
	.4byte 0xFF56193C
	.4byte 0xFF5C175A
	.4byte 0xFF61B26C
	.4byte 0xFF66F677
	.4byte 0xFF6BED6F
	.4byte 0xFF709FAA
	.4byte 0xFF751437
	.4byte 0xFF79511C
	.4byte 0xFF7D5B85
	.4byte 0xFF8137F2
	.4byte 0xFF84EA4C
	.4byte 0xFF887602
	.4byte 0xFF8BDE1E
	.4byte 0xFF8F254E
	.4byte 0xFF924DF9
	.4byte 0xFF955A42
	.4byte 0xFF984C17
	.4byte 0xFF9B2533
	.4byte 0xFF9DE729
	.4byte 0xFFA09365
	.4byte 0xFFA32B33
	.4byte 0xFFA5AFC4
	.4byte 0xFFA8222B
	.4byte 0xFFAA8369
	.4byte 0xFFACD466
	.4byte 0xFFAF15FD
	.4byte 0xFFB148F4
	.4byte 0xFFB36E03
	.4byte 0xFFB585D8
	.4byte 0xFFB79111
	.4byte 0xFFB99042
	.4byte 0xFFBB83F6
	.4byte 0xFFBD6CAE
	.4byte 0xFFBF4AE4
	.4byte 0xFFC11F08
	.4byte 0xFFC2E985
	.4byte 0xFFC4AABF
	.4byte 0xFFC66313
	.4byte 0xFFC812DA
	.4byte 0xFFC9BA68
	.4byte 0xFFCB5A0A
	.4byte 0xFFCCF20D
	.4byte 0xFFCE82B5
	.4byte 0xFFD00C46
	.4byte 0xFFD18EFE
	.4byte 0xFFD30B1A
	.4byte 0xFFD480D3
	.4byte 0xFFD5F05E
	.4byte 0xFFD759EF
	.4byte 0xFFD8BDB7
	.4byte 0xFFDA1BE5
	.4byte 0xFFDB74A5
	.4byte 0xFFDCC821
	.4byte 0xFFDE1683
	.4byte 0xFFDF5FF0
	.4byte 0xFFE0A48E
	.4byte 0xFFE1E480
	.4byte 0xFFE31FE8
	.4byte 0xFFE456E7
	.4byte 0xFFE5899C
	.4byte 0xFFE6B825
	.4byte 0xFFE7E29E
	.4byte 0xFFE90923
	.4byte 0xFFEA2BCE
	.4byte 0xFFEB4AB9
	.4byte 0xFFEC65FD
	.4byte 0xFFED7DB0
	.4byte 0xFFEE91EA
	.4byte 0xFFEFA2C0
	.4byte 0xFFF0B047
	.4byte 0xFFF1BA94
	.4byte 0xFFF2C1BB
	.4byte 0xFFF3C5CD
	.4byte 0xFFF4C6DE
	.4byte 0xFFF5C4FE
	.4byte 0xFFF6C040
	.4byte 0xFFF7B8B2
	.4byte 0xFFF8AE66
	.4byte 0xFFF9A16B
	.4byte 0xFFFA91CF
	.4byte 0xFFFB7FA0
	.4byte 0xFFFC6AEE
	.4byte 0xFFFD53C4
	.4byte 0xFFFE3A31
	.4byte 0xFFFF1E41
	.4byte 0


.global lbl_80550020
lbl_80550020:
	# ROM: 0x54C120
	.float 1.0
	.4byte 0x3F8012F1
	.4byte 0x3F8025E1
	.4byte 0x3F8038D2
	.4byte 0x3F804BCB
	.4byte 0x3F805EC4
	.4byte 0x3F8071C5
	.4byte 0x3F8084C7
	.4byte 0x3F8097C8
	.4byte 0x3F80AAC9
	.4byte 0x3F80BDD3
	.4byte 0x3F80D0DD
	.4byte 0x3F80E3EF
	.4byte 0x3F80F6F9
	.4byte 0x3F810A13
	.4byte 0x3F811D26
	.4byte 0x3F813040
	.4byte 0x3F81435B
	.4byte 0x3F815675
	.4byte 0x3F816998
	.4byte 0x3F817CBB
	.4byte 0x3F818FE7
	.4byte 0x3F81A312
	.4byte 0x3F81B63D
	.4byte 0x3F81C969
	.4byte 0x3F81DC9C
	.4byte 0x3F81EFD8
	.4byte 0x3F82030C
	.4byte 0x3F821648
	.4byte 0x3F822984
	.4byte 0x3F823CC9
	.4byte 0x3F82500D
	.4byte 0x3F826352
	.4byte 0x3F827696
	.4byte 0x3F8289E3
	.4byte 0x3F829D39
	.4byte 0x3F82B085
	.4byte 0x3F82C3DB
	.4byte 0x3F82D730
	.4byte 0x3F82EA8E
	.4byte 0x3F82FDEB
	.4byte 0x3F831149
	.4byte 0x3F8324AF
	.4byte 0x3F833815
	.4byte 0x3F834B7B
	.4byte 0x3F835EEA
	.4byte 0x3F837258
	.4byte 0x3F8385C6
	.4byte 0x3F83993D
	.4byte 0x3F83ACB4
	.4byte 0x3F83C02B
	.4byte 0x3F83D3AA
	.4byte 0x3F83E729
	.4byte 0x3F83FAA9
	.4byte 0x3F840E30
	.4byte 0x3F8421B8
	.4byte 0x3F843548
	.4byte 0x3F8448CF
	.4byte 0x3F845C68
	.4byte 0x3F846FF8
	.4byte 0x3F848390
	.4byte 0x3F849729
	.4byte 0x3F84AAC9
	.4byte 0x3F84BE62
	.4byte 0x3F84D20B
	.4byte 0x3F84E5AC
	.4byte 0x3F84F955
	.4byte 0x3F850CFE
	.4byte 0x3F8520B0
	.4byte 0x3F853461
	.4byte 0x3F854813
	.4byte 0x3F855BCD
	.4byte 0x3F856F87
	.4byte 0x3F858341
	.4byte 0x3F859703
	.4byte 0x3F85AAC5
	.4byte 0x3F85BE88
	.4byte 0x3F85D252
	.4byte 0x3F85E61D
	.4byte 0x3F85F9E8
	.4byte 0x3F860DBB
	.4byte 0x3F86218E
	.4byte 0x3F863569
	.4byte 0x3F864945
	.4byte 0x3F865D20
	.4byte 0x3F8670FC
	.4byte 0x3F8684E0
	.4byte 0x3F8698C4
	.4byte 0x3F86ACB0
	.4byte 0x3F86C09C
	.4byte 0x3F86D489
	.4byte 0x3F86E87D
	.4byte 0x3F86FC72
	.4byte 0x3F871066
	.4byte 0x3F872464
	.4byte 0x3F873861
	.4byte 0x3F874C5E
	.4byte 0x3F876063
	.4byte 0x3F877469
	.4byte 0x3F87886E
	.float 1.0
	.4byte 0x40000000
	.4byte 0x40800000
	.float 8.0
	.4byte 0x41800000
	.4byte 0x42000000
	.4byte 0x42800000
	.4byte 0x43000000
	.4byte 0x43800000
	.4byte 0x44000000
	.4byte 0x44800000
	.4byte 0x45000000
	.float 1.0
	.4byte 0x3F879C7C
	.4byte 0x3F8FACD6
	.4byte 0x3F9837EF
	.4byte 0x3FA14517
	.4byte 0x3FAADC0A
	.4byte 0x3FB504F7
	.4byte 0x3FBFC886
	.4byte 0x3FCB2FF5
	.4byte 0x3FD744FE
	.4byte 0x3FE411ED
	.4byte 0x3FF1A1C2
	.float 1.0
	.4byte 0x3F71A1BA
	.4byte 0x3F6411F5
	.4byte 0x3F5744F6
	.4byte 0x3F4B2FFD
	.4byte 0x3F3FC88E
	.4byte 0x3F3504F7
	.4byte 0x3F2ADC0A
	.4byte 0x3F214520
	.4byte 0x3F1837F8
	.4byte 0x3F0FACD6
	.4byte 0x3F079C84
	.float 0.5
	.4byte 0x3EF1A1BA
	.4byte 0x3EE411E4
	.4byte 0x3ED744F6
	.4byte 0x3ECB2FEC
	.4byte 0x3EBFC88E
	.4byte 0x3EB504E6
	.4byte 0x3EAADC0A
	.4byte 0x3EA1450F
	.4byte 0x3E9837F8
	.4byte 0x3E8FACE6
	.4byte 0x3E879C84
	.float 0.25
	.4byte 0x3E71A1DC
	.4byte 0x3E641206
	.4byte 0x3E5744F6
	.4byte 0x3E4B2FEC
	.4byte 0x3E3FC86D
	.4byte 0x3E350508
	.4byte 0x3E2ADC0A
	.4byte 0x3E21450F
	.4byte 0x3E1837F8
	.4byte 0x3E0FACE6
	.4byte 0x3E079C84
	.float 0.125
	.4byte 0x3DF1A198
	.4byte 0x3DE411C3
	.4byte 0x3DD744F6
	.4byte 0x3DCB302F
	.4byte 0x3DBFC86D
	.4byte 0x3DB504C5
	.4byte 0x3DAADBC6
	.4byte 0x3DA1450F
	.4byte 0x3D9837B5
	.4byte 0x3D8FACE6
	.4byte 0x3D879C41
	.4byte 0x3D800000
	.4byte 0x3D71A198
	.4byte 0x3D6411C3
	.4byte 0x3D5744F6
	.4byte 0x3D4B2FA9
	.4byte 0x3D3FC86D
	.4byte 0x3D3504C5
	.4byte 0x3D2ADC4D
	.4byte 0x3D214595
	.4byte 0x3D18383B
	.4byte 0x3D0FACE6
	.4byte 0x3D079C41
	.4byte 0x3D000000
	.4byte 0x3CF1A198
	.4byte 0x3CE412CF
	.4byte 0x3CD744F6
	.4byte 0x3CCB2FA9
	.4byte 0x3CBFC86D
	.4byte 0x3CB504C5
	.4byte 0x3CAADC4D
	.4byte 0x3CA14489
	.4byte 0x3C98372E
	.4byte 0x3C8FABDA
	.4byte 0x3C879C41
	.4byte 0x3C800000
	.4byte 0x3C71A198
	.4byte 0x3C6410B6
	.4byte 0x3C5744F6
	.4byte 0x3C4B31C2
	.4byte 0x3C3FCA86
	.4byte 0x3C3506DD
	.4byte 0x3C2ADA34
	.4byte 0x3C214489
	.4byte 0x3C183947
	.4byte 0x3C0FABDA
	.4byte 0x3C079C41
	.4byte 0x3C000219
	.4byte 0x3BF1A198
	.4byte 0x3BE410B6
	.4byte 0x3BD74928
	.4byte 0x3BCB31C2
	.4byte 0x3BBFCA86
	.4byte 0x3BB502AC
	.4byte 0x3BAADA34
	.4byte 0x3BA148BB
	.4byte 0x3B983516
	.4byte 0x3B8FB00C
	.4byte 0x3B87A073
	.4byte 0x3B7FFBCE
	.4byte 0x3B71A198
	.4byte 0x3B6410B6
	.4byte 0x3B574928
	.4byte 0x3B4B295F
	.4byte 0x3B3FC222
	.4byte 0x3B3502AC
	.4byte 0x3B2ADA34
	.4byte 0x3B2148BB
	.4byte 0x3B183D79
	.4byte 0x3B0FA7A8
	.4byte 0x3B07980F
	.4byte 0x3AFFFBCE
	.4byte 0x3AF1B25F
	.4byte 0x3AE410B6
	.4byte 0x3AD73861
	.4byte 0x3ACB295F
	.4byte 0x3ABFC222
	.4byte 0x3AB502AC
	.4byte 0x3AAAEAFB
	.4byte 0x3AA137F4
	.4byte 0x3A982CB2
	.4byte 0x3A8FA7A8
	.4byte 0x3A87A8D6
	.4byte 0x3A800EAE
	.4byte 0x3A71B25F
	.4byte 0x3A6410B6
	.4byte 0x3A573861
	.4byte 0x3A4B295F
	.4byte 0x3A3FE3B0
	.4byte 0x3A35243A
	.4byte 0x3A2AEAFB


.global lbl_80550410
lbl_80550410:
	# ROM: 0x54C510
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x00000201
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80550490
lbl_80550490:
	.asciz "<< RVL_SDK - KPAD \trelease build: Jun 22 2009 18:32:13 (0x4302_145) >>"
	.balign 4


.global lbl_805504D8
lbl_805504D8:
	# ROM: 0x54C5D8
	.4byte 0x00010302
	.4byte 0x00040105
	.4byte 0x00070108
	.4byte 0x000B010B
	.4byte 0x000C000C
	.4byte 0x000A000A


.global lbl_805504F0
lbl_805504F0:
	# ROM: 0x54C5F0
	.4byte 0x00000001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x0009000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000E
	.4byte 0x000E000E
	.4byte 0x000E000E
	.4byte 0x000E000F
	.4byte 0x000F000F
	.4byte 0x000F000F
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100011
	.4byte 0x00110011
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00120012
	.4byte 0x00120013
	.4byte 0x00130013
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00170018
	.4byte 0x00180018
	.4byte 0x00180019
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001B001C
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0x001D001E
	.4byte 0x001E001E
	.4byte 0x001F001F
	.4byte 0x00200020
	.4byte 0x00200021
	.4byte 0x00210021
	.4byte 0x00220022
	.4byte 0x00230023
	.4byte 0x00230024
	.4byte 0x00240025
	.4byte 0x00250026
	.4byte 0x00260026
	.4byte 0x00270027
	.4byte 0x00280028
	.4byte 0x00290029
	.4byte 0x002A002A
	.4byte 0x002B002B
	.4byte 0x002C002C
	.4byte 0x002D002D
	.4byte 0x002E002E
	.4byte 0x002F002F
	.4byte 0x00300031
	.4byte 0x00310032
	.4byte 0x00320033
	.4byte 0x00330034
	.4byte 0x00350035
	.4byte 0x00360037
	.4byte 0x00370038
	.4byte 0x00380039
	.4byte 0x003A003A
	.4byte 0x003B003C
	.4byte 0x003D003D
	.4byte 0x003E003F
	.4byte 0x003F0040
	.4byte 0x00410042
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460046
	.4byte 0x00470048
	.4byte 0x0049004A
	.4byte 0x004B004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620064
	.4byte 0x00650066
	.4byte 0x00670068
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00740075
	.4byte 0x00760078
	.4byte 0x0079007B
	.4byte 0x007C007E
	.4byte 0x007F0080
	.4byte 0x00820083
	.4byte 0x00850087
	.4byte 0x0088008A
	.4byte 0x008B008D
	.4byte 0x008F0090
	.4byte 0x00920094
	.4byte 0x00950097
	.4byte 0x0099009B
	.4byte 0x009C009E
	.4byte 0x00A000A2
	.4byte 0x00A400A6
	.4byte 0x00A800AA
	.4byte 0x00AB00AD
	.4byte 0x00AF00B2
	.4byte 0x00B400B6
	.4byte 0x00B800BA
	.4byte 0x00BC00BE
	.4byte 0x00C000C3
	.4byte 0x00C500C7
	.4byte 0x00CA00CC
	.4byte 0x00CE00D1
	.4byte 0x00D300D6
	.4byte 0x00D800DB
	.4byte 0x00DD00E0
	.4byte 0x00E200E5
	.4byte 0x00E700EA
	.4byte 0x00ED00F0
	.4byte 0x00F200F5
	.4byte 0x00F800FB
	.4byte 0x00FE0101
	.4byte 0x01040107
	.4byte 0x010A010D
	.4byte 0x01100113
	.4byte 0x0116011A
	.4byte 0x011D0120
	.4byte 0x01240127
	.4byte 0x012A012E
	.4byte 0x01310135
	.4byte 0x0138013C
	.4byte 0x01400143
	.4byte 0x0147014B
	.4byte 0x014F0153
	.4byte 0x0157015B
	.4byte 0x015F0163
	.4byte 0x0167016B
	.4byte 0x016F0173
	.4byte 0x0178017C
	.4byte 0x01800185
	.4byte 0x0189018E
	.4byte 0x01930197
	.4byte 0x019C01A1
	.4byte 0x01A601AB
	.4byte 0x01AF01B4
	.4byte 0x01BA01BF
	.4byte 0x01C401C9
	.4byte 0x01CE01D4
	.4byte 0x01D901DF
	.4byte 0x01E401EA
	.4byte 0x01EF01F5
	.4byte 0x01FB0201
	.4byte 0x0207020D
	.4byte 0x02130219
	.4byte 0x021F0226
	.4byte 0x022C0232
	.4byte 0x02390240
	.4byte 0x0246024D
	.4byte 0x0254025B
	.4byte 0x02620269
	.4byte 0x02700277
	.4byte 0x027E0286
	.4byte 0x028D0295
	.4byte 0x029D02A4
	.4byte 0x02AC02B4
	.4byte 0x02BC02C4
	.4byte 0x02CC02D5
	.4byte 0x02DD02E6
	.4byte 0x02EE02F7
	.4byte 0x03000309
	.4byte 0x0312031B
	.4byte 0x0324032D
	.4byte 0x03370340
	.4byte 0x034A0354
	.4byte 0x035D0367
	.4byte 0x0371037C
	.4byte 0x03860390
	.4byte 0x039B03A6
	.4byte 0x03B103BB
	.4byte 0x03C703D2
	.4byte 0x03DD03E9
	.4byte 0x03F40400
	.4byte 0x040C0418
	.4byte 0x04240430
	.4byte 0x043D0449
	.4byte 0x04560463
	.4byte 0x0470047D
	.4byte 0x048A0498
	.4byte 0x04A504B3
	.4byte 0x04C104CF
	.4byte 0x04DD04EC
	.4byte 0x04FA0509
	.4byte 0x05180527
	.4byte 0x05360546
	.4byte 0x05550565
	.4byte 0x05750586
	.4byte 0x059605A6
	.4byte 0x05B705C8
	.4byte 0x05D905EB
	.4byte 0x05FC060E
	.4byte 0x06200632
	.4byte 0x06440657
	.4byte 0x066A067D
	.4byte 0x069006A4
	.4byte 0x06B706CB
	.4byte 0x06DF06F4
	.4byte 0x0708071D
	.4byte 0x07320748
	.4byte 0x075D0773
	.4byte 0x0789079F
	.4byte 0x07B607CD
	.4byte 0x07E407FB
	.4byte 0x0813082B
	.4byte 0x0843085C
	.4byte 0x0874088E
	.4byte 0x08A708C1
	.4byte 0x08DA08F5
	.4byte 0x090F092A
	.4byte 0x09450961
	.4byte 0x097D0999
	.4byte 0x09B509D2
	.4byte 0x09EF0A0D
	.4byte 0x0A2A0A48
	.4byte 0x0A670A86
	.4byte 0x0AA50AC5
	.4byte 0x0AE50B05
	.4byte 0x0B250B47
	.4byte 0x0B680B8A
	.4byte 0x0BAC0BCF
	.4byte 0x0BF20C15
	.4byte 0x0C390C5D
	.4byte 0x0C820CA7
	.4byte 0x0CCC0CF2
	.4byte 0x0D190D3F
	.4byte 0x0D670D8E
	.4byte 0x0DB70DDF
	.4byte 0x0E080E32
	.4byte 0x0E5C0E87
	.4byte 0x0EB20EDD
	.4byte 0x0F090F36
	.4byte 0x0F630F91
	.4byte 0x0FBF0FEE
	.4byte 0x101D104D
	.4byte 0x107D10AE
	.4byte 0x10DF1111
	.4byte 0x11441177
	.4byte 0x11AB11DF
	.4byte 0x1214124A
	.4byte 0x128012B7
	.4byte 0x12EE1326
	.4byte 0x135F1399
	.4byte 0x13D3140D
	.4byte 0x14491485
	.4byte 0x14C214FF
	.4byte 0x153E157D
	.4byte 0x15BC15FD
	.4byte 0x163E1680
	.4byte 0x16C31706
	.4byte 0x174A178F
	.4byte 0x17D5181C
	.4byte 0x186318AC
	.4byte 0x18F5193F
	.4byte 0x198A19D5
	.4byte 0x1A221A6F
	.4byte 0x1ABE1B0D
	.4byte 0x1B5D1BAE
	.4byte 0x1C001C53
	.4byte 0x1CA71CFC
	.4byte 0x1D521DA9
	.4byte 0x1E011E5A
	.4byte 0x1EB41F0F
	.4byte 0x1F6B1FC8
	.4byte 0x20262086
	.4byte 0x20E62148
	.4byte 0x21AA220E
	.4byte 0x227322D9
	.4byte 0x234123A9
	.4byte 0x2413247E
	.4byte 0x24EA2557
	.4byte 0x25C62636
	.4byte 0x26A7271A
	.4byte 0x278E2803
	.4byte 0x287A28F2
	.4byte 0x296B29E6
	.4byte 0x2A622AE0
	.4byte 0x2B5F2BDF
	.4byte 0x2C612CE5
	.4byte 0x2D6A2DF1
	.4byte 0x2E792F03
	.4byte 0x2F8E301B
	.4byte 0x30AA313A
	.4byte 0x31CC325F
	.4byte 0x32F5338C
	.4byte 0x342534BF
	.4byte 0x355B35FA
	.4byte 0x369A373C
	.4byte 0x37DF3885
	.4byte 0x392C39D6
	.4byte 0x3A813B2F
	.4byte 0x3BDE3C90
	.4byte 0x3D433DF9
	.4byte 0x3EB13F6A
	.4byte 0x402640E5
	.4byte 0x41A54268
	.4byte 0x432C43F4
	.4byte 0x44BD4589
	.4byte 0x46574727
	.4byte 0x47FA48D0
	.4byte 0x49A84A82
	.4byte 0x4B5F4C3E
	.4byte 0x4D204E05
	.4byte 0x4EEC4FD6
	.4byte 0x50C351B2
	.4byte 0x52A45399
	.4byte 0x5491558C
	.4byte 0x5689578A
	.4byte 0x588D5994
	.4byte 0x5A9D5BAA
	.4byte 0x5CBA5DCD
	.4byte 0x5EE35FFC
	.4byte 0x61196238
	.4byte 0x635C6482
	.4byte 0x65AC66D9
	.4byte 0x680A693F
	.4byte 0x6A776BB2
	.4byte 0x6CF26E35
	.4byte 0x6F7B70C6
	.4byte 0x72147366
	.4byte 0x74BC7616
	.4byte 0x777478D6
	.4byte 0x7A3D7BA7
	.4byte 0x7D167E88
	.4byte 0x7FFF817B
	.4byte 0x82FB847F
	.4byte 0x86088795
	.4byte 0x89278ABE
	.4byte 0x8C598DF9
	.4byte 0x8F9E9148
	.4byte 0x92F694AA
	.4byte 0x96639820
	.4byte 0x99E39BAB
	.4byte 0x9D799F4C
	.4byte 0xA124A302
	.4byte 0xA4E5A6CE
	.4byte 0xA8BCAAB0
	.4byte 0xACAAAEAA
	.4byte 0xB0B0B2BC
	.4byte 0xB4CEB6E5
	.4byte 0xB904BB28
	.4byte 0xBD53BF84
	.4byte 0xC1BCC3FA
	.4byte 0xC63FC88B
	.4byte 0xCADDCD37
	.4byte 0xCF97D1FE
	.4byte 0xD46DD6E3
	.4byte 0xD960DBE4
	.4byte 0xDE70E103
	.4byte 0xE39EE641
	.4byte 0xE8EBEB9E
	.4byte 0xEE58F11B
	.4byte 0xF3E6F6B9
	.4byte 0xF994FC78
	.4byte 0xFF640000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE8
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE5
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE3
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE1
	.4byte 0xFFFFFFE0
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDE
	.4byte 0xFFFFFFDD
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDB
	.4byte 0xFFFFFFDA
	.4byte 0xFFFFFFD9
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD7
	.4byte 0xFFFFFFD6
	.4byte 0xFFFFFFD5
	.4byte 0xFFFFFFD4
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFD2
	.4byte 0xFFFFFFD1
	.4byte 0xFFFFFFD0
	.4byte 0xFFFFFFCF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCD
	.4byte 0xFFFFFFCC
	.4byte 0xFFFFFFCA
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFFC8
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFC5
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFC3
	.4byte 0xFFFFFFC1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFBE
	.4byte 0xFFFFFFBD
	.4byte 0xFFFFFFBB
	.4byte 0xFFFFFFB9
	.4byte 0xFFFFFFB8
	.4byte 0xFFFFFFB6
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFB2
	.4byte 0xFFFFFFB0
	.4byte 0xFFFFFFAD
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFA3
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFF9D
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFF88
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFF7B
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF5D
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFF2E
	.4byte 0xFFFFFC78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xFFFDFFFD
	.4byte 0xFFFDFFFC
	.4byte 0xFFFCFFFC
	.4byte 0xFFFBFFFB
	.4byte 0xFFFAFFFA
	.4byte 0xFFFAFFF9
	.4byte 0xFFF9FFF8
	.4byte 0xFFF8FFF7
	.4byte 0xFFF7FFF6
	.4byte 0xFFF5FFF5
	.4byte 0xFFF4FFF4
	.4byte 0xFFF3FFF2
	.4byte 0xFFF2FFF1
	.4byte 0xFFF0FFEF
	.4byte 0xFFEFFFEE
	.4byte 0xFFEDFFEC
	.4byte 0xFFEBFFEB
	.4byte 0xFFEAFFE9
	.4byte 0xFFE8FFE7
	.4byte 0xFFE6FFE5
	.4byte 0xFFE4FFE3
	.4byte 0xFFE2FFE1
	.4byte 0xFFE0FFDE
	.4byte 0xFFDDFFDC
	.4byte 0xFFDBFFDA
	.4byte 0xFFD8FFD7
	.4byte 0xFFD6FFD4
	.4byte 0xFFD3FFD1
	.4byte 0xFFD0FFCE
	.4byte 0xFFCCFFCB
	.4byte 0xFFC9FFC7
	.4byte 0xFFC6FFC4
	.4byte 0xFFC2FFC0
	.4byte 0xFFBEFFBC
	.4byte 0xFFBAFFB7
	.4byte 0xFFB5FFB3
	.4byte 0xFFB0FFAE
	.4byte 0xFFABFFA8
	.4byte 0xFFA6FFA3
	.4byte 0xFFA0FF9C
	.4byte 0xFF99FF96
	.4byte 0xFF92FF8E
	.4byte 0xFF8AFF86
	.4byte 0xFF82FF7D
	.4byte 0xFF78FF73
	.4byte 0xFF6EFF68
	.4byte 0xFF61FF5A
	.4byte 0xFF53FF4B
	.4byte 0xFF42FF37
	.4byte 0xFF2CFF1F
	.4byte 0xFF0FFEFB
	.4byte 0xFEE2FEBF
	.4byte 0xFE83FC40
	.4byte 0xFFC3FFC3
	.4byte 0xFFC4FFC5
	.4byte 0xFFC5FFC6
	.4byte 0xFFC6FFC7
	.4byte 0xFFC8FFC8
	.4byte 0xFFC9FFC9
	.4byte 0xFFCAFFCB
	.4byte 0xFFCBFFCC
	.4byte 0xFFCCFFCD
	.4byte 0xFFCEFFCE
	.4byte 0xFFCFFFCF
	.4byte 0xFFD0FFD0
	.4byte 0xFFD1FFD1
	.4byte 0xFFD2FFD2
	.4byte 0xFFD3FFD3
	.4byte 0xFFD4FFD4
	.4byte 0xFFD5FFD5
	.4byte 0xFFD6FFD6
	.4byte 0xFFD7FFD7
	.4byte 0xFFD8FFD8
	.4byte 0xFFD9FFD9
	.4byte 0xFFDAFFDA
	.4byte 0xFFDAFFDB
	.4byte 0xFFDBFFDC
	.4byte 0xFFDCFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xFFDEFFDE
	.4byte 0xFFDFFFDF
	.4byte 0xFFE0FFE0
	.4byte 0xFFE0FFE1
	.4byte 0xFFE1FFE1
	.4byte 0xFFE2FFE2
	.4byte 0xFFE3FFE3
	.4byte 0xFFE3FFE4
	.4byte 0xFFE4FFE4
	.4byte 0xFFE5FFE5
	.4byte 0xFFE5FFE6
	.4byte 0xFFE6FFE6
	.4byte 0xFFE7FFE7
	.4byte 0xFFE7FFE8
	.4byte 0xFFE8FFE8
	.4byte 0xFFE9FFE9
	.4byte 0xFFE9FFEA
	.4byte 0xFFEAFFEA
	.4byte 0xFFEBFFEB
	.4byte 0xFFEBFFEC
	.4byte 0xFFECFFEC
	.4byte 0xFFECFFED
	.4byte 0xFFEDFFED
	.4byte 0xFFEEFFEE
	.4byte 0xFFEEFFEE
	.4byte 0xFFEFFFEF
	.4byte 0xFFEFFFEF
	.4byte 0xFFF0FFF0
	.4byte 0xFFF0FFF0
	.4byte 0xFFF1FFF1
	.4byte 0xFFF1FFF1
	.4byte 0xFFF2FFF2
	.4byte 0xFFF2FFF2
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF4
	.4byte 0xFFF4FFF4
	.4byte 0xFFF4FFF5


.global lbl_80551080
lbl_80551080:
	.asciz "<< RVL_SDK - NAND \trelease build: Feb 27 2009 10:05:16 (0x4302_145) >>"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_805510E0
lbl_805510E0:
	# ROM: 0x54D1E0
	.4byte 0x2F000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte nandOnShutdown
	.4byte 0x000000FF
	.4byte 0
	.4byte 0


.global lbl_80551130
lbl_80551130:
	.asciz "/shared2"
	.balign 4


.global lbl_8055113C
lbl_8055113C:
	.asciz "/shared2/"
	.balign 4
	.asciz "ISFS error code: %d"
	.asciz "CAUTION!  Unexpected error code [%d] was found.\n"
	.balign 4
	.asciz "ISFS unexpected error code: %d"
	.balign 4
	.asciz "Failed to set home directory.\n"
	.balign 4

.global lbl_805511D0
lbl_805511D0:
	.asciz "/title/00010000"

.global lbl_805511E0
lbl_805511E0:
	.asciz "/title/00010001"

.global lbl_805511F0
lbl_805511F0:
	.asciz "/title/00010003"

.global lbl_80551200
lbl_80551200:
	.asciz "/title/00010004"

.global lbl_80551210
lbl_80551210:
	.asciz "/title/00010005"

.global lbl_80551220
lbl_80551220:
	.asciz "/title/00010006"

.global lbl_80551230
lbl_80551230:
	.asciz "/title/00010007"

.global lbl_80551240
lbl_80551240:
	.asciz "/shared2/title"
	.balign 4


.global lbl_80551250
lbl_80551250:
	# ROM: 0x54D350
	.4byte lbl_80665B10
	.4byte lbl_80665B18
	.4byte lbl_805511D0
	.4byte lbl_805511E0
	.4byte lbl_805511F0
	.4byte lbl_80551200
	.4byte lbl_80551210
	.4byte lbl_80551220
	.4byte lbl_80551230
	.4byte lbl_80551240
	.4byte 0


.global lbl_8055127C
lbl_8055127C:
	.asciz "nandUserAreaCallback"
	.balign 4


.global lbl_80551294
lbl_80551294:
	.asciz "Illegal status is detected at %s()"
	.balign 4


.global lbl_805512B8
lbl_805512B8:
	.asciz "/shared2/test2/nanderr.log"
	.balign 4


.global lbl_805512D4
lbl_805512D4:
	.asciz "%d %04d/%02d/%02d %02d:%02d:%02d %s %s"
	.balign 4
	.4byte 0


.global lbl_80551300
lbl_80551300:
	.asciz "<< RVL_SDK - OS \trelease build: Feb 27 2009 10:04:29 (0x4302_145) >>"
	.balign 4
	.asciz "\nRevolution OS\n"
	.asciz "Kernel built : %s %s\n"
	.balign 4
	.asciz "Feb 27 2009"
	.asciz "10:04:29"
	.balign 4
	.asciz "Console Type : "
	.asciz "Pre-production board 1\n"
	.asciz "Pre-production board 2-1\n"
	.balign 4
	.asciz "Pre-production board 2-2\n"
	.balign 4
	.asciz "Retail %d\n"
	.balign 4
	.asciz "NDEV 2.1\n"
	.balign 4
	.asciz "NDEV 2.0\n"
	.balign 4
	.asciz "NDEV 1.2\n"
	.balign 4
	.asciz "NDEV 1.1\n"
	.balign 4
	.asciz "NDEV 1.0\n"
	.balign 4
	.asciz "Revolution Emulator\n"
	.balign 4
	.asciz "Emulation platform (%08x)\n"
	.balign 4
	.asciz "TDEV-based emulation HW%d\n"
	.balign 4
	.asciz "Firmware     : %d.%d.%d "
	.balign 4
	.asciz "(%d/%d/%d)\n"
	.asciz "Memory %d MB\n"
	.balign 4
	.asciz "MEM1 Arena : 0x%x - 0x%x\n"
	.balign 4
	.asciz "MEM2 Arena : 0x%x - 0x%x\n"
	.balign 4
	.asciz "OS ERROR: boot program is not for RVL target. Please use correct boot program.\n"
	.asciz "Failed to run app"
	.balign 4
	.4byte 0
	.asciz "OS ERROR: apploader[D].img is not for RVL target. Please use correct apploader[D].img.\n"
	.asciz "OS ERROR: This firmware is an improper version for this SDK. Please use a correct Firmware.\n"
	.balign 4
	.asciz "\n\nERROR #002\nAn error has occurred.\nPress the Eject Button, remove the\nGame Disc, and turn off the power to \nthe console. \nPlease read the Wii Operations Manual \nfor further instructions.\n"
	.balign 4
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.asciz "Installing OSDBIntegrator\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d commandeered by TRK\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d vectored to debugger\n"
	.balign 4
	.asciz "Exceptions initialized...\n"
	.balign 4
	.4byte 0


.global lbl_805517A8
lbl_805517A8:
	# ROM: 0x54D8A8
	.4byte OnReset
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0


.global lbl_805517B8
lbl_805517B8:
	# ROM: 0x54D8B8
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800
	.4byte 0x00640027
	.4byte 0x191E0000
	.4byte 0x00DEFFFC
	.4byte 0x02A08000
	.4byte 0x029C0028
	.4byte 0x16FC0054
	.4byte 0x16FD4348
	.4byte 0x002102FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80551838
lbl_80551838:
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.balign 4
	.4byte 0
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.balign 4
	.4byte 0
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.balign 4
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.balign 4
	.asciz "\t- DMA attempted to access normal cache\n"
	.balign 4
	.asciz "\t- DMA missed in data cache\n"
	.balign 4
	.asciz "\t- DMA queue overflowed\n"
	.balign 4
	.asciz "L1 i-caches initialized\n"
	.balign 4
	.asciz "L1 d-caches initialized\n"
	.balign 4
	.asciz "L2 cache initialized\n"
	.balign 4
	.asciz "Locked cache machine check handler installed\n"
	.balign 4
	.4byte 0


.global lbl_80551A70
lbl_80551A70:
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.4byte 0
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.balign 4
	.asciz "\nGQRs----------\n"
	.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.balign 4
	.asciz "\n\nFPRs----------\n"
	.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.balign 4
	.asciz "\n\nPSFs----------\n"
	.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"


.global lbl_80551C28
lbl_80551C28:
	.asciz "FPU-unavailable handler installed\n"
	.balign 4
	.4byte 0


.global lbl_80551C50
lbl_80551C50:
	.asciz " in \"%s\" on line %d.\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
	.asciz "Non-recoverable Exception %d"
	.balign 4
	.asciz "Unhandled Exception %d"
	.balign 4
	.asciz "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
	.balign 4
	.asciz "TB = 0x%016llx\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.asciz "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
	.balign 4
	.asciz "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
	.asciz "AI DMA Address =   0x%04x%04x\n"
	.balign 4
	.asciz "ARAM DMA Address = 0x%04x%04x\n"
	.balign 4
	.asciz "DI DMA Address =   0x%08x\n"
	.balign 4
	.asciz "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
	.balign 4
	.4byte 0


.global lbl_80551F30
lbl_80551F30:
	.asciz "\nOSExec(): Failed to exec %d in %d\n"


.global lbl_80551F54
lbl_80551F54:
	.asciz "\nOSExec(): The specified game doesn't exist in the disc\n"
	.balign 4


.global lbl_80551F90
lbl_80551F90:
	.asciz "2004/02/01"
	.balign 4
	.4byte 0


.global lbl_80551FA0
lbl_80551FA0:
	# ROM: 0x54E0A0
	.4byte 0x020C020D
	.4byte 0x020E020F
	.4byte 0x02100211
	.4byte 0x02120213
	.4byte 0x02140215
	.4byte 0x02160217
	.4byte 0x02180219
	.4byte 0x021A021B
	.4byte 0x021C021D
	.4byte 0x021E021F
	.4byte 0x02200221
	.4byte 0x02220223
	.4byte 0x02240225
	.4byte 0x02260227
	.4byte 0x02280229
	.4byte 0x022A022B
	.4byte 0x022C022D
	.4byte 0x022E022F
	.4byte 0x02300231
	.4byte 0x02320233
	.4byte 0x02340235
	.4byte 0x02360237
	.4byte 0x02380239
	.4byte 0x023A023B
	.4byte 0x023C023D
	.4byte 0x023E023F
	.4byte 0x02400241
	.4byte 0x02420243
	.4byte 0x02440245
	.4byte 0x02460247
	.4byte 0x02480249
	.4byte 0x024A024B
	.4byte 0x024C024D
	.4byte 0x024E024F
	.4byte 0x02500251
	.4byte 0x02520253
	.4byte 0x02540255
	.4byte 0x02560257
	.4byte 0x02580259
	.4byte 0x025A025B
	.4byte 0x025C025D
	.4byte 0x025E025F
	.4byte 0x02600261
	.4byte 0x02620263
	.4byte 0x02640265
	.4byte 0x02660267
	.4byte 0x02680269
	.4byte 0x026A020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C026B
	.4byte 0x026C026D
	.4byte 0x026E026F
	.4byte 0x02700271
	.4byte 0x02720273
	.4byte 0x02740275
	.4byte 0x02760277
	.4byte 0x02780279
	.4byte 0x027A027B
	.4byte 0x027C027D
	.4byte 0x027E027F
	.4byte 0x02800281
	.4byte 0x02820283
	.4byte 0x02840285
	.4byte 0x02860287
	.4byte 0x02880289
	.4byte 0x028A028B
	.4byte 0x028C028D
	.4byte 0x028E028F
	.4byte 0x02900291
	.4byte 0x02920293
	.4byte 0x02940295
	.4byte 0x02960297
	.4byte 0x02980299
	.4byte 0x029A029B
	.4byte 0x029C029D
	.4byte 0x029E029F
	.4byte 0x02A002A1
	.4byte 0x02A202A3
	.4byte 0x02A402A5
	.4byte 0x02A602A7
	.4byte 0x02A802A9


.global lbl_80552120
lbl_80552120:
	# ROM: 0x54E220
	.4byte 0x00000001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x00060007
	.4byte 0x00080009
	.4byte 0x000A000B
	.4byte 0x000C000D
	.4byte 0x000E000F
	.4byte 0x00100011
	.4byte 0x00120013
	.4byte 0x00140015
	.4byte 0x00160017
	.4byte 0x00180019
	.4byte 0x001A001B
	.4byte 0x001C001D
	.4byte 0x001E001F
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000006C
	.4byte 0x006D006E
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000074
	.4byte 0x00750076
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000007B
	.4byte 0x007C007D
	.4byte 0x007E007F
	.4byte 0x00800081
	.4byte 0x00820083
	.4byte 0x00840085
	.4byte 0x00860087
	.4byte 0x00880089
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000008A
	.4byte 0x008B008C
	.4byte 0x008D008E
	.4byte 0x008F0090
	.4byte 0x00910000
	.4byte 0
	.4byte 0x00000092
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000093
	.4byte 0x00940095
	.4byte 0x00960097
	.4byte 0x00980099
	.4byte 0x009A009B
	.4byte 0x009C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x009D009E
	.4byte 0x009F00A0
	.4byte 0x00A100A2
	.4byte 0x00A300A4
	.4byte 0x00A500A6
	.4byte 0x00A700A8
	.4byte 0x00A900AA
	.4byte 0x00AB00AC
	.4byte 0x00AD00AE
	.4byte 0x00AF00B0
	.4byte 0x00B100B2
	.4byte 0x00B300B4
	.4byte 0x00B500B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00B700B8
	.4byte 0x00B900BA
	.4byte 0x00BB00BC
	.4byte 0x00BD00BE
	.4byte 0x00BF00C0
	.4byte 0x00C100C2
	.4byte 0x00C300C4
	.4byte 0x00C500C6
	.4byte 0x00C700C8
	.4byte 0x00C900CA
	.4byte 0x00CB00CC
	.4byte 0x00CD00CE
	.4byte 0x00CF00D0
	.4byte 0
	.4byte 0
	.4byte 0x00D100D2
	.4byte 0x00D300D4
	.4byte 0x00D500D6
	.4byte 0x00D700D8
	.4byte 0x00D900DA
	.4byte 0x00DB00DC
	.4byte 0x00DD00DE
	.4byte 0x00DF00E0
	.4byte 0x00E100E2
	.4byte 0x00E300E4
	.4byte 0x00E500E6
	.4byte 0x00E700E8
	.4byte 0x00E900EA
	.4byte 0x00EB00EC
	.4byte 0x00ED00EE
	.4byte 0x00EF00F0
	.4byte 0x00F100F2
	.4byte 0x00F300F4
	.4byte 0x00F500F6
	.4byte 0x00F700F8
	.4byte 0x00F900FA
	.4byte 0x00FB00FC
	.4byte 0x00FD00FE
	.4byte 0x00FF0100
	.4byte 0x01010102
	.4byte 0x01030104
	.4byte 0x01050106
	.4byte 0x01070108
	.4byte 0x0109010A
	.4byte 0x010B010C
	.4byte 0x010D010E
	.4byte 0x010F0110
	.4byte 0x01110112
	.4byte 0x01130114
	.4byte 0x01150116
	.4byte 0x01170118
	.4byte 0x0119011A
	.4byte 0x011B011C
	.4byte 0x011D011E
	.4byte 0x011F0120
	.4byte 0x01210122
	.4byte 0x01230000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01240125
	.4byte 0x01260127
	.4byte 0x01280129
	.4byte 0x012A012B
	.4byte 0x012C012D
	.4byte 0x012E012F
	.4byte 0x01300131
	.4byte 0x01320133
	.4byte 0x01340135
	.4byte 0x01360137
	.4byte 0x01380139
	.4byte 0x013A013B
	.4byte 0x013C013D
	.4byte 0x013E013F
	.4byte 0x01400141
	.4byte 0x01420143
	.4byte 0x01440145
	.4byte 0x01460147
	.4byte 0x01480149
	.4byte 0x014A014B
	.4byte 0x014C014D
	.4byte 0x014E014F
	.4byte 0x01500151
	.4byte 0x01520153
	.4byte 0x01540155
	.4byte 0x01560157
	.4byte 0x01580159
	.4byte 0x015A015B
	.4byte 0x015C015D
	.4byte 0x015E015F
	.4byte 0x01600161
	.4byte 0x01620163
	.4byte 0x01640165
	.4byte 0x01660167
	.4byte 0x01680169
	.4byte 0x016A016B
	.4byte 0x016C016D
	.4byte 0x016E016F
	.4byte 0x01700171
	.4byte 0x01720173
	.4byte 0x01740175
	.4byte 0x01760177
	.4byte 0x01780179
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x017A017B
	.4byte 0x017C017D
	.4byte 0x017E017F
	.4byte 0x01800181
	.4byte 0x01820183
	.4byte 0x01840185
	.4byte 0x01860187
	.4byte 0x01880189
	.4byte 0x018A018B
	.4byte 0x018C018D
	.4byte 0x018E018F
	.4byte 0x01900191
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01920193
	.4byte 0x01940195
	.4byte 0x01960197
	.4byte 0x01980199
	.4byte 0x019A019B
	.4byte 0x019C019D
	.4byte 0x019E019F
	.4byte 0x01A001A1
	.4byte 0x01A201A3
	.4byte 0x01A401A5
	.4byte 0x01A601A7
	.4byte 0x01A801A9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01AA01AB
	.4byte 0x01AC01AD
	.4byte 0x01AE01AF
	.4byte 0x01B001B1
	.4byte 0x01B201B3
	.4byte 0x01B401B5
	.4byte 0x01B601B7
	.4byte 0x01B801B9
	.4byte 0x01BA01BB
	.4byte 0x01BC01BD
	.4byte 0x01BE01BF
	.4byte 0x01C001C1
	.4byte 0x01C201C3
	.4byte 0x01C401C5
	.4byte 0x01C601C7
	.4byte 0x01C801C9
	.4byte 0x01CA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01CB01CC
	.4byte 0x01CD01CE
	.4byte 0x01CF01D0
	.4byte 0x01D101D2
	.4byte 0x01D301D4
	.4byte 0x01D501D6
	.4byte 0x01D701D8
	.4byte 0x01D901DA
	.4byte 0x01DB01DC
	.4byte 0x01DD01DE
	.4byte 0x01DF01E0
	.4byte 0x01E101E2
	.4byte 0x01E301E4
	.4byte 0x01E501E6
	.4byte 0x01E701E8
	.4byte 0x01E901EA
	.4byte 0x01EB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01EC01ED
	.4byte 0x01EE01EF
	.4byte 0x01F001F1
	.4byte 0x01F201F3
	.4byte 0x01F401F5
	.4byte 0x01F601F7
	.4byte 0x01F801F9
	.4byte 0x01FA01FB
	.4byte 0x01FC01FD
	.4byte 0x01FE01FF
	.4byte 0x02000201
	.4byte 0x02020203
	.4byte 0x02040205
	.4byte 0x02060207
	.4byte 0x02080209
	.4byte 0x020A020B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000020C
	.4byte 0x020D020E
	.4byte 0x020F0210
	.4byte 0x02110212
	.4byte 0x02130214
	.4byte 0x02150216
	.4byte 0x02170218
	.4byte 0x0219021A
	.4byte 0x021B021C
	.4byte 0x021D021E
	.4byte 0x021F0220
	.4byte 0x02210222
	.4byte 0x02230224
	.4byte 0x02250226
	.4byte 0x02270228
	.4byte 0x0229022A
	.4byte 0x022B022C
	.4byte 0x022D022E
	.4byte 0x022F0230
	.4byte 0x02310232
	.4byte 0x02330234
	.4byte 0x02350236
	.4byte 0x02370238
	.4byte 0x0239023A
	.4byte 0x023B023C
	.4byte 0x023D023E
	.4byte 0x023F0240
	.4byte 0x02410242
	.4byte 0x02430244
	.4byte 0x02450246
	.4byte 0x02470248
	.4byte 0x0249024A
	.4byte 0x024B024C
	.4byte 0x024D024E
	.4byte 0x024F0250
	.4byte 0x02510252
	.4byte 0x02530254
	.4byte 0x02550256
	.4byte 0x02570258
	.4byte 0x0259025A
	.4byte 0x025B025C
	.4byte 0x025D025E
	.4byte 0x025F0260
	.4byte 0x02610262
	.4byte 0x02630264
	.4byte 0x02650266
	.4byte 0x02670268
	.4byte 0x0269026A
	.4byte 0x026B026C
	.4byte 0x026D026E
	.4byte 0x026F0270
	.4byte 0x02710272
	.4byte 0x02730274
	.4byte 0x02750276
	.4byte 0x02770278
	.4byte 0x0279027A
	.4byte 0x027B027C
	.4byte 0x027D027E
	.4byte 0x027F0280
	.4byte 0x02810282
	.4byte 0x02830284
	.4byte 0x02850286
	.4byte 0x02870288
	.4byte 0x0289028A
	.4byte 0x028B028C
	.4byte 0x028D028E
	.4byte 0x028F0290
	.4byte 0x02910292
	.4byte 0x02930294
	.4byte 0x02950296
	.4byte 0x02970298
	.4byte 0x0299029A
	.4byte 0x029B029C
	.4byte 0x029D029E
	.4byte 0x029F02A0
	.4byte 0x02A102A2
	.4byte 0x02A302A4
	.4byte 0x02A502A6
	.4byte 0x02A702A8
	.4byte 0x02A902AA
	.4byte 0x02AB02AC
	.4byte 0x02AD02AE
	.4byte 0x02AF02B0
	.4byte 0x02B102B2
	.4byte 0x02B302B4
	.4byte 0x02B502B6
	.4byte 0x02B702B8
	.4byte 0x02B902BA
	.4byte 0x02BB02BC
	.4byte 0x02BD02BE
	.4byte 0x02BF02C0
	.4byte 0x02C102C2
	.4byte 0x02C302C4
	.4byte 0x02C502C6
	.4byte 0x02C702C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02C902CA
	.4byte 0x02CB02CC
	.4byte 0x02CD02CE
	.4byte 0x02CF02D0
	.4byte 0x02D102D2
	.4byte 0x02D302D4
	.4byte 0x02D502D6
	.4byte 0x02D702D8
	.4byte 0x02D902DA
	.4byte 0x02DB02DC
	.4byte 0x02DD02DE
	.4byte 0x02DF02E0
	.4byte 0x02E102E2
	.4byte 0x02E302E4
	.4byte 0x02E502E6
	.4byte 0x000002E7
	.4byte 0x02E802E9
	.4byte 0x02EA02EB
	.4byte 0x02EC02ED
	.4byte 0x02EE02EF
	.4byte 0x02F002F1
	.4byte 0x02F202F3
	.4byte 0x02F402F5
	.4byte 0x02F602F7
	.4byte 0x02F802F9
	.4byte 0x02FA02FB
	.4byte 0x02FC02FD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02FE02FF
	.4byte 0x03000301
	.4byte 0x03020303
	.4byte 0x03040305
	.4byte 0x03060307
	.4byte 0x03080309
	.4byte 0x030A030B
	.4byte 0x030C030D
	.4byte 0x030E030F
	.4byte 0x03100311
	.4byte 0x03120313
	.4byte 0x03140315
	.4byte 0x03160317
	.4byte 0x03180319
	.4byte 0x031A031B
	.4byte 0
	.4byte 0


.global lbl_80552AB0
lbl_80552AB0:
	# ROM: 0x54EBB0
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00000010
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF


.global lbl_80552AE0
lbl_80552AE0:
	# ROM: 0x54EBE0
	.4byte OnShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0


.global lbl_80552AF0
lbl_80552AF0:
	.asciz "OSReset.c"
	.balign 4


.global lbl_80552AFC
lbl_80552AFC:
	.asciz "__OSHotReset(): Falied to reset system.\n"
	.balign 4
	.asciz "__OSReturnToMenu(): Falied to boot system menu.\n"
	.balign 4


.global lbl_80552B5C
lbl_80552B5C:
	.asciz "OSReturnToMenu(): Falied to boot system menu.\n"
	.balign 4
	.asciz "OSReturnToDataManager(): Falied to boot system menu.\n"
	.balign 4
	.asciz "Calendar/Calendar_index.html"
	.balign 4
	.asciz "Display/Display_index.html"
	.balign 4
	.asciz "Sound/Sound_index.html"
	.balign 4
	.asciz "Parental_Control/Parental_Control_index.html"
	.balign 4
	.asciz "Internet/Internet_index.html"
	.balign 4
	.asciz "WiiConnect24/Wiiconnect24_index.html"
	.balign 4
	.asciz "Update/Update_index.html"
	.balign 4
	.asciz "OSReturnToSetting(): You can't specify %d.  \n"
	.balign 4

.global lbl_80552CDC
lbl_80552CDC:
	# ROM: 0x54EDDC
	.asciz "OSResetSystem() is obsoleted. It doesn't work any longer.\n"
	.balign 4
	.asciz "OSSetBootDol() is obsoleted. It doesn't work any longer.\n"
	.balign 4
	.4byte 0


.global lbl_80552D58
lbl_80552D58:
	# ROM: 0x54EE58
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000097
	.4byte 0x000000B5
	.4byte 0x000000D4
	.4byte 0x000000F3
	.4byte 0x00000111
	.4byte 0x00000130
	.4byte 0x0000014E


.global lbl_80552D88
lbl_80552D88:
	# ROM: 0x54EE88
	.4byte 0
	.4byte 0x0000001F
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x00000079
	.4byte 0x00000098
	.4byte 0x000000B6
	.4byte 0x000000D5
	.4byte 0x000000F4
	.4byte 0x00000112
	.4byte 0x00000131
	.4byte 0x0000014F


.global lbl_80552DB8
lbl_80552DB8:
	# ROM: 0x54EEB8
	.4byte 0x20AC0000
	.4byte 0x201A0192
	.4byte 0x201E2026
	.4byte 0x20202021
	.4byte 0x02C62030
	.4byte 0x01602039
	.4byte 0x01520000
	.4byte 0x017D0000
	.4byte 0x00002018
	.4byte 0x2019201C
	.4byte 0x201D2022
	.4byte 0x20132014
	.4byte 0x02DC2122
	.4byte 0x0161203A
	.4byte 0x01530000
	.4byte 0x017E0178

.global lbl_80552DF8
lbl_80552DF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x815F005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006E006F
	.4byte 0x00700071
	.4byte 0x00720073
	.4byte 0x00740075
	.4byte 0x00760077
	.4byte 0x00780079
	.4byte 0x007A007B
	.4byte 0x007C007D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81918192
	.4byte 0x0000005C
	.4byte 0x00008198
	.4byte 0x814E0000
	.4byte 0
	.4byte 0x81CA0000
	.4byte 0
	.4byte 0x818B817D
	.4byte 0
	.4byte 0x814C0000
	.4byte 0x81F70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000817E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008180
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80552FF8
lbl_80552FF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000839F
	.4byte 0x83A083A1
	.4byte 0x83A283A3
	.4byte 0x83A483A5
	.4byte 0x83A683A7
	.4byte 0x83A883A9
	.4byte 0x83AA83AB
	.4byte 0x83AC83AD
	.4byte 0x83AE83AF
	.4byte 0x000083B0
	.4byte 0x83B183B2
	.4byte 0x83B383B4
	.4byte 0x83B583B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000083BF
	.4byte 0x83C083C1
	.4byte 0x83C283C3
	.4byte 0x83C483C5
	.4byte 0x83C683C7
	.4byte 0x83C883C9
	.4byte 0x83CA83CB
	.4byte 0x83CC83CD
	.4byte 0x83CE83CF
	.4byte 0x000083D0
	.4byte 0x83D183D2
	.4byte 0x83D383D4
	.4byte 0x83D583D6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_805531F8
lbl_805531F8:
	.4byte 0x00008446
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x84408441
	.4byte 0x84428443
	.4byte 0x84448445
	.4byte 0x84478448
	.4byte 0x8449844A
	.4byte 0x844B844C
	.4byte 0x844D844E
	.4byte 0x844F8450
	.4byte 0x84518452
	.4byte 0x84538454
	.4byte 0x84558456
	.4byte 0x84578458
	.4byte 0x8459845A
	.4byte 0x845B845C
	.4byte 0x845D845E
	.4byte 0x845F8460
	.4byte 0x84708471
	.4byte 0x84728473
	.4byte 0x84748475
	.4byte 0x84778478
	.4byte 0x8479847A
	.4byte 0x847B847C
	.4byte 0x847D847E
	.4byte 0x84808481
	.4byte 0x84828483
	.4byte 0x84848485
	.4byte 0x84868487
	.4byte 0x84888489
	.4byte 0x848A848B
	.4byte 0x848C848D
	.4byte 0x848E848F
	.4byte 0x84908491
	.4byte 0x00008476
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_805533F8
lbl_805533F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x815D0000
	.4byte 0
	.4byte 0x0000815C
	.4byte 0x81610000
	.4byte 0x81658166
	.4byte 0
	.4byte 0x81678168
	.4byte 0
	.4byte 0x81F581F6
	.4byte 0
	.4byte 0x00008164
	.4byte 0x81630000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81F10000
	.4byte 0x818C818D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081A6
	.4byte 0
	.4byte 0x007E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_805535F8
lbl_805535F8:
	.4byte 0
	.4byte 0x0000818E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A981AA
	.4byte 0x81A881AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81CB0000
	.4byte 0x81CC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_805537F8
lbl_805537F8:
	.4byte 0x81CD0000
	.4byte 0x81DD81CE
	.4byte 0
	.4byte 0x000081DE
	.4byte 0x81B80000
	.4byte 0x000081B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x817C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81E30000
	.4byte 0x000081E5
	.4byte 0x81870000
	.4byte 0x81DA0000
	.4byte 0
	.4byte 0
	.4byte 0x000081C8
	.4byte 0x81C981BF
	.4byte 0x81BE81E7
	.4byte 0x81E80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x818881E6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81E00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x818281DF
	.4byte 0
	.4byte 0
	.4byte 0x81858186
	.4byte 0
	.4byte 0x81E181E2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81BC81BD
	.4byte 0
	.4byte 0x81BA81BB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_805539F8
lbl_805539F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

	.4byte 0x81DC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80553BF8
lbl_80553BF8:
	.4byte 0x849F84AA
	.4byte 0x84A084AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x84A10000
	.4byte 0x000084AC
	.4byte 0x84A20000
	.4byte 0x000084AD
	.4byte 0x84A40000
	.4byte 0x000084AF
	.4byte 0x84A30000
	.4byte 0x000084AE
	.4byte 0x84A584BA
	.4byte 0
	.4byte 0x84B50000
	.4byte 0x000084B0
	.4byte 0x84A784BC
	.4byte 0
	.4byte 0x84B70000
	.4byte 0x000084B2
	.4byte 0x84A60000
	.4byte 0x000084B6
	.4byte 0x84BB0000
	.4byte 0x000084B1
	.4byte 0x84A80000
	.4byte 0x000084B8
	.4byte 0x84BD0000
	.4byte 0x000084B3
	.4byte 0x84A90000
	.4byte 0x000084B9
	.4byte 0
	.4byte 0x84BE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000084B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A181A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A381A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81A581A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x819F819E
	.4byte 0
	.4byte 0x0000819B
	.4byte 0
	.4byte 0x819D819C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000081FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80553DF8
lbl_80553DF8:
	.4byte 0
	.4byte 0
	.4byte 0x0000819A
	.4byte 0x81990000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x818A0000
	.4byte 0x81890000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81F40000
	.4byte 0x000081F3
	.4byte 0x000081F2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80553FF8
lbl_80553FF8:
	.4byte 0x81408141
	.4byte 0x81428156
	.4byte 0x00008158
	.4byte 0x8159815A
	.4byte 0x81718172
	.4byte 0x81738174
	.4byte 0x81758176
	.4byte 0x81778178
	.4byte 0x8179817A
	.4byte 0x81A781AC
	.4byte 0x816B816C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x81600000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000829F
	.4byte 0x82A082A1
	.4byte 0x82A282A3
	.4byte 0x82A482A5
	.4byte 0x82A682A7
	.4byte 0x82A882A9
	.4byte 0x82AA82AB
	.4byte 0x82AC82AD
	.4byte 0x82AE82AF
	.4byte 0x82B082B1
	.4byte 0x82B282B3
	.4byte 0x82B482B5
	.4byte 0x82B682B7
	.4byte 0x82B882B9
	.4byte 0x82BA82BB
	.4byte 0x82BC82BD
	.4byte 0x82BE82BF
	.4byte 0x82C082C1
	.4byte 0x82C282C3
	.4byte 0x82C482C5
	.4byte 0x82C682C7
	.4byte 0x82C882C9
	.4byte 0x82CA82CB
	.4byte 0x82CC82CD
	.4byte 0x82CE82CF
	.4byte 0x82D082D1
	.4byte 0x82D282D3
	.4byte 0x82D482D5
	.4byte 0x82D682D7
	.4byte 0x82D882D9
	.4byte 0x82DA82DB
	.4byte 0x82DC82DD
	.4byte 0x82DE82DF
	.4byte 0x82E082E1
	.4byte 0x82E282E3
	.4byte 0x82E482E5
	.4byte 0x82E682E7
	.4byte 0x82E882E9
	.4byte 0x82EA82EB
	.4byte 0x82EC82ED
	.4byte 0x82EE82EF
	.4byte 0x82F082F1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000814A
	.4byte 0x814B8154
	.4byte 0x81550000
	.4byte 0x00008340
	.4byte 0x83418342
	.4byte 0x83438344
	.4byte 0x83458346
	.4byte 0x83478348
	.4byte 0x8349834A
	.4byte 0x834B834C
	.4byte 0x834D834E
	.4byte 0x834F8350
	.4byte 0x83518352
	.4byte 0x83538354
	.4byte 0x83558356
	.4byte 0x83578358
	.4byte 0x8359835A
	.4byte 0x835B835C
	.4byte 0x835D835E
	.4byte 0x835F8360
	.4byte 0x83618362
	.4byte 0x83638364
	.4byte 0x83658366
	.4byte 0x83678368
	.4byte 0x8369836A
	.4byte 0x836B836C
	.4byte 0x836D836E
	.4byte 0x836F8370
	.4byte 0x83718372
	.4byte 0x83738374
	.4byte 0x83758376
	.4byte 0x83778378
	.4byte 0x8379837A
	.4byte 0x837B837C
	.4byte 0x837D837E
	.4byte 0x83808381
	.4byte 0x83828383
	.4byte 0x83848385
	.4byte 0x83868387
	.4byte 0x83888389
	.4byte 0x838A838B
	.4byte 0x838C838D
	.4byte 0x838E838F
	.4byte 0x83908391
	.4byte 0x83928393
	.4byte 0x83948395
	.4byte 0x83960000
	.4byte 0
	.4byte 0x00008145
	.4byte 0x815B8152
	.4byte 0x81530000

.global lbl_805541F8
lbl_805541F8:
	.4byte 0x88EA929A
	.4byte 0x00008EB5
	.4byte 0
	.4byte 0x0000969C
	.4byte 0x8FE48E4F
	.4byte 0x8FE389BA
	.4byte 0x00009573
	.4byte 0x975E0000
	.4byte 0x98A0894E
	.4byte 0
	.4byte 0x8A8E98A1
	.4byte 0x90A299C0
	.4byte 0x8B7595B8
	.4byte 0
	.4byte 0
	.4byte 0x8FE50000
	.4byte 0x000097BC
	.4byte 0
	.4byte 0
	.4byte 0x95C00000
	.4byte 0
	.4byte 0x98A20000
	.4byte 0x00009286
	.4byte 0
	.4byte 0x000098A3
	.4byte 0x8BF80000
	.4byte 0
	.4byte 0x98A40000
	.4byte 0x8ADB924F
	.4byte 0x00008EE5
	.4byte 0x98A50000
	.4byte 0x000098A6
	.4byte 0
	.4byte 0x98A79454
	.4byte 0x00008B76
	.4byte 0
	.4byte 0
	.4byte 0x00009456
	.4byte 0x000093E1
	.4byte 0x8CC19652
	.4byte 0
	.4byte 0
	.4byte 0x0000E568
	.4byte 0x98A88FE6
	.4byte 0x98A989B3
	.4byte 0
	.4byte 0x00008BE3
	.4byte 0x8CEE96E7
	.4byte 0
	.4byte 0x9BA40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009790
	.4byte 0x000093FB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AA30000
	.4byte 0x8B540000
	.4byte 0x98AA0000
	.4byte 0x000098AB
	.4byte 0x97B90000
	.4byte 0x975C9188
	.4byte 0x98AD8E96
	.4byte 0x93F10000
	.4byte 0x98B00000
	.4byte 0x0000895D
	.4byte 0x8CDD0000
	.4byte 0x8CDC88E4
	.4byte 0
	.4byte 0x986A9869
	.4byte 0x00008DB1
	.4byte 0x889F0000
	.4byte 0x98B198B2
	.4byte 0x98B39653
	.4byte 0x98B40000
	.4byte 0x8CF088E5
	.4byte 0x96920000
	.4byte 0x8B9C0000
	.4byte 0x00008B9D
	.4byte 0x8B9E92E0
	.4byte 0x97BA0000
	.4byte 0x98B50000
	.4byte 0x000098B6
	.4byte 0
	.4byte 0x98B70000
	.4byte 0
	.4byte 0x906C0000
	.4byte 0
	.4byte 0
	.4byte 0x8F59906D
	.4byte 0x98BC0000
	.4byte 0x98BA0000
	.4byte 0x98BB8B77
	.4byte 0
	.4byte 0x8DA189EE
	.4byte 0x000098B9
	.4byte 0x98B895A7
	.4byte 0
	.4byte 0
	.4byte 0x8E658E64
	.4byte 0x91BC98BD
	.4byte 0x957490E5
	.4byte 0
	.4byte 0x00008157
	.4byte 0x98BE98C0
	.4byte 0
	.4byte 0x000091E3
	.4byte 0x97DF88C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098BF
	.4byte 0x89BC0000
	.4byte 0x8BC20000
	.4byte 0x92870000
	.4byte 0
	.4byte 0x8C8F98C1
	.4byte 0
	.4byte 0x00009443
	.4byte 0
	.4byte 0

.global lbl_805543F8
lbl_805543F8:
	.4byte 0x00008AE9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098C2
	.4byte 0x88C90000
	.4byte 0x00008CDE
	.4byte 0x8AEA959A
	.4byte 0x94B08B78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89EF0000
	.4byte 0x98E59360
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000948C
	.4byte 0x98C40000
	.4byte 0
	.4byte 0x94BA0000
	.4byte 0x97E00000
	.4byte 0x904C0000
	.4byte 0x8E660000
	.4byte 0x8E9789BE
	.4byte 0
	.4byte 0
	.4byte 0x000092CF
	.4byte 0
	.4byte 0x924198C8
	.4byte 0
	.4byte 0
	.4byte 0x000088CA
	.4byte 0x92E18F5A
	.4byte 0x8DB29743
	.4byte 0x000091CC
	.4byte 0x000089BD
	.4byte 0x000098C7
	.4byte 0x0000975D
	.4byte 0x98C398C5
	.4byte 0x8DEC98C6
	.4byte 0x9B430000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098CE
	.4byte 0
	.4byte 0
	.4byte 0x000098D1
	.4byte 0x98CF0000
	.4byte 0x000089C0
	.4byte 0x000095B9
	.4byte 0x98C90000
	.4byte 0
	.4byte 0x000098CD
	.4byte 0x8CF10000
	.4byte 0x00008E67
	.4byte 0
	.4byte 0x00008AA4
	.4byte 0
	.4byte 0x98D20000
	.4byte 0x98CA0000
	.4byte 0x000097E1
	.4byte 0x00008E98
	.4byte 0x000098CB
	.4byte 0x000098D0
	.4byte 0
	.4byte 0
	.4byte 0x98D30000
	.4byte 0x98CC0000
	.4byte 0x00008B9F
	.4byte 0x000088CB
	.4byte 0
	.4byte 0x8BA089BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009B44
	.4byte 0x00009699
	.4byte 0x958E8CF2
	.4byte 0
	.4byte 0
	.4byte 0x0000904E
	.4byte 0x97B50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095D6
	.4byte 0
	.4byte 0x8C5791A3
	.4byte 0x89E20000
	.4byte 0
	.4byte 0
	.4byte 0x8F720000
	.4byte 0
	.4byte 0x98D70000
	.4byte 0x98DC98DA
	.4byte 0
	.4byte 0x98D50000
	.4byte 0x000091AD
	.4byte 0x98D80000
	.4byte 0x98DB98D9
	.4byte 0x000095DB
	.4byte 0x000098D6
	.4byte 0x0000904D
	.4byte 0x00009693
	.4byte 0x98DD98DE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F4398EB
	.4byte 0
	.4byte 0x0000946F
	.4byte 0x00009555
	.4byte 0x98E60000
	.4byte 0x95EE0000
	.4byte 0x89B40000
	.4byte 0
	.4byte 0x98EA0000

.global lbl_805545F8
lbl_805545F8:
	.4byte 0
	.4byte 0
	.4byte 0x000098E4
	.4byte 0x98ED0000
	.4byte 0x00009171
	.4byte 0x00008CC2
	.4byte 0x0000947B
	.4byte 0x0000E0C5
	.4byte 0x000098EC
	.4byte 0x937C0000
	.4byte 0x98E10000
	.4byte 0x8CF40000
	.4byte 0x00008CF3
	.4byte 0x98DF0000
	.4byte 0
	.4byte 0x00008ED8
	.4byte 0x000098E7
	.4byte 0x000095ED
	.4byte 0x926C98E3
	.4byte 0x8C910000
	.4byte 0x98E098E8
	.4byte 0x98E297CF
	.4byte 0x98E99860
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8BE40000
	.4byte 0x00008C90
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000098EE
	.4byte 0
	.4byte 0x000098EF
	.4byte 0x98F388CC
	.4byte 0
	.4byte 0
	.4byte 0x000095CE
	.4byte 0x98F20000
	.4byte 0
	.4byte 0x000098F1
	.4byte 0x98F50000
	.4byte 0
	.4byte 0x98F40000
	.4byte 0x92E20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x98F60000
	.4byte 0
	.4byte 0
	.4byte 0x8EC30000
	.4byte 0x91A492E3
	.4byte 0x8BF40000
	.4byte 0x98F70000
	.4byte 0
	.4byte 0x00008B55
	.4byte 0
	.4byte 0x98F80000
	.4byte 0
	.4byte 0x000098FA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009654
	.4byte 0
	.4byte 0x00008C86
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E5094F5
	.4byte 0x98F90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DC39762
	.4byte 0
	.4byte 0
	.4byte 0x98FC9942
	.4byte 0x98FB8DC2
	.4byte 0x00008F9D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C580000
	.4byte 0
	.4byte 0x99430000
	.4byte 0x00008BCD
	.4byte 0
	.4byte 0x00009940
	.4byte 0x99410000
	.4byte 0x000093AD
	.4byte 0x0000919C
	.4byte 0x00008BA1
	.4byte 0
	.4byte 0x0000966C
	.4byte 0x99440000
	.4byte 0
	.4byte 0x97BB0000
	.4byte 0
	.4byte 0x99450000
	.4byte 0
	.4byte 0x00009948
	.4byte 0x00009946
	.4byte 0x0000916D
	.4byte 0
	.4byte 0
	.4byte 0x00009947
	.4byte 0x99490000
	.4byte 0
	.4byte 0
	.4byte 0x0000994B
	.4byte 0
	.4byte 0x0000994A
	.4byte 0x000095C6
	.4byte 0
	.4byte 0

.global lbl_805547F8
lbl_805547F8:
	.4byte 0x8B56994D
	.4byte 0x994E0000
	.4byte 0x89AD0000
	.4byte 0
	.4byte 0x0000994C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EF20000
	.4byte 0x99519950
	.4byte 0x994F0000
	.4byte 0x98D40000
	.4byte 0x99520000
	.4byte 0
	.4byte 0x00008F9E
	.4byte 0x00009953
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97440000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96D70000
	.4byte 0
	.4byte 0x00009955
	.4byte 0
	.4byte 0x99549957
	.4byte 0x99560000
	.4byte 0x00009958
	.4byte 0x995988F2
	.4byte 0x00008CB3
	.4byte 0x8C5A8F5B
	.4byte 0x929B8BA2
	.4byte 0x90E68CF5
	.4byte 0x00008D8E
	.4byte 0x995B96C6
	.4byte 0x93650000
	.4byte 0x8E990000
	.4byte 0x995A0000
	.4byte 0x995C0000
	.4byte 0
	.4byte 0
	.4byte 0x937D0000
	.4byte 0x8A950000
	.4byte 0
	.4byte 0
	.4byte 0x995D0000
	.4byte 0x000093FC
	.4byte 0
	.4byte 0x9153995F
	.4byte 0x996094AA
	.4byte 0x8CF6985A
	.4byte 0x99610000
	.4byte 0x00008BA4
	.4byte 0
	.4byte 0x000095BA
	.4byte 0x91B48BEF
	.4byte 0x93540000
	.4byte 0
	.4byte 0x8C930000
	.4byte 0
	.4byte 0x99620000
	.4byte 0x99630000
	.4byte 0x000093E0
	.4byte 0x897E0000
	.4byte 0x00009966
	.4byte 0x8DFB0000
	.4byte 0x99658DC4
	.4byte 0x00009967
	.4byte 0xE3EC9968
	.4byte 0x96609969
	.4byte 0x0000996A
	.4byte 0x996B8FE7
	.4byte 0x00008ECA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AA50000
	.4byte 0x996E0000
	.4byte 0x996C96BB
	.4byte 0x996D0000
	.4byte 0x9579996F
	.4byte 0x99709971
	.4byte 0x937E0000
	.4byte 0
	.4byte 0x99759973
	.4byte 0x99749972
	.4byte 0x8DE19976
	.4byte 0x96E897E2
	.4byte 0
	.4byte 0
	.4byte 0x00009977
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90A69978
	.4byte 0x8F790000
	.4byte 0x00009979
	.4byte 0x0000929C
	.4byte 0x97BD9380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99C30000
	.4byte 0
	.4byte 0x0000997A
	.4byte 0xEAA38BC3
	.4byte 0
	.4byte 0x997B967D
	.4byte 0
	.4byte 0
	.4byte 0x8F8891FA
	.4byte 0x0000997D
	.4byte 0x93E20000
	.4byte 0x0000997E
	.4byte 0
	.4byte 0x99808A4D
	.4byte 0
	.4byte 0x00009981
	.4byte 0x8BA50000
	.4byte 0x93CA899A
	.4byte 0x8F6F0000
	.4byte 0x0000949F
	.4byte 0x99820000

.global lbl_805549F8
lbl_805549F8:
	.4byte 0x93810000
	.4byte 0x0000906E
	.4byte 0x99830000
	.4byte 0x95AA90D8
	.4byte 0x8AA00000
	.4byte 0x8AA79984
	.4byte 0
	.4byte 0x99860000
	.4byte 0x00008C59
	.4byte 0
	.4byte 0x99850000
	.4byte 0x000097F1
	.4byte 0
	.4byte 0
	.4byte 0x00008F89
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94BB95CA
	.4byte 0x00009987
	.4byte 0x00009798
	.4byte 0x99880000
	.4byte 0
	.4byte 0x99890000
	.4byte 0x939E0000
	.4byte 0x0000998A
	.4byte 0
	.4byte 0x90A78DFC
	.4byte 0x8C94998B
	.4byte 0x8E688D8F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000092E4
	.4byte 0x998D0000
	.4byte 0x000091A5
	.4byte 0
	.4byte 0x8DED998E
	.4byte 0x998F914F
	.4byte 0x0000998C
	.4byte 0
	.4byte 0
	.4byte 0x99910000
	.4byte 0x96550000
	.4byte 0
	.4byte 0x00008D84
	.4byte 0
	.4byte 0x99900000
	.4byte 0
	.4byte 0x00008C95
	.4byte 0x8DDC948D
	.4byte 0
	.4byte 0x00009994
	.4byte 0x99920000
	.4byte 0
	.4byte 0x0000959B
	.4byte 0x8FE8999B
	.4byte 0x8A849995
	.4byte 0x9993916E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009997
	.4byte 0x00009996
	.4byte 0
	.4byte 0x00008A63
	.4byte 0
	.4byte 0x00008C80
	.4byte 0x999C97AB
	.4byte 0
	.4byte 0x00009998
	.4byte 0
	.4byte 0x0000999D
	.4byte 0x999A0000
	.4byte 0x99990000
	.4byte 0
	.4byte 0
	.4byte 0x000097CD
	.4byte 0
	.4byte 0x00008CF7
	.4byte 0x89C10000
	.4byte 0x000097F2
	.4byte 0
	.4byte 0
	.4byte 0x00008F95
	.4byte 0x93778D85
	.4byte 0x99A099A1
	.4byte 0
	.4byte 0x000097E3
	.4byte 0
	.4byte 0x984A99A3
	.4byte 0
	.4byte 0x00008CF8
	.4byte 0
	.4byte 0x99A20000
	.4byte 0x8A4E0000
	.4byte 0x000099A4
	.4byte 0x00009675
	.4byte 0x000092BA
	.4byte 0x00009745
	.4byte 0x000095D7
	.4byte 0
	.4byte 0x000099A5
	.4byte 0
	.4byte 0
	.4byte 0xE8D30000
	.4byte 0x000093AE
	.4byte 0x000099A6
	.4byte 0x8AA896B1
	.4byte 0
	.4byte 0x00008F9F
	.4byte 0x99A795E5
	.4byte 0x99AB0000
	.4byte 0x90A899A8
	.4byte 0x8BCE0000
	.4byte 0x99A98AA9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C4D99AC
	.4byte 0x000099AD
	.4byte 0
	.4byte 0x99AE99AF
	.4byte 0x8ED90000
	.4byte 0
	.4byte 0x8CF996DC

.global lbl_80554BF8
lbl_80554BF8:
	.4byte 0x000096E6
	.4byte 0x93F50000
	.4byte 0x000095EF
	.4byte 0x99B00000
	.4byte 0x99B10000
	.4byte 0
	.4byte 0x000099B3
	.4byte 0x000099B5
	.4byte 0x99B40000
	.4byte 0
	.4byte 0x000099B6
	.4byte 0x89BB966B
	.4byte 0x00008DFA
	.4byte 0x99B70000
	.4byte 0x00009178
	.4byte 0
	.4byte 0x8FA08BA7
	.4byte 0x000099B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94D90000
	.4byte 0
	.4byte 0x000099B9
	.4byte 0x000099BA
	.4byte 0x000099BB
	.4byte 0
	.4byte 0
	.4byte 0x99BC9543
	.4byte 0x8BE688E3
	.4byte 0
	.4byte 0x000093BD
	.4byte 0x99BD8F5C
	.4byte 0x000090E7
	.4byte 0x000099BF
	.4byte 0x99BE8FA1
	.4byte 0x8CDF99C1
	.4byte 0x94BC0000
	.4byte 0x000099C2
	.4byte 0
	.4byte 0x000094DA
	.4byte 0x91B291EC
	.4byte 0x8BA60000
	.4byte 0x000093EC
	.4byte 0x92500000
	.4byte 0x948E0000
	.4byte 0x966D0000
	.4byte 0x99C40000
	.4byte 0x90E80000
	.4byte 0
	.4byte 0
	.4byte 0x8C540000
	.4byte 0x000099C5
	.4byte 0
	.4byte 0
	.4byte 0x99C6894B
	.4byte 0x88F38AEB
	.4byte 0x000091A6
	.4byte 0x8B709791
	.4byte 0x000099C9
	.4byte 0x89B50000
	.4byte 0x000099C8
	.4byte 0
	.4byte 0x00008BA8
	.4byte 0
	.4byte 0x99CA0000
	.4byte 0x96EF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99CB0000
	.4byte 0x97D00000
	.4byte 0x8CFA0000
	.4byte 0
	.4byte 0x00008CB4
	.4byte 0x99CC0000
	.4byte 0
	.4byte 0x000099CE
	.4byte 0x99CD0000
	.4byte 0x907E8958
	.4byte 0
	.4byte 0x0000897D
	.4byte 0x99CF0000
	.4byte 0x99D00000
	.4byte 0x00008CB5
	.4byte 0
	.4byte 0x99D10000
	.4byte 0
	.4byte 0x00008B8E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E5199D2
	.4byte 0
	.4byte 0
	.4byte 0x96948DB3
	.4byte 0x8B799746
	.4byte 0x916F94BD
	.4byte 0x8EFB0000
	.4byte 0
	.4byte 0
	.4byte 0x8F660000
	.4byte 0x8EE68EF3
	.4byte 0x00008F96
	.4byte 0x000094BE
	.4byte 0
	.4byte 0x000099D5
	.4byte 0x00008962
	.4byte 0x91708CFB
	.4byte 0x8CC38BE5
	.4byte 0
	.4byte 0x99D99240
	.4byte 0x91FC8BA9
	.4byte 0x8FA299DA
	.4byte 0x99D889C2
	.4byte 0x91E48EB6
	.4byte 0x8E6A8945
	.4byte 0
	.4byte 0x8A908D86
	.4byte 0x8E690000
	.4byte 0x99DB0000
	.4byte 0
	.4byte 0

.global lbl_80554DF8
lbl_80554DF8:
	.4byte 0x000099DC
	.4byte 0x00008B68
	.4byte 0x8A650000
	.4byte 0
	.4byte 0x8D878B67
	.4byte 0x92DD8944
	.4byte 0x93AF96BC
	.4byte 0x8D409799
	.4byte 0x93668CFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C4E
	.4byte 0x000099E5
	.4byte 0x00008BE1
	.4byte 0x96690000
	.4byte 0
	.4byte 0
	.4byte 0x94DB0000
	.4byte 0x000099E4
	.4byte 0x00008ADC
	.4byte 0x99DF99E0
	.4byte 0x99E20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99E30000
	.4byte 0x8B7A9081
	.4byte 0x000095AB
	.4byte 0x99E199DD
	.4byte 0x8CE10000
	.4byte 0x99DE0000
	.4byte 0x98430000
	.4byte 0
	.4byte 0x95F00000
	.4byte 0x92E68CE0
	.4byte 0x8D900000
	.4byte 0
	.4byte 0x99E60000
	.4byte 0x000093DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000099EA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EFC0000
	.4byte 0x8EF40000
	.4byte 0
	.4byte 0
	.4byte 0x99ED99EB
	.4byte 0x000096A1
	.4byte 0x000099E8
	.4byte 0x99F199EC
	.4byte 0
	.4byte 0x000099EF
	.4byte 0x8CC496BD
	.4byte 0
	.4byte 0x99F00000
	.4byte 0
	.4byte 0x99F20000
	.4byte 0x99F40000
	.4byte 0
	.4byte 0x00008DEE
	.4byte 0x98610000
	.4byte 0x99E999E7
	.4byte 0x99F30000
	.4byte 0x99EE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x99F60000
	.4byte 0x9A4299F8
	.4byte 0
	.4byte 0x99FC0000
	.4byte 0x00009A40
	.4byte 0x99F90000
	.4byte 0x00009A5D
	.4byte 0
	.4byte 0x8DE78A50
	.4byte 0
	.4byte 0
	.4byte 0x99F70000
	.4byte 0
	.4byte 0x9A4488F4
	.4byte 0x9A430000
	.4byte 0x88A39569
	.4byte 0x9A410000
	.4byte 0x99FA0000
	.4byte 0x000099F5
	.4byte 0x99FB8DC6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A450000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088F5
	.4byte 0x9A4E0000
	.4byte 0x00009A46
	.4byte 0x9A470000
	.4byte 0x8FA39689
	.4byte 0
	.4byte 0x00009A4C
	.4byte 0x9A4B0000
	.4byte 0
	.4byte 0x934E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A4D0000
	.4byte 0x00009A4A
	.4byte 0

.global lbl_80554FF8
lbl_80554FF8:
	.4byte 0
	.4byte 0
	.4byte 0x89530000
	.4byte 0x8DB4904F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A48
	.4byte 0x93820000
	.4byte 0
	.4byte 0x9A490000
	.4byte 0x88A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A539742
	.4byte 0x00008FA5
	.4byte 0x00009A59
	.4byte 0
	.4byte 0
	.4byte 0x9A589A4F
	.4byte 0
	.4byte 0
	.4byte 0x91C10000
	.4byte 0x9A500000
	.4byte 0
	.4byte 0x91ED9A55
	.4byte 0x8FA40000
	.4byte 0
	.4byte 0
	.4byte 0x9A520000
	.4byte 0x000096E2
	.4byte 0
	.4byte 0x00008C5B
	.4byte 0
	.4byte 0x9A569A57
	.4byte 0
	.4byte 0
	.4byte 0x9A549A5A
	.4byte 0
	.4byte 0
	.4byte 0x00009A51
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A60
	.4byte 0x9A650000
	.4byte 0x9A610000
	.4byte 0x9A5C0000
	.4byte 0x00009A66
	.4byte 0x91500000
	.4byte 0x00009A68
	.4byte 0x00008D41
	.4byte 0x9A5E929D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A629A5B
	.4byte 0x8AAB0000
	.4byte 0x8AEC8A85
	.4byte 0x9A639A5F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C96
	.4byte 0x9A699A67
	.4byte 0x91728B69
	.4byte 0x8BAA0000
	.4byte 0x9A640000
	.4byte 0x8BF20000
	.4byte 0
	.4byte 0
	.4byte 0x89630000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A6D9A6B
	.4byte 0x00009AA5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A700000
	.4byte 0
	.4byte 0
	.4byte 0x9A6A0000
	.4byte 0x9A6E0000
	.4byte 0x00009A6C
	.4byte 0
	.4byte 0x00008E6B
	.4byte 0x9A6F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A72
	.4byte 0x00009A77
	.4byte 0
	.4byte 0x00009A75
	.4byte 0x9A740000

.global lbl_805551F8
lbl_805551F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92510000
	.4byte 0x000089C3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A710000
	.4byte 0x9A738FA6
	.4byte 0x89520000
	.4byte 0x00009A76
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000089DC
	.4byte 0
	.4byte 0
	.4byte 0x00009A82
	.4byte 0x00008FFA
	.4byte 0x9A7D0000
	.4byte 0x9A7B0000
	.4byte 0x9A7C0000
	.4byte 0x9A7E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x895C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91580000
	.4byte 0x9A780000
	.4byte 0x9A790000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008A9A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A810000
	.4byte 0
	.4byte 0x8AED0000
	.4byte 0x9A849A80
	.4byte 0x9A830000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95AC0000
	.4byte 0
	.4byte 0x93D30000
	.4byte 0x94B60000
	.4byte 0
	.4byte 0
	.4byte 0x9A860000
	.4byte 0
	.4byte 0
	.4byte 0x9A858A64
	.4byte 0
	.4byte 0x9A870000
	.4byte 0
	.4byte 0x00009A8A
	.4byte 0
	.4byte 0
	.4byte 0x9A890000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A880000
	.4byte 0x94580000
	.4byte 0x00009A8B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A8C0000
	.4byte 0
	.4byte 0
	.4byte 0x9A8E0000
	.4byte 0x9A8D0000
	.4byte 0
	.4byte 0
	.4byte 0x9A900000
	.4byte 0
	.4byte 0x9A939A91
	.4byte 0x9A8F9A92
	.4byte 0
	.4byte 0
	.4byte 0x9A940000
	.4byte 0
	.4byte 0
	.4byte 0x9A950000
	.4byte 0x00009A96
	.4byte 0x00009A97
	.4byte 0
	.4byte 0x00009A98
	.4byte 0x99640000
	.4byte 0x8EFA8E6C
	.4byte 0
	.4byte 0x89F10000
	.4byte 0x88F60000
	.4byte 0x00009263
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9A990000
	.4byte 0x8DA20000
	.4byte 0x88CD907D
	.4byte 0
	.4byte 0
	.4byte 0x00009A9A
	.4byte 0x8CC50000
	.4byte 0x00008D91
	.4byte 0x00009A9C

.global lbl_805553F8
lbl_805553F8:
	.4byte 0x9A9B0000
	.4byte 0x000095DE
	.4byte 0x9A9D0000
	.4byte 0
	.4byte 0x9A9F9A9E
	.4byte 0x00009AA0
	.4byte 0x00009AA1
	.4byte 0x00008C97
	.4byte 0
	.4byte 0x89809AA2
	.4byte 0
	.4byte 0x9AA40000
	.4byte 0x9AA30000
	.4byte 0
	.4byte 0x9AA60000
	.4byte 0x00009379
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9AA788B3
	.4byte 0x8DDD0000
	.4byte 0
	.4byte 0x00008C5C
	.4byte 0
	.4byte 0x926E0000
	.4byte 0
	.4byte 0
	.4byte 0x00009AA8
	.4byte 0x9AA90000
	.4byte 0x00009AAB
	.4byte 0
	.4byte 0
	.4byte 0x9AAC0000
	.4byte 0x8DE20000
	.4byte 0
	.4byte 0x00008BCF
	.4byte 0
	.4byte 0x96560000
	.4byte 0
	.4byte 0x9AAA9AAD
	.4byte 0x8DBF8D42
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009AB1
	.4byte 0
	.4byte 0x8DA30000
	.4byte 0x92520000
	.4byte 0x00009AAE
	.4byte 0x92D80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009AB2
	.4byte 0
	.4byte 0x90820000
	.4byte 0
	.4byte 0
	.4byte 0x9AB09AB3
	.4byte 0x00008C5E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009AB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9AB50000
	.4byte 0x8D438A5F
	.4byte 0x9AB70000
	.4byte 0
	.4byte 0
	.4byte 0x9AB80000
	.4byte 0
	.4byte 0
	.4byte 0x9AB90000
	.4byte 0x00009AB6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9AAF0000
	.4byte 0x00009ABA
	.4byte 0
	.4byte 0x9ABB0000
	.4byte 0
	.4byte 0x00009684
	.4byte 0
	.4byte 0x8FE90000
	.4byte 0
	.4byte 0x9ABD9ABE
	.4byte 0x9ABC0000
	.4byte 0x9AC00000
	.4byte 0
	.4byte 0
	.4byte 0x94570000
	.4byte 0x000088E6
	.4byte 0x95750000
	.4byte 0x00009AC1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8FFB0000
	.4byte 0x00008EB7
	.4byte 0x0000947C
	.4byte 0x8AEE0000
	.4byte 0x8DE90000
	.4byte 0

.global lbl_805555F8
lbl_805555F8:
	.4byte 0x96780000
	.4byte 0x93B00000
	.4byte 0x00008C98
	.4byte 0x91CD0000
	.4byte 0
	.4byte 0x9ABF9AC2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091C2
	.4byte 0
	.4byte 0x00009AC3
	.4byte 0
	.4byte 0x00009AC4
	.4byte 0
	.4byte 0x00009AC6
	.4byte 0
	.4byte 0x92E70000
	.4byte 0
	.4byte 0
	.4byte 0x8AAC0000
	.4byte 0
	.4byte 0x0000EA9F
	.4byte 0x898195F1
	.4byte 0
	.4byte 0x8FEA9367
	.4byte 0
	.4byte 0
	.4byte 0x8DE40000
	.4byte 0x00009ACC
	.4byte 0
	.4byte 0x95BB97DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89F29AC8
	.4byte 0
	.4byte 0
	.4byte 0x00009159
	.4byte 0x9ACB0000
	.4byte 0x93830000
	.4byte 0x00009368
	.4byte 0x938494B7
	.4byte 0x92CB0000
	.4byte 0
	.4byte 0x8DC70000
	.4byte 0
	.4byte 0x9AC70000
	.4byte 0
	.4byte 0
	.4byte 0x00008996
	.4byte 0x00009355
	.4byte 0
	.4byte 0
	.4byte 0x9AC90000
	.4byte 0x9AC50000
	.4byte 0x0000906F
	.4byte 0
	.4byte 0x00009ACD
	.4byte 0
	.4byte 0
	.4byte 0x8F6D0000
	.4byte 0
	.4byte 0x00008BAB
	.4byte 0x00009ACE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095E6
	.4byte 0
	.4byte 0x0000919D
	.4byte 0
	.4byte 0
	.4byte 0x92C40000
	.4byte 0x00009AD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x966E0000
	.4byte 0x00009AD1
	.4byte 0
	.4byte 0x9AD60000
	.4byte 0
	.4byte 0x000095AD
	.4byte 0
	.4byte 0
	.4byte 0x9AD59ACF
	.4byte 0x9AD29AD4
	.4byte 0
	.4byte 0x8DA40000
	.4byte 0x000095C7
	.4byte 0
	.4byte 0x00009AD7
	.4byte 0x00009264
	.4byte 0
	.4byte 0x89F30000
	.4byte 0x8FEB0000
	.4byte 0
	.4byte 0x00009AD9
	.4byte 0x00009AD8
	.4byte 0x00008D88
	.4byte 0x00009ADA
	.4byte 0x9ADC9ADB
	.4byte 0
	.4byte 0x9ADE0000
	.4byte 0x9AD39AE0
	.4byte 0
	.4byte 0
	.4byte 0x9ADF9ADD
	.4byte 0
	.4byte 0
	.4byte 0x00008E6D
	.4byte 0x90700000
	.4byte 0x91739AE1
	.4byte 0x90BA88EB
	.4byte 0x94840000
	.4byte 0
	.4byte 0x000092D9
	.4byte 0x00009AE3
	.4byte 0x9AE29AE4
	.4byte 0x9AE59AE6
	.4byte 0

.global lbl_805557F8
lbl_805557F8:
	.4byte 0
	.4byte 0x9AE70000
	.4byte 0
	.4byte 0
	.4byte 0x000095CF
	.4byte 0x9AE80000
	.4byte 0
	.4byte 0x000089C4
	.4byte 0x9AE90000
	.4byte 0
	.4byte 0x0000975B
	.4byte 0x8A4F0000
	.4byte 0x99C78F67
	.4byte 0x91BD9AEA
	.4byte 0x96E90000
	.4byte 0
	.4byte 0
	.4byte 0x96B20000
	.4byte 0x00009AEC
	.4byte 0x000091E5
	.4byte 0x00009356
	.4byte 0x91BE9576
	.4byte 0x9AED9AEE
	.4byte 0x899B0000
	.4byte 0x00008EB8
	.4byte 0x9AEF0000
	.4byte 0
	.4byte 0x000088CE
	.4byte 0x9AF00000
	.4byte 0
	.4byte 0
	.4byte 0x9AF10000
	.4byte 0
	.4byte 0
	.4byte 0x89820000
	.4byte 0x00008AEF
	.4byte 0x93DE95F2
	.4byte 0
	.4byte 0
	.4byte 0x9AF59174
	.4byte 0x9AF48C5F
	.4byte 0
	.4byte 0x967A9AF3
	.4byte 0x00009385
	.4byte 0x9AF70000
	.4byte 0x9AF60000
	.4byte 0
	.4byte 0
	.4byte 0x9AF90000
	.4byte 0x9AF80000
	.4byte 0x0000899C
	.4byte 0x00009AFA
	.4byte 0x8FA79AFC
	.4byte 0x92440000
	.4byte 0x9AFB0000
	.4byte 0x95B10000
	.4byte 0
	.4byte 0x00008F97
	.4byte 0x937A0000
	.4byte 0
	.4byte 0x9B400000
	.4byte 0
	.4byte 0x00008D44
	.4byte 0
	.4byte 0x00009B41
	.4byte 0x944094DC
	.4byte 0x96CF0000
	.4byte 0
	.4byte 0
	.4byte 0x94440000
	.4byte 0x00009B4A
	.4byte 0
	.4byte 0
	.4byte 0x00008B57
	.4byte 0
	.4byte 0x97640000
	.4byte 0x000096AD
	.4byte 0x00009BAA
	.4byte 0x00009B42
	.4byte 0
	.4byte 0
	.4byte 0x00009B45
	.4byte 0x000091C3
	.4byte 0
	.4byte 0x96570000
	.4byte 0
	.4byte 0x93690000
	.4byte 0
	.4byte 0
	.4byte 0x9B460000
	.4byte 0
	.4byte 0
	.4byte 0x00009685
	.4byte 0x00008DC8
	.4byte 0
	.4byte 0x8FA80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B470000
	.4byte 0x00008E6F
	.4byte 0x00008E6E
	.4byte 0
	.4byte 0
	.4byte 0x88B78CC6
	.4byte 0x000090A9
	.4byte 0x88CF0000
	.4byte 0
	.4byte 0x00009B4B
	.4byte 0x9B4C0000
	.4byte 0x9B490000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008957
	.4byte 0x8AAD0000
	.4byte 0x9B480000
	.4byte 0x96C39550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x88A60000
	.4byte 0
	.4byte 0x000088F7
	.4byte 0
	.4byte 0x00008E70

.global lbl_805559F8
lbl_805559F8:
	.4byte 0x000088D0
	.4byte 0x000088A1
	.4byte 0
	.4byte 0
	.4byte 0x00009B51
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009B4F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96BA0000
	.4byte 0x9B520000
	.4byte 0x9B500000
	.4byte 0x00009B4E
	.4byte 0x90500000
	.4byte 0
	.4byte 0x00009B4D
	.4byte 0
	.4byte 0x000095D8
	.4byte 0
	.4byte 0
	.4byte 0x00008CE2
	.4byte 0
	.4byte 0
	.4byte 0x00009B56
	.4byte 0x9B570000
	.4byte 0
	.4byte 0
	.4byte 0x8FA90000
	.4byte 0
	.4byte 0x9B53984B
	.4byte 0
	.4byte 0
	.4byte 0x946B0000
	.4byte 0x00009B55
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DA50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B580000
	.4byte 0
	.4byte 0x95770000
	.4byte 0
	.4byte 0x9B590000
	.4byte 0x9B540000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000096B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x947D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B5A9551
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B5B9B5F
	.4byte 0x9B5C0000
	.4byte 0x000089C5
	.4byte 0x9B5E0000
	.4byte 0
	.4byte 0
	.4byte 0x00008EB9
	.4byte 0x00009B5D
	.4byte 0x8C990000
	.4byte 0
	.4byte 0x9B6B0000
	.4byte 0
	.4byte 0
	.4byte 0x9B649B61
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009284
	.4byte 0x00009B60
	.4byte 0
	.4byte 0x9B620000
	.4byte 0x00009B63
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B659B66
	.4byte 0
	.4byte 0

.global lbl_80555BF8
lbl_80555BF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AF0
	.4byte 0x00009B68
	.4byte 0x9B670000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B690000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8FEC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B6C0000
	.4byte 0x92DA0000
	.4byte 0
	.4byte 0x89640000
	.4byte 0x9B6A0000
	.4byte 0
	.4byte 0x9B6D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B6E0000
	.4byte 0x9B710000
	.4byte 0x00009B6F
	.4byte 0x00009B70
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E719B72
	.4byte 0
	.4byte 0x8D459B73
	.4byte 0x00008E9A
	.4byte 0x91B60000
	.4byte 0x9B749B75
	.4byte 0x8E798D46
	.4byte 0x000096D0
	.4byte 0
	.4byte 0x00008B47
	.4byte 0x8CC79B76
	.4byte 0x8A770000
	.4byte 0x00009B77
	.4byte 0x000091B7
	.4byte 0
	.4byte 0
	.4byte 0x9B789BA1
	.4byte 0x00009B79
	.4byte 0x00009B7A
	.4byte 0
	.4byte 0x9B7B0000
	.4byte 0x9B7D0000
	.4byte 0
	.4byte 0
	.4byte 0x9B7E0000
	.4byte 0x00009B80
	.4byte 0x000091EE
	.4byte 0x00008946
	.4byte 0x8EE788C0
	.4byte 0x00009176
	.4byte 0x8AAE8EB3
	.4byte 0x00008D47
	.4byte 0
	.4byte 0
	.4byte 0x00009386
	.4byte 0x00008F40
	.4byte 0x8AAF9288
	.4byte 0x92E888B6
	.4byte 0x8B5895F3
	.4byte 0x00008EC0
	.4byte 0
	.4byte 0x8B7190E9
	.4byte 0x8EBA9747
	.4byte 0x9B810000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B7B0000
	.4byte 0x8DC90000
	.4byte 0x00008A51
	.4byte 0x89838FAA
	.4byte 0x89C60000
	.4byte 0x9B829765
	.4byte 0
	.4byte 0
	.4byte 0x00008F68
	.4byte 0
	.4byte 0x8EE29B83
	.4byte 0x8AF193D0
	.4byte 0x96A79B84
	.4byte 0x00009B85
	.4byte 0
	.4byte 0x95780000
	.4byte 0
	.4byte 0x9B870000
	.4byte 0x8AA68BF5
	.4byte 0x9B860000
	.4byte 0
	.4byte 0
	.4byte 0x00008AB0
	.4byte 0x00009051
	.4byte 0x9B8B8E40
	.4byte 0x000089C7
	.4byte 0x9B8A0000
	.4byte 0x9B889B8C
	.4byte 0x9B89944A
	.4byte 0x9ECB9052
	.4byte 0x00009B8D
	.4byte 0
	.4byte 0x97BE0000
	.4byte 0x9B8E0000
	.4byte 0x00009B90
	.4byte 0x0000929E
	.4byte 0x9B8F0000
	.4byte 0x90A10000
	.4byte 0x8E9B0000
	.4byte 0
	.4byte 0x91CE8EF5

.global lbl_80555DF8
lbl_80555DF8:
	.4byte 0x00009595
	.4byte 0x90EA0000
	.4byte 0x8ECB9B91
	.4byte 0x8FAB9B92
	.4byte 0x9B9388D1
	.4byte 0x91B89071
	.4byte 0x00009B94
	.4byte 0x93B18FAC
	.4byte 0x00008FAD
	.4byte 0x00009B95
	.4byte 0
	.4byte 0x90EB0000
	.4byte 0
	.4byte 0x8FAE0000
	.4byte 0
	.4byte 0
	.4byte 0x9B960000
	.4byte 0x9B970000
	.4byte 0x96DE0000
	.4byte 0
	.4byte 0x9B980000
	.4byte 0
	.4byte 0x00008BC4
	.4byte 0
	.4byte 0x00008F41
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9B999B9A
	.4byte 0x8EDA904B
	.4byte 0x93F29073
	.4byte 0x94F69441
	.4byte 0x8BC79B9B
	.4byte 0
	.4byte 0x00008B8F
	.4byte 0x9B9C0000
	.4byte 0x8BFC0000
	.4byte 0x93CD89AE
	.4byte 0x00008E72
	.4byte 0x9B9D9BA0
	.4byte 0x9B9F8BFB
	.4byte 0x00009B9E
	.4byte 0x00009357
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91AE0000
	.4byte 0x936A8EC6
	.4byte 0
	.4byte 0x9177979A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BA20000
	.4byte 0x9BA393D4
	.4byte 0x00008E52
	.4byte 0
	.4byte 0
	.4byte 0x9BA50000
	.4byte 0x00009BA6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BA70000
	.4byte 0
	.4byte 0x8AF29BA8
	.4byte 0
	.4byte 0x9BA90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000089AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x915A8AE2
	.4byte 0x00009BAB
	.4byte 0x96A60000
	.4byte 0
	.4byte 0x000091D0
	.4byte 0x00008A78
	.4byte 0
	.4byte 0x9BAD9BAF
	.4byte 0x8ADD0000
	.4byte 0x00009BAC
	.4byte 0x9BAE0000
	.4byte 0x9BB10000
	.4byte 0
	.4byte 0
	.4byte 0x00009BB0
	.4byte 0x00009BB2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BB3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93BB8BAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89E39BB4
	.4byte 0x9BB90000
	.4byte 0x00009BB7
	.4byte 0x000095F5
	.4byte 0x95F40000
	.4byte 0
	.4byte 0
	.4byte 0x93870000
	.4byte 0
	.4byte 0x9BB68F73
	.4byte 0x00009BB5
	.4byte 0

.global lbl_80555FF8
lbl_80555FF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009092
	.4byte 0
	.4byte 0x00009BBA
	.4byte 0
	.4byte 0x8DE80000
	.4byte 0x00009BC0
	.4byte 0
	.4byte 0x9BC19BBB
	.4byte 0x8A529BBC
	.4byte 0x9BC59BC4
	.4byte 0x9BC39BBF
	.4byte 0
	.4byte 0x00009BBE
	.4byte 0
	.4byte 0x9BC20000
	.4byte 0
	.4byte 0
	.4byte 0x000095F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BC9
	.4byte 0x9BC60000
	.4byte 0x9BC80000
	.4byte 0x97920000
	.4byte 0x9BC70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BBD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009093
	.4byte 0
	.4byte 0x9BCA0000
	.4byte 0x00008DB5
	.4byte 0
	.4byte 0x00009BCB
	.4byte 0
	.4byte 0x9BCC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BCF0000
	.4byte 0x9BCE0000
	.4byte 0x00009BCD
	.4byte 0
	.4byte 0x00009388
	.4byte 0x9BB80000
	.4byte 0
	.4byte 0x9BD50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BD1
	.4byte 0
	.4byte 0
	.4byte 0x9BD00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9BD20000
	.4byte 0x9BD30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BD6
	.4byte 0
	.4byte 0x97E40000
	.4byte 0x9BD79BD4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BD8
	.4byte 0
	.4byte 0x8ADE9BD9
	.4byte 0
	.4byte 0
	.4byte 0x9BDB9BDA
	.4byte 0
	.4byte 0x9BDC0000
	.4byte 0
	.4byte 0x00009BDD
	.4byte 0x000090EC
	.4byte 0x8F420000
	.4byte 0x00008F84
	.4byte 0x00009183
	.4byte 0x00008D48
	.4byte 0x8DB68D49
	.4byte 0x8B900000
	.4byte 0x00009BDE
	.4byte 0
	.4byte 0x8DB70000
	.4byte 0x00008CC8
	.4byte 0x9BDF96A4
	.4byte 0x94629BE0
	.4byte 0x00008D4A
	.4byte 0
	.4byte 0x00008AAA
	.4byte 0x00009246
	.4byte 0x8BD00000

.global lbl_805561F8
lbl_805561F8:
	.4byte 0
	.4byte 0x8E73957A
	.4byte 0
	.4byte 0x94BF0000
	.4byte 0
	.4byte 0x00009BE1
	.4byte 0x8AF30000
	.4byte 0
	.4byte 0x00009BE4
	.4byte 0
	.4byte 0
	.4byte 0x929F0000
	.4byte 0x00009BE3
	.4byte 0x9BE29BE5
	.4byte 0x000092E9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009083
	.4byte 0
	.4byte 0
	.4byte 0x00008E74
	.4byte 0x000090C8
	.4byte 0x000091D1
	.4byte 0x8B410000
	.4byte 0x000092A0
	.4byte 0
	.4byte 0x9BE69BE7
	.4byte 0x8FED0000
	.4byte 0
	.4byte 0x00009658
	.4byte 0
	.4byte 0x9BEA0000
	.4byte 0x00009BE9
	.4byte 0x9BE8959D
	.4byte 0x00009BF1
	.4byte 0
	.4byte 0
	.4byte 0x96790000
	.4byte 0x9BEB0000
	.4byte 0
	.4byte 0
	.4byte 0x9BED968B
	.4byte 0x00009BEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BEE
	.4byte 0x000094A6
	.4byte 0x9BEF95BC
	.4byte 0x9BF00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AB195BD
	.4byte 0x944E9BF2
	.4byte 0x9BF30000
	.4byte 0x8D4B8AB2
	.4byte 0x9BF48CB6
	.4byte 0x97639748
	.4byte 0x8AF49BF6
	.4byte 0x000092A1
	.4byte 0x00008D4C
	.4byte 0x8FAF0000
	.4byte 0x000094DD
	.4byte 0
	.4byte 0x8FB00000
	.4byte 0
	.4byte 0x00008F98
	.4byte 0
	.4byte 0
	.4byte 0x000092EA
	.4byte 0x95F79358
	.4byte 0
	.4byte 0x8D4D0000
	.4byte 0x957B0000
	.4byte 0
	.4byte 0x9BF70000
	.4byte 0
	.4byte 0
	.4byte 0x93788DC0
	.4byte 0
	.4byte 0x00008CC9
	.4byte 0x000092EB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088C1
	.4byte 0x8F8E8D4E
	.4byte 0x97660000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009BF8
	.4byte 0x9BF99470
	.4byte 0
	.4byte 0
	.4byte 0x9BFA97F5
	.4byte 0x984C0000
	.4byte 0
	.4byte 0x00009BFC
	.4byte 0x9BFB0000
	.4byte 0x00008A66
	.4byte 0
	.4byte 0x9C400000
	.4byte 0
	.4byte 0x9C439C44
	.4byte 0x00009C42
	.4byte 0x0000955F
	.4byte 0x8FB19C46
	.4byte 0x9C459C41
	.4byte 0
	.4byte 0
	.4byte 0x9C479C48
	.4byte 0
	.4byte 0x9C490000
	.4byte 0
	.4byte 0x9C4C9C4A
	.4byte 0x00009C4B
	.4byte 0x9C4D0000
	.4byte 0x898492EC
	.4byte 0x9C4E0000
	.4byte 0x8C9A89F4
	.4byte 0x94550000
	.4byte 0x9C4F93F9

.global lbl_805563F8
lbl_805563F8:
	.4byte 0x000095D9
	.4byte 0x00009C50
	.4byte 0x984D0000
	.4byte 0
	.4byte 0x00009C51
	.4byte 0x95BE9C54
	.4byte 0x989F98AF
	.4byte 0x00008EAE
	.4byte 0x93F39C55
	.4byte 0x00008B7C
	.4byte 0x92A288F8
	.4byte 0x9C5695A4
	.4byte 0x8D4F0000
	.4byte 0x0000926F
	.4byte 0
	.4byte 0x000092ED
	.4byte 0
	.4byte 0
	.4byte 0x000096ED
	.4byte 0x8CB78CCA
	.4byte 0x00009C57
	.4byte 0
	.4byte 0x00009C58
	.4byte 0x00009C5E
	.4byte 0x00008EE3
	.4byte 0
	.4byte 0x000092A3
	.4byte 0x00008BAD
	.4byte 0x9C590000
	.4byte 0
	.4byte 0x954A0000
	.4byte 0x92650000
	.4byte 0x00009C5A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C5B0000
	.4byte 0x8BAE0000
	.4byte 0x9C5C0000
	.4byte 0x9C5D0000
	.4byte 0x00009C5F
	.4byte 0x00009396
	.4byte 0
	.4byte 0x9C609C61
	.4byte 0x00009C62
	.4byte 0
	.4byte 0x9C539C52
	.4byte 0
	.4byte 0x00009C63
	.4byte 0x8C600000
	.4byte 0
	.4byte 0x95460000
	.4byte 0x00008DCA
	.4byte 0x955692A4
	.4byte 0x956A9C64
	.4byte 0
	.4byte 0x8FB28965
	.4byte 0x00009C65
	.4byte 0
	.4byte 0x00009C66
	.4byte 0x000096F0
	.4byte 0
	.4byte 0x94DE0000
	.4byte 0x00009C69
	.4byte 0x899D90AA
	.4byte 0x9C689C67
	.4byte 0x8C6191D2
	.4byte 0x00009C6D
	.4byte 0x9C6B0000
	.4byte 0x9C6A97A5
	.4byte 0x8CE30000
	.4byte 0
	.4byte 0x8F999C6C
	.4byte 0x936B8F5D
	.4byte 0
	.4byte 0x000093BE
	.4byte 0x9C709C6F
	.4byte 0
	.4byte 0
	.4byte 0x9C6E0000
	.4byte 0x9C718CE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C72959C
	.4byte 0x8F7A0000
	.4byte 0x00009C73
	.4byte 0x94F70000
	.4byte 0
	.4byte 0x000093BF
	.4byte 0x92A50000
	.4byte 0
	.4byte 0x0000934F
	.4byte 0
	.4byte 0x9C748B4A
	.4byte 0
	.4byte 0
	.4byte 0x00009053
	.4byte 0x0000954B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AF59445
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C758E75
	.4byte 0x9659965A
	.4byte 0
	.4byte 0x899E9C7A
	.4byte 0
	.4byte 0x92890000
	.4byte 0
	.4byte 0x9C770000
	.4byte 0
	.4byte 0
	.4byte 0x000089F5
	.4byte 0
	.4byte 0
	.4byte 0x9CAB9C79
	.4byte 0
	.4byte 0x0000944F
	.4byte 0
	.4byte 0x9C780000
	.4byte 0x00009C76
	.4byte 0x00008D9A
	.4byte 0x00009C7C

.global lbl_805565F8
lbl_805565F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C839C89
	.4byte 0x9C810000
	.4byte 0x937B0000
	.4byte 0x00009C86
	.4byte 0x957C0000
	.4byte 0x00009C80
	.4byte 0x00009C85
	.4byte 0x97E58E76
	.4byte 0
	.4byte 0x91D39C7D
	.4byte 0
	.4byte 0x00008B7D
	.4byte 0x9C8890AB
	.4byte 0x89859C82
	.4byte 0x89F69C87
	.4byte 0
	.4byte 0x00008BAF
	.4byte 0x00009C84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9C8A0000
	.4byte 0
	.4byte 0
	.4byte 0x00009C8C
	.4byte 0x9C969C94
	.4byte 0
	.4byte 0x9C910000
	.4byte 0
	.4byte 0x9C9097F6
	.4byte 0x00009C92
	.4byte 0
	.4byte 0x8BB00000
	.4byte 0x8D500000
	.4byte 0x00008F9A
	.4byte 0
	.4byte 0x00009C99
	.4byte 0x9C8B0000
	.4byte 0
	.4byte 0x00009C8F
	.4byte 0x9C7E0000
	.4byte 0x89F89C93
	.4byte 0x9C959270
	.4byte 0
	.4byte 0x8DA689B6
	.4byte 0x9C8D9C98
	.4byte 0x9C978BB1
	.4byte 0x000091A7
	.4byte 0x8A860000
	.4byte 0
	.4byte 0x00008C62
	.4byte 0x00009C8E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009C9A
	.4byte 0x00009C9D
	.4byte 0x9C9F0000
	.4byte 0
	.4byte 0x00008EBB
	.4byte 0x00009CA5
	.4byte 0x92EE9C9B
	.4byte 0
	.4byte 0
	.4byte 0x9CA30000
	.4byte 0x89F70000
	.4byte 0x9CA19CA2
	.4byte 0
	.4byte 0x9C9E9CA0
	.4byte 0
	.4byte 0x00008CE5
	.4byte 0x97490000
	.4byte 0x00008AB3
	.4byte 0
	.4byte 0x89789CA4
	.4byte 0x00009459
	.4byte 0x88AB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94DF9C7B
	.4byte 0x9CAA9CAE
	.4byte 0x96E30000
	.4byte 0x9CA70000
	.4byte 0
	.4byte 0x93899CAC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008FEE
	.4byte 0x9CAD93D5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009866
	.4byte 0x00009CA9
	.4byte 0
	.4byte 0
	.4byte 0x9CAF0000
	.4byte 0x8D9B0000
	.4byte 0x90C90000
	.4byte 0x000088D2
	.4byte 0x9CA89CA6
	.4byte 0x00009179
	.4byte 0
	.4byte 0x00009C9C
	.4byte 0x8E530000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91C49CBB
	.4byte 0x0000917A
	.4byte 0x9CB60000
	.4byte 0x9CB39CB4
	.4byte 0x00008EE4
	.4byte 0x9CB79CBA
	.4byte 0
	.4byte 0

.global lbl_805567F8
lbl_805567F8:
	.4byte 0x9CB58F44
	.4byte 0x00009CB8
	.4byte 0
	.4byte 0x9CB20000
	.4byte 0x96FA96F9
	.4byte 0
	.4byte 0x00009CBC
	.4byte 0x9CBD88D3
	.4byte 0
	.4byte 0
	.4byte 0x00009CB1
	.4byte 0
	.4byte 0
	.4byte 0x8BF088A4
	.4byte 0
	.4byte 0x00008AB4
	.4byte 0x00009CB9
	.4byte 0
	.4byte 0
	.4byte 0x00009CC1
	.4byte 0x9CC00000
	.4byte 0
	.4byte 0x9CC50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9CC60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9CC49CC7
	.4byte 0x9CBF9CC3
	.4byte 0
	.4byte 0x9CC80000
	.4byte 0x9CC90000
	.4byte 0x00009CBE
	.4byte 0x8E9C0000
	.4byte 0x9CC291D4
	.4byte 0x8D519CB0
	.4byte 0x90540000
	.4byte 0
	.4byte 0x00009CD6
	.4byte 0x000095E7
	.4byte 0
	.4byte 0x9CCC9CCD
	.4byte 0x9CCE0000
	.4byte 0x00009CD5
	.4byte 0x00009CD4
	.4byte 0
	.4byte 0x969D8AB5
	.4byte 0x00009CD2
	.4byte 0x00008C64
	.4byte 0x8A530000
	.4byte 0x00009CCF
	.4byte 0
	.4byte 0x97B69CD1
	.4byte 0x88D49CD3
	.4byte 0x00009CCA
	.4byte 0x9CD09CD7
	.4byte 0x8C639CCB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x977C0000
	.4byte 0
	.4byte 0x974A0000
	.4byte 0
	.4byte 0x00009CDA
	.4byte 0
	.4byte 0x9CDE0000
	.4byte 0
	.4byte 0x919E0000
	.4byte 0x97F79CDF
	.4byte 0
	.4byte 0x9CDC0000
	.4byte 0x9CD90000
	.4byte 0x00009CD8
	.4byte 0x9CDD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95AE0000
	.4byte 0x000093B2
	.4byte 0x00008C65
	.4byte 0x00009CE0
	.4byte 0x9CDB0000
	.4byte 0x9CE10000
	.4byte 0
	.4byte 0x8C9B0000
	.4byte 0
	.4byte 0x89AF0000
	.4byte 0
	.4byte 0x9CE90000
	.4byte 0
	.4byte 0x8AB60000
	.4byte 0
	.4byte 0x00009CE7
	.4byte 0
	.4byte 0x9CE88DA7
	.4byte 0x9CE69CE4
	.4byte 0x9CE39CEA
	.4byte 0x9CE29CEC
	.4byte 0
	.4byte 0x89F90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009CEE
	.4byte 0
	.4byte 0x9CED0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92A60000
	.4byte 0x9CF10000
	.4byte 0x9CEF9CE5
	.4byte 0x8C9C0000
	.4byte 0x9CF00000
	.4byte 0x9CF49CF3
	.4byte 0x9CF59CF2

.global lbl_805569F8
lbl_805569F8:
	.4byte 0x9CF60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9CF79CF8
	.4byte 0x95E80000
	.4byte 0x9CFA9CF9
	.4byte 0x8F5E0000
	.4byte 0x90AC89E4
	.4byte 0x89FA0000
	.4byte 0x9CFB0000
	.4byte 0x88BD0000
	.4byte 0
	.4byte 0x90CA9CFC
	.4byte 0x0000E6C1
	.4byte 0x9D408C81
	.4byte 0x00009D41
	.4byte 0
	.4byte 0
	.4byte 0x90ED0000
	.4byte 0
	.4byte 0x9D420000
	.4byte 0
	.4byte 0x9D438B59
	.4byte 0x9D440000
	.4byte 0x9D459D46
	.4byte 0x91D50000
	.4byte 0
	.4byte 0x8CCB0000
	.4byte 0x000096DF
	.4byte 0
	.4byte 0x0000965B
	.4byte 0x8F8A9D47
	.4byte 0
	.4byte 0
	.4byte 0x000090EE
	.4byte 0xE7BB94E0
	.4byte 0x00008EE8
	.4byte 0x00008DCB
	.4byte 0x9D480000
	.4byte 0
	.4byte 0x000091C5
	.4byte 0x000095A5
	.4byte 0
	.4byte 0x91EF0000
	.4byte 0x00009D4B
	.4byte 0
	.4byte 0x9D490000
	.4byte 0x9D4C0000
	.4byte 0x00009D4A
	.4byte 0
	.4byte 0
	.4byte 0x9D4D0000
	.4byte 0
	.4byte 0
	.4byte 0x95AF0000
	.4byte 0x000088B5
	.4byte 0
	.4byte 0
	.4byte 0x957D0000
	.4byte 0x000094E1
	.4byte 0
	.4byte 0x9D4E0000
	.4byte 0x9D518FB3
	.4byte 0x8B5A0000
	.4byte 0x9D4F9D56
	.4byte 0x8FB40000
	.4byte 0
	.4byte 0x00009D50
	.4byte 0x94630000
	.4byte 0
	.4byte 0
	.4byte 0x0000977D
	.4byte 0x9D529D53
	.4byte 0x9D57938A
	.4byte 0x9D548D52
	.4byte 0x90DC0000
	.4byte 0x00009D65
	.4byte 0x94B20000
	.4byte 0x91F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000094E2
	.4byte 0x9DAB0000
	.4byte 0
	.4byte 0x000095F8
	.4byte 0
	.4byte 0x000092EF
	.4byte 0
	.4byte 0x00009695
	.4byte 0x00009D5A
	.4byte 0x899F928A
	.4byte 0
	.4byte 0
	.4byte 0x9D630000
	.4byte 0x00009253
	.4byte 0x9D5D9D64
	.4byte 0x9D5F9D66
	.4byte 0x9D620000
	.4byte 0x9D61948F
	.4byte 0x00009D5B
	.4byte 0x89FB9D59
	.4byte 0x8B9191F1
	.4byte 0x9D550000
	.4byte 0x00009D58
	.4byte 0x8D5390D9
	.4byte 0x00008FB5
	.4byte 0x9D609471
	.4byte 0
	.4byte 0x8B928A67
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A879040
	.4byte 0x9D689D6D
	.4byte 0x00009D69
	.4byte 0x00008C9D
	.4byte 0x00009D6E
	.4byte 0x8E418D89
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F459D5C

.global lbl_80556BF8
lbl_80556BF8:
	.4byte 0x00008E9D
	.4byte 0x9D6B0000
	.4byte 0
	.4byte 0x00008E77
	.4byte 0x9D6C88C2
	.4byte 0
	.4byte 0x9D670000
	.4byte 0
	.4byte 0x000092A7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008B93
	.4byte 0
	.4byte 0
	.4byte 0x00008BB2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009D6A
	.4byte 0x88A50000
	.4byte 0x00008DC1
	.4byte 0
	.4byte 0x00009055
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92F00000
	.4byte 0x000094D2
	.4byte 0x9D70917D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091A8
	.4byte 0
	.4byte 0x8E4A9D71
	.4byte 0x00009D73
	.4byte 0x9D6F0000
	.4byte 0
	.4byte 0x000095DF
	.4byte 0x000092BB
	.4byte 0
	.4byte 0
	.4byte 0x917B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095F9
	.4byte 0x8ECC9D80
	.4byte 0x00009D7E
	.4byte 0
	.4byte 0x90980000
	.4byte 0
	.4byte 0x8C9E0000
	.4byte 0
	.4byte 0x9D788FB7
	.4byte 0
	.4byte 0x93E69450
	.4byte 0
	.4byte 0
	.4byte 0x9D760000
	.4byte 0x0000917C
	.4byte 0
	.4byte 0
	.4byte 0x8EF69D7B
	.4byte 0
	.4byte 0x8FB60000
	.4byte 0x9D759D7A
	.4byte 0
	.4byte 0x94720000
	.4byte 0
	.4byte 0x9D740000
	.4byte 0x8C400000
	.4byte 0x00008A7C
	.4byte 0
	.4byte 0x00009D7C
	.4byte 0x97A98DCC
	.4byte 0x92549D79
	.4byte 0x000090DA
	.4byte 0x00008D54
	.4byte 0x90848986
	.4byte 0x915B9D77
	.4byte 0x8B640000
	.4byte 0
	.4byte 0
	.4byte 0x8C660000
	.4byte 0x92CD9D7D
	.4byte 0
	.4byte 0
	.4byte 0x0000917E
	.4byte 0
	.4byte 0x9D810000
	.4byte 0x9D830000
	.4byte 0x000091B5
	.4byte 0x9D890000
	.4byte 0x9D840000
	.4byte 0x00009D86
	.4byte 0
	.4byte 0
	.4byte 0x00009560
	.4byte 0x92F10000
	.4byte 0x9D870000
	.4byte 0
	.4byte 0x974B0000
	.4byte 0
	.4byte 0x97678AB7
	.4byte 0
	.4byte 0
	.4byte 0x000088AC
	.4byte 0x00009D85
	.4byte 0
	.4byte 0
	.4byte 0x00009D82
	.4byte 0
	.4byte 0
	.4byte 0x8AF60000
	.4byte 0
	.4byte 0
	.4byte 0x89870000
	.4byte 0x9D880000
	.4byte 0
	.4byte 0x97680000
	.4byte 0
	.4byte 0

.global lbl_80556DF8
lbl_80556DF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D8C0000
	.4byte 0
	.4byte 0
	.4byte 0x000091B9
	.4byte 0x00009D93
	.4byte 0
	.4byte 0x00009D8D
	.4byte 0
	.4byte 0x9D8A9D91
	.4byte 0
	.4byte 0
	.4byte 0x9D720000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D8E0000
	.4byte 0x9D920000
	.4byte 0
	.4byte 0x94C0938B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D8B0000
	.4byte 0x9D8F0000
	.4byte 0
	.4byte 0x8C670000
	.4byte 0
	.4byte 0x8DEF0000
	.4byte 0
	.4byte 0x90DB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D970000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93450000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009D94
	.4byte 0x00009680
	.4byte 0
	.4byte 0
	.4byte 0x00009D95
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9D960000
	.4byte 0x96CC0000
	.4byte 0x90A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C82
	.4byte 0
	.4byte 0
	.4byte 0x9D9D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E549D9A
	.4byte 0x00009D99
	.4byte 0
	.4byte 0
	.4byte 0x94510000
	.4byte 0
	.4byte 0x93B30000
	.4byte 0
	.4byte 0
	.4byte 0x93509D9B
	.4byte 0
	.4byte 0x00009D9C
	.4byte 0x0000958F
	.4byte 0x00009464
	.4byte 0x8E420000
	.4byte 0x90EF0000
	.4byte 0x966F0000
	.4byte 0
	.4byte 0
	.4byte 0x00008A68
	.4byte 0x00009DA3
	.4byte 0x9D9E0000
	.4byte 0
	.4byte 0x00009769
	.4byte 0x9DA50000
	.4byte 0x00009DA1
	.4byte 0x00009DA2
	.4byte 0
	.4byte 0
	.4byte 0x00009180
	.4byte 0
	.4byte 0
	.4byte 0x9DA00000
	.4byte 0x9D5E0000
	.4byte 0
	.4byte 0x9DA40000
	.4byte 0x9D9F0000
	.4byte 0
	.4byte 0
	.4byte 0x9DA99DAA
	.4byte 0x93469DAC
	.4byte 0
	.4byte 0x8E439DA7
	.4byte 0
	.4byte 0
	.4byte 0x8B5B0000
	.4byte 0x00009DAD
	.4byte 0x00009DA6
	.4byte 0x9DB10000
	.4byte 0x9DB00000
	.4byte 0x9DAF0000
	.4byte 0
	.4byte 0x9DB20000
	.4byte 0x00009DB4
	.4byte 0x8FEF0000

.global lbl_80556FF8
lbl_80556FF8:
	.4byte 0x9DB30000
	.4byte 0
	.4byte 0x00009DB7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DB50000
	.4byte 0
	.4byte 0x9DB69D90
	.4byte 0
	.4byte 0
	.4byte 0x00009DB9
	.4byte 0x9DB80000
	.4byte 0
	.4byte 0
	.4byte 0x9D989DBA
	.4byte 0x9DAE0000
	.4byte 0x00008E78
	.4byte 0
	.4byte 0
	.4byte 0x9DBB9DBC
	.4byte 0x9DBE9DBD
	.4byte 0x9DBF89FC
	.4byte 0x00008D55
	.4byte 0
	.4byte 0x95FA90AD
	.4byte 0
	.4byte 0
	.4byte 0x00008CCC
	.4byte 0
	.4byte 0x9DC10000
	.4byte 0
	.4byte 0x00009DC4
	.4byte 0x00009571
	.4byte 0x00008B7E
	.4byte 0
	.4byte 0x00009DC3
	.4byte 0x9DC29473
	.4byte 0x9DC58BB3
	.4byte 0
	.4byte 0x00009DC7
	.4byte 0x9DC60000
	.4byte 0
	.4byte 0x8AB88E55
	.4byte 0
	.4byte 0x93D60000
	.4byte 0
	.4byte 0
	.4byte 0x8C680000
	.4byte 0
	.4byte 0x90940000
	.4byte 0x9DC80000
	.4byte 0x90AE9347
	.4byte 0x0000957E
	.4byte 0x9DC90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DCA9DCB
	.4byte 0
	.4byte 0x000095B6
	.4byte 0x9B7C90C4
	.4byte 0
	.4byte 0x956B0000
	.4byte 0x8DD60000
	.4byte 0x94E394C1
	.4byte 0
	.4byte 0
	.4byte 0x0000936C
	.4byte 0x000097BF
	.4byte 0x00009DCD
	.4byte 0x8ECE0000
	.4byte 0x00009DCE
	.4byte 0x000088B4
	.4byte 0
	.4byte 0x8BD290CB
	.4byte 0x00009580
	.4byte 0
	.4byte 0x00009DCF
	.4byte 0x8E619266
	.4byte 0x00008E7A
	.4byte 0x90560000
	.4byte 0
	.4byte 0
	.4byte 0x00009DD0
	.4byte 0x000095FB
	.4byte 0
	.4byte 0x89978E7B
	.4byte 0
	.4byte 0x00009DD3
	.4byte 0x00009DD1
	.4byte 0x9DD497B7
	.4byte 0x9DD20000
	.4byte 0
	.4byte 0x000090F9
	.4byte 0x9DD50000
	.4byte 0x000091B0
	.4byte 0
	.4byte 0x9DD60000
	.4byte 0
	.4byte 0x00008AF8
	.4byte 0x00009DD8
	.4byte 0x00009DD7
	.4byte 0
	.4byte 0
	.4byte 0x9DD99DDA
	.4byte 0x8AF90000
	.4byte 0x000093FA
	.4byte 0x92558B8C
	.4byte 0x8E7C9181
	.4byte 0
	.4byte 0x8F7B88AE
	.4byte 0
	.4byte 0x00009DDB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89A09DDF
	.4byte 0
	.4byte 0

.global lbl_805571F8
lbl_805571F8:
	.4byte 0
	.4byte 0x8D569DDE
	.4byte 0
	.4byte 0x8DA98FB8
	.4byte 0
	.4byte 0x9DDD0000
	.4byte 0x8FB90000
	.4byte 0x96BE8DA8
	.4byte 0
	.4byte 0x000088D5
	.4byte 0x90CC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DE40000
	.4byte 0x000090AF
	.4byte 0x89660000
	.4byte 0
	.4byte 0x00008F74
	.4byte 0x00009686
	.4byte 0x8DF00000
	.4byte 0
	.4byte 0x00008FBA
	.4byte 0x000090A5
	.4byte 0
	.4byte 0
	.4byte 0x9DE39DE1
	.4byte 0x9DE20000
	.4byte 0
	.4byte 0
	.4byte 0x928B0000
	.4byte 0x00009E45
	.4byte 0x00009DE8
	.4byte 0x8E9E8D57
	.4byte 0x9DE60000
	.4byte 0
	.4byte 0x00009DE7
	.4byte 0x00009057
	.4byte 0
	.4byte 0x00009DE5
	.4byte 0
	.4byte 0x8E4E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009DEA
	.4byte 0x9DE99DEE
	.4byte 0
	.4byte 0x9DEF0000
	.4byte 0x9DEB0000
	.4byte 0x8A419DEC
	.4byte 0x9DED94D3
	.4byte 0
	.4byte 0
	.4byte 0x95818C69
	.4byte 0x9DF00000
	.4byte 0
	.4byte 0x90B00000
	.4byte 0x8FBB0000
	.4byte 0
	.4byte 0x92710000
	.4byte 0
	.4byte 0
	.4byte 0x00008BC5
	.4byte 0x00009DF1
	.4byte 0x9DF50000
	.4byte 0x000089C9
	.4byte 0x9DF29DF4
	.4byte 0
	.4byte 0
	.4byte 0x9DF30000
	.4byte 0x00008F8B
	.4byte 0
	.4byte 0
	.4byte 0x926788C3
	.4byte 0x9DF60000
	.4byte 0
	.4byte 0x00009DF7
	.4byte 0
	.4byte 0
	.4byte 0x92A80000
	.4byte 0
	.4byte 0x97EF0000
	.4byte 0
	.4byte 0x00008E62
	.4byte 0
	.4byte 0x95E90000
	.4byte 0
	.4byte 0
	.4byte 0x965C0000
	.4byte 0
	.4byte 0x9E419DF9
	.4byte 0
	.4byte 0x9DFC0000
	.4byte 0x9DFB0000
	.4byte 0x00009DF8
	.4byte 0
	.4byte 0x9E400000
	.4byte 0x000093DC
	.4byte 0x00009DFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E420000
	.4byte 0x00008F8C
	.4byte 0x9E430000
	.4byte 0x976A9498
	.4byte 0
	.4byte 0x9E440000
	.4byte 0
	.4byte 0
	.4byte 0x9E460000
	.4byte 0x00009E47
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E480000
	.4byte 0x8BC88967
	.4byte 0x8D589E49
	.4byte 0x00009E4A
	.4byte 0x8F919182
	.4byte 0
	.4byte 0x99D6915D
	.4byte 0x915C91D6

.global lbl_805573F8
lbl_805573F8:
	.4byte 0x8DC50000
	.4byte 0x000098F0
	.4byte 0
	.4byte 0
	.4byte 0x8C8E974C
	.4byte 0x000095FC
	.4byte 0x0000959E
	.4byte 0x00009E4B
	.4byte 0
	.4byte 0
	.4byte 0x8DF192BD
	.4byte 0x9E4C984E
	.4byte 0
	.4byte 0x0000965D
	.4byte 0x000092A9
	.4byte 0x9E4D8AFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E4E9E4F
	.4byte 0x96D80000
	.4byte 0x96A29696
	.4byte 0x967B8E44
	.4byte 0x9E510000
	.4byte 0x00008EE9
	.4byte 0
	.4byte 0x96700000
	.4byte 0x9E539E56
	.4byte 0x9E550000
	.4byte 0x8AF70000
	.4byte 0x00008B80
	.4byte 0x00009E52
	.4byte 0x00009E54
	.4byte 0
	.4byte 0
	.4byte 0x9E570000
	.4byte 0x00009099
	.4byte 0
	.4byte 0
	.4byte 0x979B88C7
	.4byte 0x8DDE91BA
	.4byte 0x00008EDB
	.4byte 0
	.4byte 0x8FF10000
	.4byte 0x00009E5A
	.4byte 0
	.4byte 0x936D0000
	.4byte 0x9E5891A9
	.4byte 0x9E598FF0
	.4byte 0x96DB9E5B
	.4byte 0x9E5C9788
	.4byte 0
	.4byte 0
	.4byte 0x9E610000
	.4byte 0x00008D59
	.4byte 0x00009474
	.4byte 0x9E5E938C
	.4byte 0x9DDC9DE0
	.4byte 0x00008B6E
	.4byte 0x00009466
	.4byte 0
	.4byte 0
	.4byte 0x9E600000
	.4byte 0x8FBC94C2
	.4byte 0
	.4byte 0
	.4byte 0x00009E66
	.4byte 0x000094F8
	.4byte 0x00009E5D
	.4byte 0x00009E63
	.4byte 0x9E620000
	.4byte 0
	.4byte 0x90CD0000
	.4byte 0
	.4byte 0x0000968D
	.4byte 0x000097D1
	.4byte 0
	.4byte 0x96870000
	.4byte 0x89CA8E7D
	.4byte 0
	.4byte 0x98679E65
	.4byte 0x90950000
	.4byte 0
	.4byte 0x9E640000
	.4byte 0x00009E5F
	.4byte 0
	.4byte 0
	.4byte 0x00008CCD
	.4byte 0
	.4byte 0x00009E6B
	.4byte 0x9E690000
	.4byte 0x89CB9E67
	.4byte 0x9E6D9E73
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091C6
	.4byte 0
	.4byte 0x95BF0000
	.4byte 0x9E750000
	.4byte 0
	.4byte 0x95410000
	.4byte 0
	.4byte 0x9E749490
	.4byte 0x965E8AB9
	.4byte 0x000090F5
	.4byte 0x8F5F0000
	.4byte 0
	.4byte 0x92D10000
	.4byte 0x974D0000
	.4byte 0x00009E70
	.4byte 0x9E6F0000
	.4byte 0
	.4byte 0x9E710000
	.4byte 0x9E6E0000
	.4byte 0x00009E76
	.4byte 0x00009E6C
	.4byte 0
	.4byte 0x9E6A0000
	.4byte 0x9E729E68
	.4byte 0x0000928C
	.4byte 0x000096F6
	.4byte 0x8EC48DF2
	.4byte 0
	.4byte 0
	.4byte 0x00008DB8
	.4byte 0
	.4byte 0x968F8A60

.global lbl_805575F8
lbl_805575F8:
	.4byte 0
	.4byte 0x92CC93C8
	.4byte 0x89680000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000090F0
	.4byte 0
	.4byte 0x90B28C49
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E780000
	.4byte 0x00008D5A
	.4byte 0x8A9C0000
	.4byte 0
	.4byte 0
	.4byte 0x00009E7A
	.4byte 0x8A949E81
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E7D0000
	.4byte 0x90F10000
	.4byte 0
	.4byte 0x8A6A8DAA
	.4byte 0
	.4byte 0x8A698DCD
	.4byte 0
	.4byte 0x9E7B8C85
	.4byte 0x8C6A938D
	.4byte 0
	.4byte 0x9E790000
	.4byte 0x88C40000
	.4byte 0
	.4byte 0x00009E7C
	.4byte 0x9E7E0000
	.4byte 0x8BCB8C4B
	.4byte 0x00008ABA
	.4byte 0x8B6A0000
	.4byte 0
	.4byte 0x00009E82
	.4byte 0
	.4byte 0x8DF79691
	.4byte 0x00008E56
	.4byte 0
	.4byte 0x00009E83
	.4byte 0
	.4byte 0x0000954F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E8F0000
	.4byte 0x89B19E84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9E959E85
	.4byte 0x000097C0
	.4byte 0x00009E8C
	.4byte 0x0000947E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009E94
	.4byte 0x00009E87
	.4byte 0
	.4byte 0x000088B2
	.4byte 0x9E890000
	.4byte 0x00008D5B
	.4byte 0
	.4byte 0x00009E8B
	.4byte 0x00009E8A
	.4byte 0x00009E86
	.4byte 0x9E910000
	.4byte 0x8FBD0000
	.4byte 0
	.4byte 0x9AEB8CE6
	.4byte 0x979C0000
	.4byte 0
	.4byte 0x00009E88
	.4byte 0x000092F2
	.4byte 0x8A428DAB
	.4byte 0x00009E80
	.4byte 0x00009E90
	.4byte 0x8A810000
	.4byte 0x00009E8E
	.4byte 0x9E920000
	.4byte 0x938E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AFC0000
	.4byte 0x9EB00000
	.4byte 0x000096C7
	.4byte 0x9E978AFB
	.4byte 0x00009E9E
	.4byte 0
	.4byte 0
	.4byte 0x965F0000
	.4byte 0x9E9F9EA1
	.4byte 0x00009EA5
	.4byte 0x9E990000
	.4byte 0x92490000
	.4byte 0
	.4byte 0x0000938F
	.4byte 0x9EA99E9C
	.4byte 0x00009EA6
	.4byte 0
	.4byte 0x00009EA0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90589EAA
	.4byte 0
	.4byte 0x90B10000
	.4byte 0
	.4byte 0
	.4byte 0x00009EA8
	.4byte 0x8ABB0000
	.4byte 0
	.4byte 0

.global lbl_805577F8
lbl_805577F8:
	.4byte 0x986F9E96
	.4byte 0
	.4byte 0x9EA488D6
	.4byte 0
	.4byte 0x9E980000
	.4byte 0x000096B8
	.4byte 0x9E9D9041
	.4byte 0x92C59E93
	.4byte 0
	.4byte 0x9EA30000
	.4byte 0
	.4byte 0
	.4byte 0x0000909A
	.4byte 0x9EAD8A91
	.4byte 0x8C9F0000
	.4byte 0
	.4byte 0x00009EAF
	.4byte 0x9E9A9EAE
	.4byte 0x00009EA7
	.4byte 0x9E9B0000
	.4byte 0x9EAB0000
	.4byte 0x9EAC0000
	.4byte 0
	.4byte 0
	.4byte 0x9EBD0000
	.4byte 0
	.4byte 0x93CC0000
	.4byte 0x9EA20000
	.4byte 0x00009EB9
	.4byte 0
	.4byte 0x00009EBB
	.4byte 0x000092D6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x976B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009596
	.4byte 0x9EB691C8
	.4byte 0
	.4byte 0x00009EBC
	.4byte 0x915E0000
	.4byte 0x9EB39EC0
	.4byte 0x9EBF0000
	.4byte 0x93ED9EBE
	.4byte 0x93E80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EC29EB5
	.4byte 0x00008BC6
	.4byte 0x9EB88F7C
	.4byte 0
	.4byte 0x00009480
	.4byte 0x9EBA8BC9
	.4byte 0x00009EB2
	.4byte 0x9EB49EB1
	.4byte 0
	.4byte 0x984F8A79
	.4byte 0x9EB70000
	.4byte 0x00009EC1
	.4byte 0x8A540000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DE50000
	.4byte 0
	.4byte 0x897C0000
	.4byte 0x00009ED2
	.4byte 0
	.4byte 0x98509ED5
	.4byte 0
	.4byte 0
	.4byte 0x00009059
	.4byte 0x9ED40000
	.4byte 0
	.4byte 0x9ED30000
	.4byte 0
	.4byte 0
	.4byte 0x00009ED0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EC40000
	.4byte 0x00009EE1
	.4byte 0x9EC30000
	.4byte 0x9ED60000
	.4byte 0
	.4byte 0
	.4byte 0x00009ECE
	.4byte 0
	.4byte 0x9EC99EC6
	.4byte 0x00009EC7
	.4byte 0x00009ECF
	.4byte 0
	.4byte 0x0000EAA0
	.4byte 0
	.4byte 0x9ECC8D5C
	.4byte 0x92C69184
	.4byte 0x9ECA0000
	.4byte 0x9EC50000
	.4byte 0x00009EC8
	.4byte 0
	.4byte 0
	.4byte 0x976C968A
	.4byte 0
	.4byte 0x00009ECD
	.4byte 0x9ED70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009EDF
	.4byte 0x9ED80000
	.4byte 0x00009EE5
	.4byte 0x00009EE3
	.4byte 0
	.4byte 0
	.4byte 0x9EDE0000
	.4byte 0
	.4byte 0
	.4byte 0x00009EDD
	.4byte 0x000092CE
	.4byte 0x00009185
	.4byte 0x00009EDB

.global lbl_805579F8
lbl_805579F8:
	.4byte 0
	.4byte 0x9ED90000
	.4byte 0x00009EE0
	.4byte 0
	.4byte 0
	.4byte 0x9EE694F3
	.4byte 0x9EEC0000
	.4byte 0
	.4byte 0
	.4byte 0x9EE79EEA
	.4byte 0x9EE40000
	.4byte 0x00009294
	.4byte 0x00009557
	.4byte 0x00009EDA
	.4byte 0
	.4byte 0x9EE28FBE
	.4byte 0x000096CD
	.4byte 0x9EF69EE9
	.4byte 0
	.4byte 0
	.4byte 0x00008CA0
	.4byte 0x89A18A7E
	.4byte 0
	.4byte 0x9ED10000
	.4byte 0
	.4byte 0
	.4byte 0x00008FBF
	.4byte 0x9EEE0000
	.4byte 0x9EF58EF7
	.4byte 0x8A920000
	.4byte 0x0000924D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EEB0000
	.4byte 0x00009EF0
	.4byte 0x9EF40000
	.4byte 0x00008BB4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B6B9EF2
	.4byte 0
	.4byte 0
	.4byte 0x00008B40
	.4byte 0x000093C9
	.4byte 0x9EF10000
	.4byte 0
	.4byte 0x9EF30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9EED0000
	.4byte 0
	.4byte 0
	.4byte 0x9EEF0000
	.4byte 0
	.4byte 0
	.4byte 0x00008A80
	.4byte 0x92680000
	.4byte 0
	.4byte 0x9EFA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009EF8
	.4byte 0x8CE70000
	.4byte 0x9EF70000
	.4byte 0
	.4byte 0
	.4byte 0x00009F40
	.4byte 0
	.4byte 0
	.4byte 0x9E770000
	.4byte 0
	.4byte 0x9EF90000
	.4byte 0x9EFB9EFC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F4B0000
	.4byte 0x9F470000
	.4byte 0x9E8D0000
	.4byte 0
	.4byte 0x00009F46
	.4byte 0
	.4byte 0
	.4byte 0x9F450000
	.4byte 0x00009F42
	.4byte 0
	.4byte 0
	.4byte 0x00009EE8
	.4byte 0x9F449F43
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F49
	.4byte 0x00009845
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F4C8BF9
	.4byte 0
	.4byte 0x9F489F4A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94A50000
	.4byte 0x9F4D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F519F4E
	.4byte 0
	.4byte 0

.global lbl_80557BF8
lbl_80557BF8:
	.4byte 0
	.4byte 0
	.4byte 0x97939F4F
	.4byte 0
	.4byte 0
	.4byte 0x9EDC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F520000
	.4byte 0
	.4byte 0x9F530000
	.4byte 0
	.4byte 0
	.4byte 0x00008954
	.4byte 0x00009F55
	.4byte 0x8C878E9F
	.4byte 0x00008BD3
	.4byte 0
	.4byte 0x000089A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x977E0000
	.4byte 0
	.4byte 0x00009F57
	.4byte 0x9F569F59
	.4byte 0x8B5C0000
	.4byte 0x00008BD4
	.4byte 0x8ABC0000
	.4byte 0
	.4byte 0x00009F5C
	.4byte 0
	.4byte 0x00009F5B
	.4byte 0x00009F5D
	.4byte 0
	.4byte 0x89CC0000
	.4byte 0x92560000
	.4byte 0x9F5E0000
	.4byte 0x00008ABD
	.4byte 0x9F600000
	.4byte 0
	.4byte 0x00009F5F
	.4byte 0x00009F61
	.4byte 0
	.4byte 0x00009F62
	.4byte 0x00009F63
	.4byte 0x8E7E90B3
	.4byte 0x8D9F0000
	.4byte 0x95900000
	.4byte 0x000095E0
	.4byte 0x98630000
	.4byte 0
	.4byte 0x00008E95
	.4byte 0
	.4byte 0x00008DCE
	.4byte 0x97F00000
	.4byte 0
	.4byte 0x9F649F65
	.4byte 0x00008E80
	.4byte 0
	.4byte 0x00009F66
	.4byte 0x9F670000
	.4byte 0x00009F69
	.4byte 0x9F680000
	.4byte 0x96770000
	.4byte 0x00008F7D
	.4byte 0x8EEA8E63
	.4byte 0x00009F6A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F6C
	.4byte 0x90420000
	.4byte 0x9F6B0000
	.4byte 0
	.4byte 0
	.4byte 0x9F6D0000
	.4byte 0
	.4byte 0
	.4byte 0x9F6E0000
	.4byte 0
	.4byte 0
	.4byte 0x9F6F9F70
	.4byte 0
	.4byte 0x00009F71
	.4byte 0x00009F73
	.4byte 0x9F729F74
	.4byte 0x89A39269
	.4byte 0x00009F75
	.4byte 0
	.4byte 0x8E458A6B
	.4byte 0x9F760000
	.4byte 0x00009361
	.4byte 0x9ACA0000
	.4byte 0
	.4byte 0x00008B42
	.4byte 0x9F770000
	.4byte 0
	.4byte 0x00009F78
	.4byte 0x000095EA
	.4byte 0x96880000
	.4byte 0
	.4byte 0x93C59F79
	.4byte 0x94E40000
	.4byte 0
	.4byte 0x94F90000
	.4byte 0x000096D1
	.4byte 0
	.4byte 0x00009F7A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F7C
	.4byte 0x9F7B0000
	.4byte 0x00009F7E
	.4byte 0
	.4byte 0x00009F7D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80557DF8
lbl_80557DF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9F810000
	.4byte 0
	.4byte 0
	.4byte 0x00008E81
	.4byte 0x000096AF
	.4byte 0x00009F82
	.4byte 0x9F830000
	.4byte 0x00008B43
	.4byte 0
	.4byte 0x00009F84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009F86
	.4byte 0x9F850000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90850000
	.4byte 0x00009558
	.4byte 0x89690000
	.4byte 0
	.4byte 0
	.4byte 0x94C30000
	.4byte 0x92F38F60
	.4byte 0x8B810000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94C40000
	.4byte 0x8EAC0000
	.4byte 0
	.4byte 0x00009F88
	.4byte 0x00008ABE
	.4byte 0
	.4byte 0x89980000
	.4byte 0x000093F0
	.4byte 0x9F878D5D
	.4byte 0x92720000
	.4byte 0x9F890000
	.4byte 0
	.4byte 0
	.4byte 0x9F910000
	.4byte 0x9F8A0000
	.4byte 0
	.4byte 0
	.4byte 0x91BF0000
	.4byte 0x8B829F92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C880000
	.4byte 0x00008B44
	.4byte 0x9F900000
	.4byte 0x00009F8E
	.4byte 0x9F8B9780
	.4byte 0
	.4byte 0
	.4byte 0x92BE0000
	.4byte 0
	.4byte 0x93D79F8C
	.4byte 0
	.4byte 0x9F940000
	.4byte 0x9F938C42
	.4byte 0
	.4byte 0x89AB0000
	.4byte 0x00008DB9
	.4byte 0x9F8D9F8F
	.4byte 0
	.4byte 0
	.4byte 0x00009676
	.4byte 0x91F20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009697
	.4byte 0
	.4byte 0x9F9C0000
	.4byte 0x00009F9D
	.4byte 0x000089CD
	.4byte 0
	.4byte 0
	.4byte 0x95A696FB
	.4byte 0x9F9F8EA1
	.4byte 0x8FC09F98
	.4byte 0x9F9E8988
	.4byte 0x00008BB5
	.4byte 0
	.4byte 0x9F959F9A
	.4byte 0
	.4byte 0x000090F2
	.4byte 0x94910000
	.4byte 0x94E50000
	.4byte 0
	.4byte 0
	.4byte 0x00009F97
	.4byte 0x00009640
	.4byte 0x00009F99
	.4byte 0x00009FA2
	.4byte 0x00009FA0
	.4byte 0x00009F9B
	.4byte 0
	.4byte 0x00009641
	.4byte 0x94678B83
	.4byte 0x00009344
	.4byte 0
	.4byte 0x928D0000
	.4byte 0x9FA30000
	.4byte 0
	.4byte 0x00009FA1
	.4byte 0x91D79F96
	.4byte 0x0000896A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80557FF8
lbl_80557FF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000976D
	.4byte 0x9FAE0000
	.4byte 0
	.4byte 0
	.4byte 0x9FAD0000
	.4byte 0
	.4byte 0x000090F4
	.4byte 0x00009FAA
	.4byte 0x0000978C
	.4byte 0
	.4byte 0x93B49FA4
	.4byte 0
	.4byte 0
	.4byte 0x000092C3
	.4byte 0
	.4byte 0x0000896B
	.4byte 0x8D5E9FA7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F469FAC
	.4byte 0x00009FAB
	.4byte 0x9FA60000
	.4byte 0x9FA90000
	.4byte 0x00008A88
	.4byte 0x00009FA8
	.4byte 0x94680000
	.4byte 0x000097AC
	.4byte 0
	.4byte 0x8FF290F3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009FB4
	.4byte 0x9FB20000
	.4byte 0x956C0000
	.4byte 0
	.4byte 0
	.4byte 0x00009FAF
	.4byte 0x9FB10000
	.4byte 0x89590000
	.4byte 0x00008D5F
	.4byte 0x98510000
	.4byte 0x8A5C0000
	.4byte 0x95820000
	.4byte 0
	.4byte 0
	.4byte 0x97810000
	.4byte 0x00008A43
	.4byte 0x905A9FB3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009FB8
	.4byte 0
	.4byte 0x8FC10000
	.4byte 0
	.4byte 0x974F0000
	.4byte 0x9FB50000
	.4byte 0
	.4byte 0x00009FB0
	.4byte 0x00009FB6
	.4byte 0
	.4byte 0x000097DC
	.4byte 0x00009393
	.4byte 0x93C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008A55
	.4byte 0
	.4byte 0x89740000
	.4byte 0x00009FBC
	.4byte 0
	.4byte 0x9FBF0000
	.4byte 0
	.4byte 0x97C10000
	.4byte 0
	.4byte 0x97840000
	.4byte 0
	.4byte 0x00009FC6
	.4byte 0x9FC09FBD
	.4byte 0
	.4byte 0x000097D2
	.4byte 0x9FC30000
	.4byte 0
	.4byte 0x00008F69
	.4byte 0x9FC50000
	.4byte 0x00009FCA
	.4byte 0
	.4byte 0x93919FC8
	.4byte 0
	.4byte 0
	.4byte 0x9FC20000
	.4byte 0x00009257
	.4byte 0
	.4byte 0x9FC90000
	.4byte 0x9FBE0000
	.4byte 0x9FC40000
	.4byte 0x9FCB88FA
	.4byte 0x9FC10000
	.4byte 0x9FCC0000
	.4byte 0x0000905B
	.4byte 0x00008F7E
	.4byte 0x000095A3
	.4byte 0x00008DAC
	.4byte 0x00009FB9
	.4byte 0x9FC79359
	.4byte 0
	.4byte 0

.global lbl_805581F8
lbl_805581F8:
	.4byte 0
	.4byte 0
	.4byte 0x000090B4
	.4byte 0x00008A89
	.4byte 0x8DCF8FC2
	.4byte 0x9FBB8F61
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008C6B
	.4byte 0x00009FBA
	.4byte 0
	.4byte 0x00009FD0
	.4byte 0x8F8D8CB8
	.4byte 0x00009FDF
	.4byte 0x00009FD9
	.4byte 0x8B94936E
	.4byte 0x00009FD4
	.4byte 0x9FDD88AD
	.4byte 0x89510000
	.4byte 0x000089B7
	.4byte 0x00009FD6
	.4byte 0x91AA9FCD
	.4byte 0x9FCF8D60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9FE00000
	.4byte 0x9FDB0000
	.4byte 0
	.4byte 0x9FD30000
	.4byte 0
	.4byte 0x00009FDA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96A90000
	.4byte 0x00009FD8
	.4byte 0x9FDC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8CCE0000
	.4byte 0x8FC30000
	.4byte 0x00009258
	.4byte 0
	.4byte 0x00009FD2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000974E
	.4byte 0
	.4byte 0x00009FD5
	.4byte 0
	.4byte 0x9FCE9392
	.4byte 0
	.4byte 0x9FD10000
	.4byte 0
	.4byte 0x9FD70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x98708EBC
	.4byte 0x969E0000
	.4byte 0x9FE10000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94AC0000
	.4byte 0x00009FED
	.4byte 0x8CB90000
	.4byte 0
	.4byte 0
	.4byte 0x8F800000
	.4byte 0x9FE30000
	.4byte 0
	.4byte 0x97AD8D61
	.4byte 0x00009FF0
	.4byte 0
	.4byte 0x88EC0000
	.4byte 0x00009FEE
	.4byte 0
	.4byte 0
	.4byte 0x9FE20000
	.4byte 0
	.4byte 0x00009FE8
	.4byte 0
	.4byte 0x9FEA0000
	.4byte 0
	.4byte 0x976E9FE5
	.4byte 0
	.4byte 0x934D0000
	.4byte 0x00009FE7
	.4byte 0
	.4byte 0
	.4byte 0x9FEF0000
	.4byte 0x9FE996C5
	.4byte 0
	.4byte 0x00009FE4
	.4byte 0x00008EA0
	.4byte 0x9FFC0000
	.4byte 0
	.4byte 0x00008A8A
	.4byte 0x00009FE6
	.4byte 0x9FEB9FEC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091EA
	.4byte 0x91D80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9FF40000
	.4byte 0x00009FFA
	.4byte 0
	.4byte 0x9FF80000
	.4byte 0x93480000
	.4byte 0x0000E042
	.4byte 0x9FF50000
	.4byte 0
	.4byte 0
	.4byte 0x9FF69FDE

.global lbl_805583F8
lbl_805583F8:
	.4byte 0x00008B99
	.4byte 0x95590000
	.4byte 0
	.4byte 0x8EBD0000
	.4byte 0x00008D97
	.4byte 0
	.4byte 0
	.4byte 0x00009852
	.4byte 0x00009FF2
	.4byte 0x0000E041
	.4byte 0x89899186
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94990000
	.4byte 0x8ABF97F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000969F
	.4byte 0x92D00000
	.4byte 0
	.4byte 0x00009FF9
	.4byte 0x9FFB0000
	.4byte 0
	.4byte 0
	.4byte 0x91510000
	.4byte 0
	.4byte 0
	.4byte 0xE0409FF7
	.4byte 0x00009FF1
	.4byte 0
	.4byte 0x00008AC1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C890000
	.4byte 0
	.4byte 0xE04E0000
	.4byte 0x0000E049
	.4byte 0x90F60000
	.4byte 0x00008A83
	.4byte 0
	.4byte 0
	.4byte 0x8F810000
	.4byte 0xE0520000
	.4byte 0
	.4byte 0
	.4byte 0x0000E04B
	.4byte 0x92AAE048
	.4byte 0x92D70000
	.4byte 0
	.4byte 0xE06B0000
	.4byte 0
	.4byte 0xE0450000
	.4byte 0xE0440000
	.4byte 0xE04D0000
	.4byte 0
	.4byte 0xE047E046
	.4byte 0xE04C0000
	.4byte 0x909F0000
	.4byte 0xE0430000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE04F0000
	.4byte 0x0000E050
	.4byte 0
	.4byte 0
	.4byte 0x00008AC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E055
	.4byte 0x0000E054
	.4byte 0xE0560000
	.4byte 0
	.4byte 0
	.4byte 0xE0590000
	.4byte 0
	.4byte 0
	.4byte 0x00009362
	.4byte 0x0000E053
	.4byte 0
	.4byte 0
	.4byte 0x0000E057
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C8391F7
	.4byte 0xE051945A
	.4byte 0
	.4byte 0xE0580000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE05DE05B
	.4byte 0
	.4byte 0xE05E0000
	.4byte 0x0000E061
	.4byte 0
	.4byte 0x0000E05A
	.4byte 0x8D8A9447
	.4byte 0
	.4byte 0x9FB70000
	.4byte 0
	.4byte 0
	.4byte 0x00009794
	.4byte 0xE05C0000
	.4byte 0xE06091F3
	.4byte 0x0000E05F
	.4byte 0x0000E04A
	.4byte 0
	.4byte 0xE8890000
	.4byte 0
	.4byte 0xE0640000
	.4byte 0
	.4byte 0xE0680000

.global lbl_805585F8
lbl_805585F8:
	.4byte 0x0000E066
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E062
	.4byte 0x0000E063
	.4byte 0
	.4byte 0x0000E067
	.4byte 0x0000E065
	.4byte 0
	.4byte 0x0000956D
	.4byte 0
	.4byte 0xE06D0000
	.4byte 0xE06AE069
	.4byte 0x0000E06C
	.4byte 0x93D2E06E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x929591EB
	.4byte 0
	.4byte 0
	.4byte 0x90A30000
	.4byte 0
	.4byte 0xE06F0000
	.4byte 0xE0710000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9FF30000
	.4byte 0
	.4byte 0x0000E072
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93E50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E073
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000089CE
	.4byte 0
	.4byte 0x00009394
	.4byte 0x8A440000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B840000
	.4byte 0
	.4byte 0x8EDC8DD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009846
	.4byte 0x90860000
	.4byte 0
	.4byte 0x898A0000
	.4byte 0
	.4byte 0xE0750000
	.4byte 0
	.4byte 0
	.4byte 0x0000E074
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0789259
	.4byte 0xE07BE076
	.4byte 0
	.4byte 0x0000E07A
	.4byte 0
	.4byte 0
	.4byte 0xE079935F
	.4byte 0x88D70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97F30000
	.4byte 0x0000E07D
	.4byte 0
	.4byte 0x00008947
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E080
	.4byte 0
	.4byte 0x0000E07E
	.4byte 0x0000E07C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E077
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009642
	.4byte 0
	.4byte 0x0000E082
	.4byte 0

.global lbl_805587F8
lbl_805587F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E081
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x898B0000
	.4byte 0
	.4byte 0x0000E084
	.4byte 0x95B00000
	.4byte 0xE0830000
	.4byte 0
	.4byte 0x000096B3
	.4byte 0
	.4byte 0
	.4byte 0x8FC50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91520000
	.4byte 0
	.4byte 0
	.4byte 0x8FC40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097F9
	.4byte 0
	.4byte 0xE08A0000
	.4byte 0x90F70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E086
	.4byte 0xE08B0000
	.4byte 0x0000898C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0890000
	.4byte 0x9481E085
	.4byte 0xE0888FC6
	.4byte 0x000094CF
	.4byte 0
	.4byte 0xE08C0000
	.4byte 0x8ECF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000090F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE08F0000
	.4byte 0
	.4byte 0xE0870000
	.4byte 0x8C460000
	.4byte 0
	.4byte 0x0000E08D
	.4byte 0
	.4byte 0
	.4byte 0x976FE090
	.4byte 0
	.4byte 0x0000EAA4
	.4byte 0
	.4byte 0
	.4byte 0x00008F6E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0910000
	.4byte 0
	.4byte 0xE0920000
	.4byte 0
	.4byte 0x0000944D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E094
	.4byte 0
	.4byte 0
	.4byte 0xE0950000
	.4byte 0
	.4byte 0x00009452
	.4byte 0
	.4byte 0
	.4byte 0x9395E097
	.4byte 0
	.4byte 0
	.4byte 0xE0990000
	.4byte 0x97D30000
	.4byte 0xE0960000
	.4byte 0xE098898D
	.4byte 0x0000E093
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009A7A
	.4byte 0xE09A0000
	.4byte 0
	.4byte 0x00009187
	.4byte 0x8E57E09C
	.4byte 0
	.4byte 0
	.4byte 0xE09B9043
	.4byte 0x99D70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E09D
	.4byte 0
	.4byte 0x0000E09F
	.4byte 0x0000E08E
	.4byte 0xE09E0000
	.4byte 0x0000E0A0

.global lbl_805589F8
lbl_805589F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x949A0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E0A1
	.4byte 0
	.4byte 0xE0A20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0A3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0A40000
	.4byte 0x92DC0000
	.4byte 0xE0A6E0A5
	.4byte 0
	.4byte 0xE0A70000
	.4byte 0xE0A80000
	.4byte 0x00008EDD
	.4byte 0x95830000
	.4byte 0
	.4byte 0x96EAE0A9
	.4byte 0xE0AA9175
	.4byte 0x8EA2E0AB
	.4byte 0xE0AC0000
	.4byte 0
	.4byte 0
	.4byte 0xE0AD95D0
	.4byte 0x94C50000
	.4byte 0x0000E0AE
	.4byte 0x94760000
	.4byte 0
	.4byte 0
	.4byte 0x92AB0000
	.4byte 0
	.4byte 0
	.4byte 0xE0AF89E5
	.4byte 0x00008B8D
	.4byte 0x000096C4
	.4byte 0x000096B4
	.4byte 0x000089B2
	.4byte 0x98530000
	.4byte 0
	.4byte 0x00009671
	.4byte 0x000095A8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90B50000
	.4byte 0xE0B00000
	.4byte 0
	.4byte 0x000093C1
	.4byte 0
	.4byte 0x00008CA1
	.4byte 0xE0B10000
	.4byte 0x8DD2E0B3
	.4byte 0xE0B20000
	.4byte 0
	.4byte 0x0000E0B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0B50000
	.4byte 0
	.4byte 0xE0B60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B5D0000
	.4byte 0xE0B70000
	.4byte 0
	.4byte 0x0000E0B8
	.4byte 0
	.4byte 0
	.4byte 0x8CA20000
	.4byte 0x000094C6
	.4byte 0
	.4byte 0xE0BA0000
	.4byte 0
	.4byte 0x8FF30000
	.4byte 0x0000E0B9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8BB6E0BB
	.4byte 0xE0BD0000
	.4byte 0xE0BC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0BE0000
	.4byte 0x8CCF0000
	.4byte 0xE0BF0000
	.4byte 0
	.4byte 0x00008BE7
	.4byte 0x0000915F
	.4byte 0x00008D9D
	.4byte 0
	.4byte 0
	.4byte 0xE0C1E0C2
	.4byte 0xE0C00000
	.4byte 0
	.4byte 0
	.4byte 0x00008EEB
	.4byte 0
	.4byte 0x93C68BB7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0C4
	.4byte 0x924BE0C3
	.4byte 0
	.4byte 0x98549482
	.4byte 0

.global lbl_80558BF8
lbl_80558BF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0C70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0C9E0C6
	.4byte 0
	.4byte 0x000096D2
	.4byte 0xE0C8E0CA
	.4byte 0x000097C2
	.4byte 0
	.4byte 0
	.4byte 0x0000E0CE
	.4byte 0
	.4byte 0x0000E0CD
	.4byte 0x9296944C
	.4byte 0
	.4byte 0x8CA3E0CC
	.4byte 0
	.4byte 0
	.4byte 0xE0CB0000
	.4byte 0x97509751
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0CF898E
	.4byte 0
	.4byte 0
	.4byte 0x8D968E82
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0D0E0D1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0D3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008F62
	.4byte 0
	.4byte 0
	.4byte 0xE0D50000
	.4byte 0xE0D40000
	.4byte 0
	.4byte 0
	.4byte 0xE0D60000
	.4byte 0x8A6C0000
	.4byte 0x0000E0D8
	.4byte 0
	.4byte 0xE0D70000
	.4byte 0xE0DAE0D9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8CBA0000
	.4byte 0x000097A6
	.4byte 0x00008BCA
	.4byte 0x000089A4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8BE80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008ADF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97E6E0DC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0DE
	.4byte 0
	.4byte 0
	.4byte 0xE0DF0000
	.4byte 0x89CF0000
	.4byte 0
	.4byte 0
	.4byte 0xE0DB0000
	.4byte 0x8E580000
	.4byte 0x000092BF
	.4byte 0xE0DD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0E20000
	.4byte 0x8EEC0000
	.4byte 0
	.4byte 0x0000E0E0
	.4byte 0
	.4byte 0
	.4byte 0x8C5D0000
	.4byte 0x000094C7
	.4byte 0xE0E10000
	.4byte 0x0000E0FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0E70000
	.4byte 0
	.4byte 0
	.4byte 0x8CBB0000

.global lbl_80558DF8
lbl_80558DF8:
	.4byte 0
	.4byte 0x00008B85
	.4byte 0x0000E0E4
	.4byte 0x979D0000
	.4byte 0x000097AE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91F40000
	.4byte 0x0000E0E6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0E897D4
	.4byte 0x8BD594FA
	.4byte 0x94690000
	.4byte 0
	.4byte 0xE0E90000
	.4byte 0
	.4byte 0x0000E0EB
	.4byte 0x0000E0EE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0EA
	.4byte 0
	.4byte 0x0000E0ED
	.4byte 0x8CE8896C
	.4byte 0xE0EF0000
	.4byte 0x9090E0EC
	.4byte 0x97DA0000
	.4byte 0x0000E0F2
	.4byte 0xEAA20000
	.4byte 0
	.4byte 0x0000E0F0
	.4byte 0xE0F30000
	.4byte 0
	.4byte 0x0000E0E5
	.4byte 0xE0F10000
	.4byte 0x00008DBA
	.4byte 0
	.4byte 0xE0F40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0F50000
	.4byte 0
	.4byte 0x0000979E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E0F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0F70000
	.4byte 0
	.4byte 0xE0E30000
	.4byte 0
	.4byte 0x0000E0F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8AC20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008EA3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE0F90000
	.4byte 0
	.4byte 0x0000E0FA
	.4byte 0
	.4byte 0
	.4byte 0xE0FB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x895A0000
	.4byte 0
	.4byte 0xE1400000
	.4byte 0x955AE141
	.4byte 0
	.4byte 0x8AA2E142
	.4byte 0x0000E143
	.4byte 0
	.4byte 0
	.4byte 0xE1440000
	.4byte 0xE146E147
	.4byte 0xE1450000
	.4byte 0
	.4byte 0x9572E149
	.4byte 0xE1480000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80558FF8
lbl_80558FF8:
	.4byte 0
	.4byte 0x0000E14B
	.4byte 0xE14AE14C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE14DE14F
	.4byte 0xE14E0000
	.4byte 0x00008D99
	.4byte 0x0000E151
	.4byte 0x0000E150
	.4byte 0
	.4byte 0x8AC30000
	.4byte 0x90720000
	.4byte 0x935B0000
	.4byte 0xE15290B6
	.4byte 0
	.4byte 0x00008E59
	.4byte 0x00008999
	.4byte 0xE1530000
	.4byte 0x97700000
	.4byte 0x000095E1
	.4byte 0xE1540000
	.4byte 0
	.4byte 0x93639752
	.4byte 0x8D62905C
	.4byte 0
	.4byte 0x0000926A
	.4byte 0x99B20000
	.4byte 0x92AC89E6
	.4byte 0xE1550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1560000
	.4byte 0xE15B0000
	.4byte 0x0000E159
	.4byte 0xE1589DC0
	.4byte 0x8A45E157
	.4byte 0x000088D8
	.4byte 0x000094A8
	.4byte 0
	.4byte 0x94C80000
	.4byte 0
	.4byte 0x000097AF
	.4byte 0xE15CE15A
	.4byte 0x927B90A4
	.4byte 0
	.4byte 0x94A90000
	.4byte 0x954C0000
	.4byte 0xE15E97AA
	.4byte 0x8C6CE15F
	.4byte 0x0000E15D
	.4byte 0x94D4E160
	.4byte 0x0000E161
	.4byte 0
	.4byte 0x88D90000
	.4byte 0x00008FF4
	.4byte 0xE1660000
	.4byte 0xE16393EB
	.4byte 0xE1620000
	.4byte 0
	.4byte 0
	.4byte 0x00008B45
	.4byte 0
	.4byte 0xE1690000
	.4byte 0
	.4byte 0xE164E165
	.4byte 0x0000E168
	.4byte 0xE1679544
	.4byte 0
	.4byte 0x91619160
	.4byte 0x00008B5E
	.4byte 0
	.4byte 0xE16A0000
	.4byte 0
	.4byte 0
	.4byte 0xE16B0000
	.4byte 0x0000E16C
	.4byte 0
	.4byte 0
	.4byte 0x0000E16E
	.4byte 0x0000E16D
	.4byte 0
	.4byte 0
	.4byte 0x00008975
	.4byte 0
	.4byte 0
	.4byte 0x0000E176
	.4byte 0x94E6E170
	.4byte 0x0000E172
	.4byte 0
	.4byte 0xE174905D
	.4byte 0
	.4byte 0xE175E173
	.4byte 0x8EBE0000
	.4byte 0
	.4byte 0xE16FE171
	.4byte 0x00009561
	.4byte 0x00008FC7
	.4byte 0
	.4byte 0xE1780000
	.4byte 0x0000E177
	.4byte 0
	.4byte 0
	.4byte 0xE1790000
	.4byte 0x8EA48DAD
	.4byte 0
	.4byte 0x9397E17A
	.4byte 0x000092C9
	.4byte 0
	.4byte 0xE17C0000
	.4byte 0
	.4byte 0x979FE17B
	.4byte 0
	.4byte 0
	.4byte 0x00009189
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1820000
	.4byte 0xE184E185
	.4byte 0x92730000
	.4byte 0
	.4byte 0
	.4byte 0xE1830000
	.4byte 0xE1800000
	.4byte 0xE17DE17E

.global lbl_805591F8
lbl_805591F8:
	.4byte 0x0000E181
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E188
	.4byte 0x0000E186
	.4byte 0x0000E187
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E189
	.4byte 0xE18BE18C
	.4byte 0xE18D0000
	.4byte 0xE18E0000
	.4byte 0x0000E18A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1900000
	.4byte 0
	.4byte 0xE18F0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E191
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97C30000
	.4byte 0
	.4byte 0xE194E192
	.4byte 0xE1930000
	.4byte 0
	.4byte 0x8AE00000
	.4byte 0
	.4byte 0
	.4byte 0x96FC0000
	.4byte 0
	.4byte 0x95C80000
	.4byte 0xE1960000
	.4byte 0
	.4byte 0xE1950000
	.4byte 0
	.4byte 0x0000E197
	.4byte 0xE1980000
	.4byte 0
	.4byte 0x0000E19C
	.4byte 0xE199E19A
	.4byte 0xE19B0000
	.4byte 0xE19D0000
	.4byte 0
	.4byte 0xE19E0000
	.4byte 0xE19F0000
	.4byte 0
	.4byte 0xE1A00000
	.4byte 0xE1A10000
	.4byte 0x94AD936F
	.4byte 0xE1A29492
	.4byte 0x95530000
	.4byte 0xE1A30000
	.4byte 0x0000E1A4
	.4byte 0x93490000
	.4byte 0x8A468D63
	.4byte 0xE1A50000
	.4byte 0x0000E1A6
	.4byte 0
	.4byte 0xE1A70000
	.4byte 0x8E480000
	.4byte 0x0000E1A9
	.4byte 0
	.4byte 0xE1A80000
	.4byte 0x0000E1AA
	.4byte 0xE1AB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x94E70000
	.4byte 0xE1AC0000
	.4byte 0
	.4byte 0xE1AD0000
	.4byte 0x0000EA89
	.4byte 0xE1AEE1AF
	.4byte 0xE1B00000
	.4byte 0
	.4byte 0x00008E4D
	.4byte 0
	.4byte 0xE1B19475
	.4byte 0
	.4byte 0x967E0000
	.4byte 0x896D0000
	.4byte 0x89760000
	.4byte 0x0000E1B2
	.4byte 0
	.4byte 0
	.4byte 0xE1B40000
	.4byte 0
	.4byte 0xE1B39390
	.4byte 0
	.4byte 0x000090B7
	.4byte 0x9F580000
	.4byte 0xE1B596BF
	.4byte 0x0000E1B6
	.4byte 0x00008AC4
	.4byte 0x94D5E1B7
	.4byte 0x0000E1B8
	.4byte 0
	.4byte 0xE1B90000
	.4byte 0
	.4byte 0x96DA0000
	.4byte 0
	.4byte 0x96D30000
	.4byte 0x92BC0000
	.4byte 0
	.4byte 0x918A0000
	.4byte 0x0000E1BB
	.4byte 0
	.4byte 0x8F820000

.global lbl_805593F8
lbl_805593F8:
	.4byte 0x00008FC8
	.4byte 0
	.4byte 0xE1BE0000
	.4byte 0x0000E1BD
	.4byte 0xE1BC94FB
	.4byte 0x00008AC5
	.4byte 0x8CA70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1C4
	.4byte 0
	.4byte 0xE1C1905E
	.4byte 0x96B00000
	.4byte 0
	.4byte 0xE1C0E1C2
	.4byte 0xE1C30000
	.4byte 0x0000E1BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1C5
	.4byte 0xE1C60000
	.4byte 0x92AD0000
	.4byte 0x8AE10000
	.4byte 0
	.4byte 0x92850000
	.4byte 0
	.4byte 0
	.4byte 0x0000E1C7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1C8E1CB
	.4byte 0
	.4byte 0
	.4byte 0x00009087
	.4byte 0x000093C2
	.4byte 0x0000E1CC
	.4byte 0x96720000
	.4byte 0xE1C90000
	.4byte 0x0000E1CA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1CF
	.4byte 0
	.4byte 0
	.4byte 0xE1CEE1CD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1D1
	.4byte 0
	.4byte 0xE1D00000
	.4byte 0x0000E1D2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1D40000
	.4byte 0xE1D30000
	.4byte 0
	.4byte 0x000095CB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F7597C4
	.4byte 0
	.4byte 0xE1D50000
	.4byte 0x000093B5
	.4byte 0
	.4byte 0xE1D60000
	.4byte 0x0000E1D7
	.4byte 0x0000E1DB
	.4byte 0xE1D9E1DA
	.4byte 0x0000E1D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1DC
	.4byte 0
	.4byte 0
	.4byte 0x0000E1DD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1DE
	.4byte 0
	.4byte 0xE1DF96B5
	.4byte 0xE1E00000
	.4byte 0
	.4byte 0
	.4byte 0x96EEE1E1
	.4byte 0x0000926D
	.4byte 0x0000948A
	.4byte 0x00008BE9
	.4byte 0
	.4byte 0x0000925A
	.4byte 0xE1E28BB8
	.4byte 0
	.4byte 0x000090CE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E30000
	.4byte 0

.global lbl_805595F8
lbl_805595F8:
	.4byte 0
	.4byte 0x8DBB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E40000
	.4byte 0
	.4byte 0
	.4byte 0xE1E50000
	.4byte 0x8CA48DD3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E70000
	.4byte 0
	.4byte 0x00009375
	.4byte 0x8DD48B6D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96430000
	.4byte 0x946A0000
	.4byte 0
	.4byte 0
	.4byte 0x93760000
	.4byte 0
	.4byte 0x00008D7B
	.4byte 0
	.4byte 0
	.4byte 0x0000E1E9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008FC9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097B0
	.4byte 0x8D640000
	.4byte 0x00008CA5
	.4byte 0
	.4byte 0x94A10000
	.4byte 0xE1EB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1ED0000
	.4byte 0
	.4byte 0x00008CE9
	.4byte 0
	.4byte 0
	.4byte 0xE1EC92F4
	.4byte 0
	.4byte 0
	.4byte 0xE1EF8A56
	.4byte 0xE1EA0000
	.4byte 0x000094E8
	.4byte 0x0000894F
	.4byte 0x00008DEA
	.4byte 0x00009871
	.4byte 0
	.4byte 0xE1EE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E1F0
	.4byte 0
	.4byte 0x000095C9
	.4byte 0x000090D7
	.4byte 0xE1F20000
	.4byte 0
	.4byte 0x0000E1F3
	.4byte 0
	.4byte 0
	.4byte 0x0000E1F1
	.4byte 0
	.4byte 0
	.4byte 0x8A6D0000
	.4byte 0xE1F90000
	.4byte 0xE1F80000
	.4byte 0x00008EA5
	.4byte 0
	.4byte 0x0000E1FA
	.4byte 0xE1F50000
	.4byte 0
	.4byte 0xE1FBE1F6
	.4byte 0
	.4byte 0
	.4byte 0x94D6E1F4
	.4byte 0
	.4byte 0xE1F70000
	.4byte 0
	.4byte 0
	.4byte 0xE2410000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E240
	.4byte 0x96810000
	.4byte 0
	.4byte 0xE1FC0000
	.4byte 0x000088E9
	.4byte 0
	.4byte 0
	.4byte 0xE2430000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E242
	.4byte 0

.global lbl_805597F8
lbl_805597F8:
	.4byte 0x00008FCA
	.4byte 0
	.4byte 0
	.4byte 0x0000E244
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91620000
	.4byte 0x0000E246
	.4byte 0xE2450000
	.4byte 0
	.4byte 0
	.4byte 0x0000E247
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE1E60000
	.4byte 0
	.4byte 0xE1E8E249
	.4byte 0xE2480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EA60000
	.4byte 0x97E70000
	.4byte 0x8ED00000
	.4byte 0xE24A8C56
	.4byte 0
	.4byte 0
	.4byte 0x00008B5F
	.4byte 0x8B468E83
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97530000
	.4byte 0x0000E250
	.4byte 0x0000E24F
	.4byte 0x9163E24C
	.4byte 0
	.4byte 0xE24E0000
	.4byte 0x00008F6A
	.4byte 0x905FE24D
	.4byte 0xE24B0000
	.4byte 0x94490000
	.4byte 0x00008FCB
	.4byte 0
	.4byte 0x955B0000
	.4byte 0
	.4byte 0x00008DD5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009398
	.4byte 0
	.4byte 0xE2510000
	.4byte 0
	.4byte 0x0000E252
	.4byte 0xE2688BD6
	.4byte 0
	.4byte 0x985C9154
	.4byte 0
	.4byte 0
	.4byte 0xE2530000
	.4byte 0x000089D0
	.4byte 0x92F5959F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E254
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B9AE255
	.4byte 0
	.4byte 0xE2570000
	.4byte 0
	.4byte 0xE2580000
	.4byte 0x94480000
	.4byte 0x0000E259
	.4byte 0
	.4byte 0
	.4byte 0x0000E25A
	.4byte 0xE25B0000
	.4byte 0x00008BD7
	.4byte 0x89D193C3
	.4byte 0x8F478E84
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E25C
	.4byte 0x00008F48
	.4byte 0
	.4byte 0
	.4byte 0x000089C8
	.4byte 0x95620000
	.4byte 0x0000E25D
	.4byte 0
	.4byte 0x94E90000
	.4byte 0
	.4byte 0
	.4byte 0x00009164
	.4byte 0x0000E260
	.4byte 0x0000E261
	.4byte 0x94890000
	.4byte 0x9060E25E
	.4byte 0x00009281
	.4byte 0
	.4byte 0xE25F0000
	.4byte 0
	.4byte 0x8FCC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088DA
	.4byte 0
	.4byte 0

.global lbl_805599F8
lbl_805599F8:
	.4byte 0x8B480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE2620000
	.4byte 0x000092F6
	.4byte 0x0000E263
	.4byte 0x90C50000
	.4byte 0
	.4byte 0
	.4byte 0x96AB0000
	.4byte 0x00009542
	.4byte 0xE264E265
	.4byte 0x92740000
	.4byte 0x97C50000
	.4byte 0x0000E267
	.4byte 0xE2660000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EED0000
	.4byte 0x0000E269
	.4byte 0x88EE0000
	.4byte 0
	.4byte 0x0000E26C
	.4byte 0
	.4byte 0x0000E26A
	.4byte 0x89D28C6D
	.4byte 0xE26B8D65
	.4byte 0x8D920000
	.4byte 0x95E4E26D
	.4byte 0
	.4byte 0x96730000
	.4byte 0x0000E26F
	.4byte 0
	.4byte 0x000090CF
	.4byte 0x896E89B8
	.4byte 0x88AA0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E26E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E270
	.4byte 0xE2718FF5
	.4byte 0
	.4byte 0
	.4byte 0x0000E272
	.4byte 0x00008A6E
	.4byte 0
	.4byte 0
	.4byte 0xE2740000
	.4byte 0
	.4byte 0x8C8A0000
	.4byte 0x8B860000
	.4byte 0x0000E275
	.4byte 0x8BF30000
	.4byte 0x0000E276
	.4byte 0x000090FA
	.4byte 0x000093CB
	.4byte 0x000090DE
	.4byte 0x8DF30000
	.4byte 0
	.4byte 0xE2770000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9282918B
	.4byte 0x0000E279
	.4byte 0xE27BE278
	.4byte 0xE27A0000
	.4byte 0
	.4byte 0
	.4byte 0x00008C41
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E27C
	.4byte 0x8C450000
	.4byte 0
	.4byte 0x8B879771
	.4byte 0xE27E0000
	.4byte 0
	.4byte 0
	.4byte 0xE2800000
	.4byte 0
	.4byte 0x894D0000
	.4byte 0
	.4byte 0x0000E283
	.4byte 0
	.4byte 0x00008A96
	.4byte 0xE282E281
	.4byte 0x0000E285
	.4byte 0xE27D0000
	.4byte 0xE28697A7
	.4byte 0x0000E287
	.4byte 0x0000E288
	.4byte 0
	.4byte 0x9AF2E28A
	.4byte 0x0000E289
	.4byte 0
	.4byte 0x0000E28B
	.4byte 0xE28C0000
	.4byte 0x97B3E28D
	.4byte 0x0000E8ED
	.4byte 0x8FCDE28E
	.4byte 0xE28F8F76
	.4byte 0x000093B6
	.4byte 0xE2900000
	.4byte 0
	.4byte 0x92470000
	.4byte 0x0000E291
	.4byte 0x0000925B
	.4byte 0xE2920000
	.4byte 0
	.4byte 0
	.4byte 0x8BA30000
	.4byte 0x995E927C
	.4byte 0x8EB10000
	.4byte 0
	.4byte 0x00008AC6

.global lbl_80559BF8
lbl_80559BF8:
	.4byte 0
	.4byte 0xE2930000
	.4byte 0xE2A00000
	.4byte 0xE2960000
	.4byte 0x8B880000
	.4byte 0xE295E2A2
	.4byte 0
	.4byte 0x0000E294
	.4byte 0x00008FCE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE298E299
	.4byte 0x0000934A
	.4byte 0
	.4byte 0xE29A0000
	.4byte 0x8A7D0000
	.4byte 0
	.4byte 0x00009079
	.4byte 0x95840000
	.4byte 0xE29C0000
	.4byte 0
	.4byte 0x91E60000
	.4byte 0
	.4byte 0
	.4byte 0x0000E297
	.4byte 0x0000E29B
	.4byte 0xE29D0000
	.4byte 0x00008DF9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2A4
	.4byte 0x954D0000
	.4byte 0x94A49399
	.4byte 0x00008BD8
	.4byte 0xE2A3E2A1
	.4byte 0x000094B3
	.4byte 0xE29E927D
	.4byte 0x939B0000
	.4byte 0x939A0000
	.4byte 0x8DF40000
	.4byte 0
	.4byte 0
	.4byte 0x0000E2B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2A6
	.4byte 0x0000E2A8
	.4byte 0
	.4byte 0
	.4byte 0xE2AB0000
	.4byte 0xE2AC0000
	.4byte 0xE2A9E2AA
	.4byte 0
	.4byte 0xE2A7E2A5
	.4byte 0
	.4byte 0
	.4byte 0xE29F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95CD89D3
	.4byte 0
	.4byte 0x0000E2B3
	.4byte 0x0000E2B0
	.4byte 0x0000E2B5
	.4byte 0
	.4byte 0xE2B40000
	.4byte 0x949396A5
	.4byte 0x00008E5A
	.4byte 0xE2AEE2B7
	.4byte 0xE2B20000
	.4byte 0xE2B1E2AD
	.4byte 0x0000E2AF
	.4byte 0x00008AC7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x925C0000
	.4byte 0x000090FB
	.4byte 0
	.4byte 0x000094A0
	.4byte 0
	.4byte 0xE2BC0000
	.4byte 0
	.4byte 0x94A20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90DFE2B9
	.4byte 0
	.4byte 0x94CD0000
	.4byte 0xE2BD95D1
	.4byte 0x0000927A
	.4byte 0x0000E2B8
	.4byte 0xE2BA0000
	.4byte 0x0000E2BB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2BE
	.4byte 0
	.4byte 0x8EC20000
	.4byte 0
	.4byte 0x93C4E2C3
	.4byte 0xE2C20000
	.4byte 0x0000E2BF
	.4byte 0
	.4byte 0x00009855
	.4byte 0
	.4byte 0
	.4byte 0x0000E2C8
	.4byte 0
	.4byte 0xE2CCE2C9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80559DF8
lbl_80559DF8:
	.4byte 0xE2C50000
	.4byte 0
	.4byte 0
	.4byte 0x0000E2C6
	.4byte 0
	.4byte 0
	.4byte 0x0000E2CB
	.4byte 0
	.4byte 0x0000E2C0
	.4byte 0x99D3E2C7
	.4byte 0xE2C10000
	.4byte 0x0000E2CA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2D0
	.4byte 0x00008AC8
	.4byte 0x0000E2CD
	.4byte 0
	.4byte 0x0000E2CE
	.4byte 0
	.4byte 0xE2CFE2D2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2D1
	.4byte 0x94F40000
	.4byte 0
	.4byte 0x0000E2D3
	.4byte 0x97FA95EB
	.4byte 0xE2D80000
	.4byte 0x0000E2D5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE2D490D0
	.4byte 0x0000E2D7
	.4byte 0xE2D90000
	.4byte 0
	.4byte 0xE2D60000
	.4byte 0xE2DD0000
	.4byte 0xE2DA0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E2DB
	.4byte 0xE2C40000
	.4byte 0
	.4byte 0xE2DCE2DE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE2DF0000
	.4byte 0
	.4byte 0
	.4byte 0x000095C4
	.4byte 0x0000E2E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96E00000
	.4byte 0x00008BCC
	.4byte 0x8C48E2E1
	.4byte 0
	.4byte 0
	.4byte 0x000095B2
	.4byte 0x00009088
	.4byte 0x000096AE
	.4byte 0
	.4byte 0xE2E20000
	.4byte 0x97B10000
	.4byte 0x00009494
	.4byte 0x00009165
	.4byte 0x94530000
	.4byte 0x00008F6C
	.4byte 0
	.4byte 0x000088BE
	.4byte 0x0000E2E7
	.4byte 0xE2E50000
	.4byte 0xE2E38A9F
	.4byte 0x00008FCF
	.4byte 0xE2E80000
	.4byte 0x0000E2E6
	.4byte 0x0000E2E4
	.4byte 0xE2EC0000
	.4byte 0x0000E2EB
	.4byte 0xE2EAE2E9
	.4byte 0
	.4byte 0
	.4byte 0x0000E2ED
	.4byte 0
	.4byte 0x0000E2EE
	.4byte 0x90B80000
	.4byte 0xE2EF0000
	.4byte 0xE2F10000
	.4byte 0x0000E2F0
	.4byte 0
	.4byte 0
	.4byte 0x8CD00000
	.4byte 0
	.4byte 0x91570000
	.4byte 0
	.4byte 0xE2F30000
	.4byte 0
	.4byte 0x939C0000
	.4byte 0xE2F20000
	.4byte 0
	.4byte 0xE2F40000
	.4byte 0x95B3918C
	.4byte 0x8D660000
	.4byte 0xE2F50000
	.4byte 0
	.4byte 0x000097C6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2F7
	.4byte 0
	.4byte 0xE2F80000
	.4byte 0xE2F90000
	.4byte 0xE2FA0000
	.4byte 0x8E850000
	.4byte 0xE2FB8C6E
	.4byte 0
	.4byte 0x8B8A0000

.global lbl_80559FF8
lbl_80559FF8:
	.4byte 0x8B490000
	.4byte 0xE3400000
	.4byte 0x96F18D67
	.4byte 0xE2FC0000
	.4byte 0
	.4byte 0xE34396E4
	.4byte 0x0000945B
	.4byte 0
	.4byte 0x95520000
	.4byte 0
	.4byte 0x8F83E342
	.4byte 0x00008ED1
	.4byte 0x8D688E86
	.4byte 0x8B8995B4
	.4byte 0xE3410000
	.4byte 0
	.4byte 0x91669661
	.4byte 0x8DF50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008E87
	.4byte 0x92DB0000
	.4byte 0xE34697DD
	.4byte 0x8DD70000
	.4byte 0xE3479061
	.4byte 0x0000E349
	.4byte 0
	.4byte 0x00008FD0
	.4byte 0x8DAE0000
	.4byte 0
	.4byte 0x0000E348
	.4byte 0
	.4byte 0x8F498CBC
	.4byte 0x9167E344
	.4byte 0xE34A0000
	.4byte 0
	.4byte 0x0000E345
	.4byte 0x8C6F0000
	.4byte 0xE34DE351
	.4byte 0x8C8B0000
	.4byte 0
	.4byte 0
	.4byte 0xE34C0000
	.4byte 0
	.4byte 0x0000E355
	.4byte 0
	.4byte 0x8D690000
	.4byte 0x0000978D
	.4byte 0x88BAE352
	.4byte 0
	.4byte 0x8B8B0000
	.4byte 0xE34F0000
	.4byte 0
	.4byte 0
	.4byte 0xE3500000
	.4byte 0x0000939D
	.4byte 0xE34EE34B
	.4byte 0x00008A47
	.4byte 0x90E20000
	.4byte 0x00008CA6
	.4byte 0
	.4byte 0x0000E357
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E354
	.4byte 0
	.4byte 0
	.4byte 0x0000E356
	.4byte 0
	.4byte 0x0000E353
	.4byte 0
	.4byte 0
	.4byte 0x00008C70
	.4byte 0x91B1E358
	.4byte 0x918E0000
	.4byte 0x0000E365
	.4byte 0
	.4byte 0xE361E35B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E35F
	.4byte 0x8EF888DB
	.4byte 0xE35AE362
	.4byte 0xE3668D6A
	.4byte 0x96D40000
	.4byte 0x92D4E35C
	.4byte 0
	.4byte 0xE3640000
	.4byte 0xE359925D
	.4byte 0x0000E35E
	.4byte 0x88BB96C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E35D
	.4byte 0
	.4byte 0x8BD994EA
	.4byte 0
	.4byte 0x0000918D
	.4byte 0x000097CE
	.4byte 0x8F8F0000
	.4byte 0x0000E38E
	.4byte 0
	.4byte 0xE3670000
	.4byte 0x90FC0000
	.4byte 0xE363E368
	.4byte 0xE36A0000
	.4byte 0x92F7E36D
	.4byte 0
	.4byte 0xE3690000
	.4byte 0
	.4byte 0x95D28AC9
	.4byte 0
	.4byte 0x96C90000
	.4byte 0x000088DC
	.4byte 0
	.4byte 0xE36C0000
	.4byte 0x97FB0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E36B
	.4byte 0
	.4byte 0

.global lbl_8055A1F8
lbl_8055A1F8:
	.4byte 0x0000898F
	.4byte 0
	.4byte 0x93EAE36E
	.4byte 0
	.4byte 0x0000E375
	.4byte 0xE36FE376
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3720000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000949B
	.4byte 0
	.4byte 0x8EC8E374
	.4byte 0x0000E371
	.4byte 0xE377E370
	.4byte 0
	.4byte 0x8F630000
	.4byte 0
	.4byte 0x00009644
	.4byte 0
	.4byte 0x8F6B0000
	.4byte 0x0000E373
	.4byte 0xE3800000
	.4byte 0x0000E37B
	.4byte 0x0000E37E
	.4byte 0x0000E37C
	.4byte 0xE381E37A
	.4byte 0x0000E360
	.4byte 0x90D10000
	.4byte 0x000094C9
	.4byte 0x0000E37D
	.4byte 0
	.4byte 0xE3780000
	.4byte 0
	.4byte 0x91408C71
	.4byte 0x00008F4A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90449155
	.4byte 0xE3840000
	.4byte 0x0000E386
	.4byte 0xE3870000
	.4byte 0x0000E383
	.4byte 0xE3850000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE379E382
	.4byte 0x0000E38A
	.4byte 0xE3890000
	.4byte 0x0000969A
	.4byte 0
	.4byte 0x8C4A0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E388
	.4byte 0x0000E38C
	.4byte 0xE38BE38F
	.4byte 0x0000E391
	.4byte 0
	.4byte 0x8E5BE38D
	.4byte 0
	.4byte 0
	.4byte 0xE392E393
	.4byte 0
	.4byte 0xE3940000
	.4byte 0xE39A935A
	.4byte 0xE3960000
	.4byte 0xE395E397
	.4byte 0xE3980000
	.4byte 0xE3990000
	.4byte 0
	.4byte 0x0000E39B
	.4byte 0xE39C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055A3F8
lbl_8055A3F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8ACA0000
	.4byte 0xE39D0000
	.4byte 0xE39E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E39F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3A0E3A1
	.4byte 0xE3A20000
	.4byte 0xE3A3E3A4
	.4byte 0
	.4byte 0xE3A6E3A5
	.4byte 0
	.4byte 0xE3A70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E3A8
	.4byte 0xE3A90000
	.4byte 0
	.4byte 0
	.4byte 0x0000E3AC
	.4byte 0xE3AAE3AB
	.4byte 0x8DDF8C72
	.4byte 0
	.4byte 0x92750000
	.4byte 0x94B10000
	.4byte 0x8F900000
	.4byte 0x0000946C
	.4byte 0x000094EB
	.4byte 0xE3AD9CEB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3AEE3B0
	.4byte 0x00009785
	.4byte 0xE3AFE3B2
	.4byte 0xE3B10000
	.4byte 0x97720000
	.4byte 0xE3B30000
	.4byte 0x94FC0000
	.4byte 0
	.4byte 0
	.4byte 0xE3B40000
	.4byte 0
	.4byte 0
	.4byte 0xE3B70000
	.4byte 0x0000E3B6
	.4byte 0xE3B50000
	.4byte 0
	.4byte 0x0000E3B8
	.4byte 0x8C510000
	.4byte 0
	.4byte 0x91418B60
	.4byte 0
	.4byte 0
	.4byte 0xE3BCE3B9
	.4byte 0
	.4byte 0xE3BA0000
	.4byte 0
	.4byte 0xE3BD0000
	.4byte 0xE3BEE3BB
	.4byte 0
	.4byte 0x00008948
	.4byte 0
	.4byte 0x000089A5
	.4byte 0
	.4byte 0x0000E3C0
	.4byte 0xE3C10000
	.4byte 0
	.4byte 0xE3C20000
	.4byte 0x97820000
	.4byte 0
	.4byte 0
	.4byte 0x8F4B0000
	.4byte 0xE3C4E3C3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9089E3C5
	.4byte 0
	.4byte 0
	.4byte 0xE3C60000
	.4byte 0x0000E3C7
	.4byte 0x00008AE3
	.4byte 0
	.4byte 0
	.4byte 0x8ACB0000
	.4byte 0x0000E3C8
	.4byte 0
	.4byte 0
	.4byte 0x0000E3C9
	.4byte 0x0000967C
	.4byte 0x97830000
	.4byte 0

.global lbl_8055A5F8
lbl_8055A5F8:
	.4byte 0x97739856
	.4byte 0x00008D6C
	.4byte 0xE3CC8ED2
	.4byte 0xE3CB0000
	.4byte 0
	.4byte 0x0000E3CD
	.4byte 0x8EA70000
	.4byte 0
	.4byte 0x91CF0000
	.4byte 0xE3CE0000
	.4byte 0x00008D6B
	.4byte 0x000096D5
	.4byte 0xE3CFE3D0
	.4byte 0
	.4byte 0xE3D10000
	.4byte 0
	.4byte 0x0000E3D2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3D30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008EA8
	.4byte 0
	.4byte 0x96EB0000
	.4byte 0
	.4byte 0x0000E3D5
	.4byte 0x0000925E
	.4byte 0x0000E3D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3D70000
	.4byte 0
	.4byte 0xE3D60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3D80000
	.4byte 0
	.4byte 0x90B90000
	.4byte 0xE3D90000
	.4byte 0xE3DA0000
	.4byte 0
	.4byte 0x95B7E3DB
	.4byte 0x0000918F
	.4byte 0xE3DC0000
	.4byte 0
	.4byte 0
	.4byte 0xE3DD0000
	.4byte 0
	.4byte 0
	.4byte 0x000097FC
	.4byte 0xE3E00000
	.4byte 0xE3DFE3DE
	.4byte 0x92AE0000
	.4byte 0xE3E19045
	.4byte 0x0000E3E2
	.4byte 0
	.4byte 0x0000E3E3
	.4byte 0x9857E3E4
	.4byte 0
	.4byte 0
	.4byte 0xE3E5E3E7
	.4byte 0xE3E694A3
	.4byte 0x000093F7
	.4byte 0x0000985D
	.4byte 0x94A70000
	.4byte 0
	.4byte 0
	.4byte 0x0000E3E9
	.4byte 0
	.4byte 0x8FD10000
	.4byte 0x95490000
	.4byte 0xE3EAE3E8
	.4byte 0x00008ACC
	.4byte 0
	.4byte 0x00008CD2
	.4byte 0x8E880000
	.4byte 0x000094EC
	.4byte 0
	.4byte 0x00008CA8
	.4byte 0x96620000
	.4byte 0xE3EDE3EB
	.4byte 0x00008D6D
	.4byte 0x00008D6E
	.4byte 0x88E70000
	.4byte 0x8DE60000
	.4byte 0
	.4byte 0
	.4byte 0x94780000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088DD
	.4byte 0xE3F20000
	.4byte 0x925F0000
	.4byte 0
	.4byte 0
	.4byte 0x94770000
	.4byte 0x91D90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE3F40000
	.4byte 0x0000E3F0
	.4byte 0xE3F3E3EE
	.4byte 0x0000E3F1
	.4byte 0x96450000
	.4byte 0x00008CD3
	.4byte 0
	.4byte 0x88FBE3EF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E3F6
	.4byte 0x0000E3F7
	.4byte 0
	.4byte 0x93B70000
	.4byte 0
	.4byte 0x8BB90000
	.4byte 0
	.4byte 0xE445945C
	.4byte 0

.global lbl_8055A7F8
lbl_8055A7F8:
	.4byte 0
	.4byte 0x8E890000
	.4byte 0x00008BBA
	.4byte 0x90C69865
	.4byte 0x96ACE3F5
	.4byte 0x90D20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B72E3F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E3FA
	.4byte 0
	.4byte 0
	.4byte 0x0000E3F9
	.4byte 0
	.4byte 0
	.4byte 0x0000E3FB
	.4byte 0x00009245
	.4byte 0x0000945D
	.4byte 0
	.4byte 0
	.4byte 0x000092AF
	.4byte 0
	.4byte 0
	.4byte 0xE4420000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4410000
	.4byte 0
	.4byte 0x0000E3FC
	.4byte 0
	.4byte 0x90740000
	.4byte 0x9585E444
	.4byte 0x0000E443
	.4byte 0x8D6F9872
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E454
	.4byte 0
	.4byte 0
	.4byte 0x0000E448
	.4byte 0xE4490000
	.4byte 0
	.4byte 0x00008EEE
	.4byte 0
	.4byte 0xE4470000
	.4byte 0x8D98E446
	.4byte 0
	.4byte 0xE44A0000
	.4byte 0
	.4byte 0x92B095A0
	.4byte 0x91420000
	.4byte 0
	.4byte 0x000091DA
	.4byte 0xE44E0000
	.4byte 0xE44FE44B
	.4byte 0
	.4byte 0
	.4byte 0xE44C0000
	.4byte 0xE44D0000
	.4byte 0
	.4byte 0x00008D70
	.4byte 0
	.4byte 0x0000E455
	.4byte 0x0000E451
	.4byte 0
	.4byte 0
	.4byte 0x95860000
	.4byte 0x968C9547
	.4byte 0
	.4byte 0xE4500000
	.4byte 0x0000E453
	.4byte 0xE4520000
	.4byte 0
	.4byte 0x9663E456
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4570000
	.4byte 0x00009156
	.4byte 0x0000E458
	.4byte 0
	.4byte 0xE45A0000
	.4byte 0xE45E0000
	.4byte 0x0000E45B
	.4byte 0xE459945E
	.4byte 0xE45C0000
	.4byte 0xE45D0000
	.4byte 0
	.4byte 0x89B00000
	.4byte 0xE464E45F
	.4byte 0
	.4byte 0x0000E460
	.4byte 0
	.4byte 0x0000E461
	.4byte 0x0000919F
	.4byte 0
	.4byte 0
	.4byte 0xE463E462
	.4byte 0xE4650000
	.4byte 0
	.4byte 0x0000E466
	.4byte 0xE4670000
	.4byte 0x00009062
	.4byte 0x000089E7
	.4byte 0x0000E468
	.4byte 0x97D50000
	.4byte 0x8EA90000
	.4byte 0x00008F4C
	.4byte 0
	.4byte 0
	.4byte 0x00008E8A
	.4byte 0x92760000
	.4byte 0
	.4byte 0
	.4byte 0xE469E46A
	.4byte 0x89500000
	.4byte 0xE46B0000

.global lbl_8055A9F8
lbl_8055A9F8:
	.4byte 0x0000E46C
	.4byte 0xE46D0000
	.4byte 0x0000E46E
	.4byte 0x0000E46F
	.4byte 0x8BBB9DA8
	.4byte 0xE4700000
	.4byte 0x90E3E471
	.4byte 0x8EC90000
	.4byte 0xE4720000
	.4byte 0x98AE0000
	.4byte 0
	.4byte 0xE47395DC
	.4byte 0x8ADA0000
	.4byte 0x00009143
	.4byte 0x8F770000
	.4byte 0x95918F4D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E474
	.4byte 0x8D71E475
	.4byte 0x94CA0000
	.4byte 0xE4840000
	.4byte 0
	.4byte 0x0000E477
	.4byte 0x000091C7
	.4byte 0x94958CBD
	.4byte 0xE4769144
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4780000
	.4byte 0
	.4byte 0
	.4byte 0x000092F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE47AE479
	.4byte 0xE47C0000
	.4byte 0x0000E47B
	.4byte 0x0000E47D
	.4byte 0
	.4byte 0xE4800000
	.4byte 0xE47E0000
	.4byte 0x8ACD0000
	.4byte 0xE4810000
	.4byte 0xE482E483
	.4byte 0
	.4byte 0x8DAF97C7
	.4byte 0x0000E485
	.4byte 0x90460000
	.4byte 0
	.4byte 0x8990E486
	.4byte 0xE4870000
	.4byte 0
	.4byte 0
	.4byte 0xE4880000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088F0
	.4byte 0x0000E489
	.4byte 0
	.4byte 0
	.4byte 0xE48A0000
	.4byte 0
	.4byte 0
	.4byte 0x00009587
	.4byte 0
	.4byte 0x00008EC5
	.4byte 0x0000E48C
	.4byte 0
	.4byte 0
	.4byte 0x00008A48
	.4byte 0x88B00000
	.4byte 0
	.4byte 0x0000E48B
	.4byte 0xE48E946D
	.4byte 0x00009063
	.4byte 0x000089D4
	.4byte 0x00009646
	.4byte 0
	.4byte 0
	.4byte 0x8C7C8BDA
	.4byte 0x0000E48D
	.4byte 0x000089E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AA1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008991
	.4byte 0xE49297E8
	.4byte 0x91DB0000
	.4byte 0x00009563
	.4byte 0x0000E49E
	.4byte 0x000089D5
	.4byte 0xE49C0000
	.4byte 0xE49AE491
	.4byte 0x0000E48F
	.4byte 0x0000E490
	.4byte 0x00008EE1
	.4byte 0x8BEA9297
	.4byte 0
	.4byte 0x000093CF
	.4byte 0
	.4byte 0
	.4byte 0x00008970
	.4byte 0x0000E494
	.4byte 0xE4930000
	.4byte 0
	.4byte 0x0000E499
	.4byte 0xE495E498
	.4byte 0
	.4byte 0

.global lbl_8055ABF8
lbl_8055ABF8:
	.4byte 0
	.4byte 0x96CEE497
	.4byte 0x89D68A9D
	.4byte 0xE49B0000
	.4byte 0x0000E49D
	.4byte 0
	.4byte 0
	.4byte 0x8C730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4A1E4AA
	.4byte 0xE4AB0000
	.4byte 0
	.4byte 0x88A90000
	.4byte 0
	.4byte 0
	.4byte 0x0000E4B2
	.4byte 0
	.4byte 0
	.4byte 0x88EF0000
	.4byte 0x0000E4A9
	.4byte 0
	.4byte 0x0000E4A8
	.4byte 0x0000E4A3
	.4byte 0xE4A20000
	.4byte 0xE4A0E49F
	.4byte 0x92830000
	.4byte 0x91F9E4A5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4A40000
	.4byte 0
	.4byte 0x0000E4A7
	.4byte 0
	.4byte 0x00009190
	.4byte 0x8C740000
	.4byte 0
	.4byte 0x00008960
	.4byte 0xE4A60000
	.4byte 0x8D720000
	.4byte 0
	.4byte 0
	.4byte 0x91910000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4B8
	.4byte 0x0000E4B9
	.4byte 0x000089D7
	.4byte 0
	.4byte 0x000089AC
	.4byte 0xE4B60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4AC
	.4byte 0x0000E4B4
	.4byte 0x0000E4BB
	.4byte 0xE4B50000
	.4byte 0
	.4byte 0xE4B30000
	.4byte 0
	.4byte 0x0000E496
	.4byte 0
	.4byte 0xE4B10000
	.4byte 0
	.4byte 0xE4AD0000
	.4byte 0
	.4byte 0x8ACEE4AF
	.4byte 0xE4BA0000
	.4byte 0xE4B00000
	.4byte 0
	.4byte 0
	.4byte 0xE4BC0000
	.4byte 0xE4AE949C
	.4byte 0
	.4byte 0
	.4byte 0x00009789
	.4byte 0
	.4byte 0x0000E4B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4CD
	.4byte 0
	.4byte 0x0000E4C5
	.4byte 0
	.4byte 0x0000909B
	.4byte 0
	.4byte 0
	.4byte 0x8B650000
	.4byte 0x8BDB0000
	.4byte 0xE4C00000
	.4byte 0
	.4byte 0x000089D9
	.4byte 0
	.4byte 0x8FD20000
	.4byte 0xE4C30000
	.4byte 0
	.4byte 0x8DD80000
	.4byte 0x00009370
	.4byte 0xE4C80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095EC
	.4byte 0x0000E4BF
	.4byte 0
	.4byte 0x000089D8
	.4byte 0x8CD49548
	.4byte 0xE4C90000
	.4byte 0xE4BD0000
	.4byte 0x0000E4C6
	.4byte 0
	.4byte 0x0000E4D0
	.4byte 0x0000E4C1
	.4byte 0

.global lbl_8055ADF8
lbl_8055ADF8:
	.4byte 0
	.4byte 0x0000E4C2
	.4byte 0x93B80000
	.4byte 0x0000E4C7
	.4byte 0
	.4byte 0x0000E4C4
	.4byte 0x9647E4CA
	.4byte 0x88DE0000
	.4byte 0
	.4byte 0x0000E4BE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4CC0000
	.4byte 0xE4CB0000
	.4byte 0
	.4byte 0
	.4byte 0x0000948B
	.4byte 0xE4D20000
	.4byte 0xE4DD0000
	.4byte 0
	.4byte 0x00008A9E
	.4byte 0
	.4byte 0x0000E4E0
	.4byte 0
	.4byte 0xE4CE0000
	.4byte 0
	.4byte 0xE4D3978E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4DC0000
	.4byte 0x00009774
	.4byte 0
	.4byte 0
	.4byte 0x97A80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009298
	.4byte 0
	.4byte 0x00008A8B
	.4byte 0
	.4byte 0
	.4byte 0x00009592
	.4byte 0xE4E2939F
	.4byte 0
	.4byte 0x88AF0000
	.4byte 0x0000E4DB
	.4byte 0x0000E4D7
	.4byte 0x9192E4D1
	.4byte 0xE4D9E4DE
	.4byte 0x0000944B
	.4byte 0
	.4byte 0x000088A8
	.4byte 0x0000E4D6
	.4byte 0x0000E4DF
	.4byte 0x95980000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4DA0000
	.4byte 0xE4D50000
	.4byte 0
	.4byte 0
	.4byte 0x00008FD3
	.4byte 0
	.4byte 0
	.4byte 0x8F4E0000
	.4byte 0
	.4byte 0x8EAA0000
	.4byte 0
	.4byte 0x000096D6
	.4byte 0
	.4byte 0x95660000
	.4byte 0x0000E4E5
	.4byte 0x0000E4EE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4D8
	.4byte 0
	.4byte 0
	.4byte 0x8A970000
	.4byte 0
	.4byte 0
	.4byte 0x8FF6E4E3
	.4byte 0x0000E4E8
	.4byte 0x91930000
	.4byte 0x0000E4E4
	.4byte 0x0000E4EB
	.4byte 0
	.4byte 0x927E0000
	.4byte 0xE4EC0000
	.4byte 0x00009775
	.4byte 0xE4E18A57
	.4byte 0x0000E4E7
	.4byte 0
	.4byte 0xE4EA96AA
	.4byte 0
	.4byte 0
	.4byte 0xE4ED0000
	.4byte 0x0000E4E6
	.4byte 0xE4E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96480000
	.4byte 0x98400000
	.4byte 0
	.4byte 0
	.4byte 0xE4F10000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE4F80000
	.4byte 0x0000E4F0

.global lbl_8055AFF8
lbl_8055AFF8:
	.4byte 0x8EC10000
	.4byte 0
	.4byte 0
	.4byte 0xE4CF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095CC
	.4byte 0x000096A0
	.4byte 0xE4F7E4F6
	.4byte 0x0000E4F2
	.4byte 0xE4F30000
	.4byte 0x89550000
	.4byte 0
	.4byte 0x0000E4F5
	.4byte 0x0000E4EF
	.4byte 0
	.4byte 0
	.4byte 0x92D30000
	.4byte 0
	.4byte 0
	.4byte 0xE4F488FC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095C1
	.4byte 0
	.4byte 0xE4F9E540
	.4byte 0x000094D7
	.4byte 0
	.4byte 0
	.4byte 0xE4FC8FD4
	.4byte 0x8EC7E542
	.4byte 0
	.4byte 0x8BBC0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E543
	.4byte 0x00009599
	.4byte 0xE4FB0000
	.4byte 0xE4D40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E4FA
	.4byte 0
	.4byte 0
	.4byte 0x986E93A0
	.4byte 0x95930000
	.4byte 0x0000E54A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E550
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5510000
	.4byte 0xE5440000
	.4byte 0
	.4byte 0x94960000
	.4byte 0x0000E54E
	.4byte 0xE5460000
	.4byte 0xE5480000
	.4byte 0
	.4byte 0
	.4byte 0xE552E547
	.4byte 0
	.4byte 0xE54B0000
	.4byte 0x00008992
	.4byte 0x000093E3
	.4byte 0x0000E54C
	.4byte 0xE54F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5450000
	.4byte 0x91450000
	.4byte 0xE5498E46
	.4byte 0x90648C4F
	.4byte 0x96F20000
	.4byte 0x96F78F92
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E556
	.4byte 0xE5540000
	.4byte 0
	.4byte 0
	.4byte 0x0000986D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E553
	.4byte 0
	.4byte 0x00009795
	.4byte 0x0000E555
	.4byte 0xE5570000
	.4byte 0
	.4byte 0x0000E558
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE55BE559
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x93A1E55A
	.4byte 0
	.4byte 0x000094CB
	.4byte 0xE54D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008F93
	.4byte 0x0000E55C
	.4byte 0xE5619194
	.4byte 0
	.4byte 0xE5600000

.global lbl_8055B1F8
lbl_8055B1F8:
	.4byte 0
	.4byte 0xE5410000
	.4byte 0
	.4byte 0xE5629168
	.4byte 0
	.4byte 0xE55DE55F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E55E
	.4byte 0
	.4byte 0x9F509F41
	.4byte 0
	.4byte 0xE5640000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5630000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009796
	.4byte 0x0000E1BA
	.4byte 0xE5650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E566
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E567
	.4byte 0x8CD50000
	.4byte 0x8B730000
	.4byte 0
	.4byte 0xE569997C
	.4byte 0
	.4byte 0
	.4byte 0x8B950000
	.4byte 0x97B80000
	.4byte 0x8BF1E56A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E56B
	.4byte 0
	.4byte 0x0000928E
	.4byte 0
	.4byte 0
	.4byte 0x0000E56C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093F8
	.4byte 0x000088B8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89E1E571
	.4byte 0xE5720000
	.4byte 0
	.4byte 0
	.4byte 0x0000E56D
	.4byte 0x00008E5C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E56E
	.4byte 0x94610000
	.4byte 0
	.4byte 0x0000E56F
	.4byte 0xE570E57A
	.4byte 0
	.4byte 0x0000E574
	.4byte 0xE5770000
	.4byte 0
	.4byte 0
	.4byte 0xE5730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5750000
	.4byte 0xE5768ED6
	.4byte 0x0000E578
	.4byte 0x00009260
	.4byte 0x00008C75
	.4byte 0x8A610000
	.4byte 0
	.4byte 0
	.4byte 0xE57B0000
	.4byte 0
	.4byte 0x00008A5E
	.4byte 0x0000E581
	.4byte 0
	.4byte 0xE57CE580
	.4byte 0
	.4byte 0
	.4byte 0x94B80000
	.4byte 0
	.4byte 0x0000E57D
	.4byte 0
	.4byte 0xE57E9567
	.4byte 0x94D8E582
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91FBE58C
	.4byte 0x0000E588
	.4byte 0
	.4byte 0x89E90000

.global lbl_8055B3F8
lbl_8055B3F8:
	.4byte 0xE5860000
	.4byte 0x9649E587
	.4byte 0
	.4byte 0xE5840000
	.4byte 0xE585E58A
	.4byte 0xE58D0000
	.4byte 0x0000E58B
	.4byte 0
	.4byte 0x0000E589
	.4byte 0xE5830000
	.4byte 0
	.4byte 0
	.4byte 0x92770000
	.4byte 0xE5940000
	.4byte 0x96A80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E592
	.4byte 0
	.4byte 0x0000E593
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE58E0000
	.4byte 0x0000E590
	.4byte 0
	.4byte 0x0000E591
	.4byte 0
	.4byte 0x0000E58F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000090E4
	.4byte 0x00009858
	.4byte 0xE5980000
	.4byte 0xE5990000
	.4byte 0
	.4byte 0x0000E59F
	.4byte 0x00009049
	.4byte 0x0000E59B
	.4byte 0x0000E59E
	.4byte 0
	.4byte 0
	.4byte 0x0000E596
	.4byte 0xE5950000
	.4byte 0x0000E5A0
	.4byte 0
	.4byte 0x89DA0000
	.4byte 0xE59C0000
	.4byte 0xE5A10000
	.4byte 0
	.4byte 0xE59D0000
	.4byte 0
	.4byte 0
	.4byte 0xE59A0000
	.4byte 0x92B10000
	.4byte 0xE5970000
	.4byte 0
	.4byte 0
	.4byte 0x00009488
	.4byte 0
	.4byte 0xE5A50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000975A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5A4
	.4byte 0
	.4byte 0xE5A30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5AC
	.4byte 0
	.4byte 0x0000E5A6
	.4byte 0
	.4byte 0x0000E5AE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9786E5B1
	.4byte 0x0000E5A8
	.4byte 0
	.4byte 0xE5A90000
	.4byte 0
	.4byte 0xE5AD0000
	.4byte 0xE5B0E5AF
	.4byte 0
	.4byte 0x0000E5A7
	.4byte 0
	.4byte 0
	.4byte 0xE5AA0000
	.4byte 0xE5BB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5B40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5B2
	.4byte 0
	.4byte 0xE5B30000
	.4byte 0
	.4byte 0xE5B8E5B9
	.4byte 0x00008A49
	.4byte 0x00008B61
	.4byte 0
	.4byte 0xE5B70000

.global lbl_8055B5F8
lbl_8055B5F8:
	.4byte 0
	.4byte 0
	.4byte 0x0000E5A2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5B6
	.4byte 0xE5BAE5B5
	.4byte 0x0000E5BC
	.4byte 0
	.4byte 0x0000E5BE
	.4byte 0xE5BD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5C0
	.4byte 0xE5BFE579
	.4byte 0
	.4byte 0x0000E5C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5C1
	.4byte 0
	.4byte 0
	.4byte 0xE5C20000
	.4byte 0x0000E5C3
	.4byte 0x0000E5C5
	.4byte 0
	.4byte 0
	.4byte 0x8C8C0000
	.4byte 0xE5C70000
	.4byte 0xE5C60000
	.4byte 0x8F4F0000
	.4byte 0
	.4byte 0
	.4byte 0x8D739FA5
	.4byte 0
	.4byte 0
	.4byte 0xE5C88F70
	.4byte 0
	.4byte 0x00008A58
	.4byte 0x0000E5C9
	.4byte 0x00008971
	.4byte 0x00008FD5
	.4byte 0xE5CA0000
	.4byte 0x00008D74
	.4byte 0xE5CB88DF
	.4byte 0
	.4byte 0
	.4byte 0x955C0000
	.4byte 0x0000E5CC
	.4byte 0
	.4byte 0
	.4byte 0x908A0000
	.4byte 0xE5D30000
	.4byte 0x0000E5D0
	.4byte 0x0000928F
	.4byte 0
	.4byte 0
	.4byte 0x0000E5D1
	.4byte 0xE5CE8BDC
	.4byte 0x0000E5CD
	.4byte 0xE5D40000
	.4byte 0
	.4byte 0
	.4byte 0x8C550000
	.4byte 0x000091DC
	.4byte 0x0000E5DA
	.4byte 0
	.4byte 0
	.4byte 0xE5D60000
	.4byte 0
	.4byte 0x91B3E5D5
	.4byte 0x0000E5D8
	.4byte 0
	.4byte 0
	.4byte 0xE5CF0000
	.4byte 0
	.4byte 0xE5D90000
	.4byte 0xE5DB0000
	.4byte 0
	.4byte 0
	.4byte 0x000094ED
	.4byte 0
	.4byte 0xE5D70000
	.4byte 0xE5DCE5DE
	.4byte 0
	.4byte 0x8CD1E5D2
	.4byte 0x000088BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5DD
	.4byte 0x00008DD9
	.4byte 0x97F4E5DF
	.4byte 0xE5E09195
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097A0
	.4byte 0
	.4byte 0
	.4byte 0xE5E19754
	.4byte 0
	.4byte 0xE5E2E5E3
	.4byte 0
	.4byte 0x95E2E5E4
	.4byte 0x00008DBE
	.4byte 0x000097A1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5EA8FD6
	.4byte 0xE5E80000
	.4byte 0
	.4byte 0x9787E5E5
	.4byte 0
	.4byte 0xE5E790BB
	.4byte 0x909E0000

.global lbl_8055B7F8
lbl_8055B7F8:
	.4byte 0
	.4byte 0xE5E60000
	.4byte 0xE5EB0000
	.4byte 0x000095A1
	.4byte 0
	.4byte 0xE5ED0000
	.4byte 0xE5EC0000
	.4byte 0
	.4byte 0x8A8C0000
	.4byte 0x964AE5EE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E5FA
	.4byte 0xE5F00000
	.4byte 0
	.4byte 0
	.4byte 0x0000E5F1
	.4byte 0
	.4byte 0
	.4byte 0xE5F2E5F3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5F70000
	.4byte 0xE5F80000
	.4byte 0x0000E5F6
	.4byte 0
	.4byte 0
	.4byte 0x0000E5F4
	.4byte 0x0000E5EF
	.4byte 0xE5F50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5F9E8B5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x89A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE5FC8BDD
	.4byte 0xE5FB0000
	.4byte 0
	.4byte 0xE6410000
	.4byte 0xE6400000
	.4byte 0
	.4byte 0xE6430000
	.4byte 0x0000E642
	.4byte 0x0000E644
	.4byte 0
	.4byte 0x8F500000
	.4byte 0xE6450000
	.4byte 0x0000E646
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE64790BC
	.4byte 0x00009776
	.4byte 0x0000E648
	.4byte 0
	.4byte 0x95A29465
	.4byte 0xE6490000
	.4byte 0xE64A8CA9
	.4byte 0
	.4byte 0x00008B4B
	.4byte 0
	.4byte 0x0000E64B
	.4byte 0
	.4byte 0x8E8B9460
	.4byte 0xE64C0000
	.4byte 0x8A6F0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E64D
	.4byte 0
	.4byte 0
	.4byte 0xE64F9797
	.4byte 0x0000E64E
	.4byte 0x90650000
	.4byte 0xE6500000
	.4byte 0x0000E651
	.4byte 0
	.4byte 0xE6528ACF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6530000
	.4byte 0x0000E654
	.4byte 0x0000E655
	.4byte 0xE6560000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6570000
	.4byte 0xE658E659
	.4byte 0
	.4byte 0
	.4byte 0x000089F0
	.4byte 0
	.4byte 0x9047E65A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE65B0000
	.4byte 0
	.4byte 0xE65C0000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055B9F8
lbl_8055B9F8:
	.4byte 0x8CBE0000
	.4byte 0x92F9E65D
	.4byte 0
	.4byte 0
	.4byte 0x8C760000
	.4byte 0x90750000
	.4byte 0xE6600000
	.4byte 0x93A20000
	.4byte 0xE65F0000
	.4byte 0x00008C50
	.4byte 0
	.4byte 0xE65E91F5
	.4byte 0x8B4C0000
	.4byte 0x0000E661
	.4byte 0x0000E662
	.4byte 0x00008FD7
	.4byte 0
	.4byte 0x00008C8D
	.4byte 0x0000E663
	.4byte 0
	.4byte 0
	.4byte 0x964B0000
	.4byte 0x000090DD
	.4byte 0
	.4byte 0x00008B96
	.4byte 0x000096F3
	.4byte 0x91690000
	.4byte 0xE6640000
	.4byte 0
	.4byte 0x90669290
	.4byte 0x8FD80000
	.4byte 0
	.4byte 0x0000E665
	.4byte 0
	.4byte 0
	.4byte 0xE6680000
	.4byte 0xE6690000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8DBC91C0
	.4byte 0xE6670000
	.4byte 0x8FD9955D
	.4byte 0
	.4byte 0
	.4byte 0x0000E666
	.4byte 0
	.4byte 0x8E8C0000
	.4byte 0x89720000
	.4byte 0xE66D8C77
	.4byte 0
	.4byte 0x8E8E0000
	.4byte 0x00008E8D
	.4byte 0x0000986C
	.4byte 0xE66CE66B
	.4byte 0x91460000
	.4byte 0x8B6C9862
	.4byte 0x8A598FDA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE66A0000
	.4byte 0
	.4byte 0
	.4byte 0xE66F0000
	.4byte 0xE670E66E
	.4byte 0x00008CD6
	.4byte 0x0000975F
	.4byte 0
	.4byte 0x8E8F9446
	.4byte 0
	.4byte 0x0000E673
	.4byte 0x000090BE
	.4byte 0x00009261
	.4byte 0
	.4byte 0x97550000
	.4byte 0xE6760000
	.4byte 0
	.4byte 0x8CEA0000
	.4byte 0x90BDE672
	.4byte 0x0000E677
	.4byte 0x8CEBE674
	.4byte 0xE6750000
	.4byte 0xE6710000
	.4byte 0
	.4byte 0x90E093C7
	.4byte 0
	.4byte 0x924E0000
	.4byte 0x89DB0000
	.4byte 0
	.4byte 0
	.4byte 0x000094EE
	.4byte 0
	.4byte 0x8B620000
	.4byte 0x000092B2
	.4byte 0
	.4byte 0xE67A0000
	.4byte 0xE6780000
	.4byte 0x0000926B
	.4byte 0
	.4byte 0x000090BF
	.4byte 0x8AD0E679
	.4byte 0x0000907A
	.4byte 0
	.4byte 0x97C80000
	.4byte 0
	.4byte 0x985F0000
	.4byte 0
	.4byte 0xE67BE687
	.4byte 0x92B30000
	.4byte 0xE6860000
	.4byte 0xE683E68B
	.4byte 0xE6840000
	.4byte 0xE6800000
	.4byte 0x92FAE67E
	.4byte 0
	.4byte 0x0000E67C
	.4byte 0x00009740
	.4byte 0x8E900000
	.4byte 0x0000E681
	.4byte 0x0000E67D
	.4byte 0
	.4byte 0x0000E685
	.4byte 0x8F940000
	.4byte 0x8CBF0000
	.4byte 0
	.4byte 0x91F80000

.global lbl_8055BBF8
lbl_8055BBF8:
	.4byte 0x96648979
	.4byte 0x88E00000
	.4byte 0x93A30000
	.4byte 0x0000E689
	.4byte 0
	.4byte 0
	.4byte 0xE6880000
	.4byte 0x93E40000
	.4byte 0xE68D0000
	.4byte 0
	.4byte 0xE6820000
	.4byte 0xE68CE68E
	.4byte 0x00008CAA
	.4byte 0xE68A8D75
	.4byte 0x00008ED3
	.4byte 0
	.4byte 0xE68F9777
	.4byte 0
	.4byte 0
	.4byte 0xE6920000
	.4byte 0xE6950000
	.4byte 0x0000E693
	.4byte 0x95540000
	.4byte 0
	.4byte 0
	.4byte 0x0000E690
	.4byte 0
	.4byte 0
	.4byte 0x00008BDE
	.4byte 0
	.4byte 0
	.4byte 0xE6940000
	.4byte 0x0000E696
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E69A
	.4byte 0
	.4byte 0xE6970000
	.4byte 0xE699E698
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE69B0000
	.4byte 0x8EAF0000
	.4byte 0xE69DE69C
	.4byte 0x95880000
	.4byte 0x0000E69F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C780000
	.4byte 0
	.4byte 0x0000E69E
	.4byte 0xE6A00000
	.4byte 0x0000E6A1
	.4byte 0x8B63E3BF
	.4byte 0x8FF70000
	.4byte 0xE6A20000
	.4byte 0x00008CEC
	.4byte 0
	.4byte 0
	.4byte 0x0000E6A3
	.4byte 0
	.4byte 0xE6A40000
	.4byte 0x00008E5D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9DCC0000
	.4byte 0xE6A50000
	.4byte 0xE6A60000
	.4byte 0x8F510000
	.4byte 0xE6A7E6A8
	.4byte 0
	.4byte 0xE6A90000
	.4byte 0x0000E6AA
	.4byte 0xE6AB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055BDF8
lbl_8055BDF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000924A
	.4byte 0
	.4byte 0xE6AC0000
	.4byte 0
	.4byte 0x0000E6AE
	.4byte 0x0000E6AD
	.4byte 0
	.4byte 0
	.4byte 0x93A40000
	.4byte 0xE6AF0000
	.4byte 0x964C0000
	.4byte 0xE6B00000
	.4byte 0xE6B10000
	.4byte 0xE6B20000
	.4byte 0
	.4byte 0x0000E6B3
	.4byte 0
	.4byte 0
	.4byte 0x93D80000
	.4byte 0
	.4byte 0
	.4byte 0x00008FDB
	.4byte 0xE6B40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8D8B98AC
	.4byte 0xE6B50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6B6955E
	.4byte 0xE6B70000
	.4byte 0xE6BF0000
	.4byte 0
	.4byte 0
	.4byte 0xE6B80000
	.4byte 0x0000E6BA
	.4byte 0
	.4byte 0x0000E6B9
	.4byte 0xE6BB0000
	.4byte 0x9665E6BC
	.4byte 0xE6BD0000
	.4byte 0
	.4byte 0
	.4byte 0xE6BE0000
	.4byte 0
	.4byte 0xE6C00000
	.4byte 0
	.4byte 0x00008A4C
	.4byte 0x92E50000
	.4byte 0x95898DE0
	.4byte 0x8D760000
	.4byte 0
	.4byte 0x0000956E
	.4byte 0x89DD94CC
	.4byte 0xE6C38AD1
	.4byte 0x90D3E6C2
	.4byte 0xE6C79299
	.4byte 0x96E10000
	.4byte 0xE6C5E6C6
	.4byte 0x8B4D0000
	.4byte 0xE6C89483
	.4byte 0x91DD0000
	.4byte 0x000094EF
	.4byte 0x935CE6C4
	.4byte 0x00009666
	.4byte 0x89EAE6CA
	.4byte 0x984792C0
	.4byte 0x98640000
	.4byte 0x00008E91
	.4byte 0xE6C90000
	.4byte 0x91AF0000
	.4byte 0x0000E6DA
	.4byte 0x91470000
	.4byte 0x000093F6
	.4byte 0x0000956F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6CD8E5E
	.4byte 0x8E920000
	.4byte 0x8FDC0000
	.4byte 0x94850000
	.4byte 0x8CABE6CC
	.4byte 0xE6CB0000
	.4byte 0x958A0000
	.4byte 0
	.4byte 0x8EBF0000
	.4byte 0x00009371
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6CFE6D0
	.4byte 0x8D77E6CE
	.4byte 0

.global lbl_8055BFF8
lbl_8055BFF8:
	.4byte 0
	.4byte 0
	.4byte 0xE6D1E6D2
	.4byte 0x0000E6D4
	.4byte 0x91A10000
	.4byte 0xE6D38AE4
	.4byte 0x0000E6D6
	.4byte 0x0000E6D5
	.4byte 0xE6D70000
	.4byte 0x0000E6D9
	.4byte 0xE6DB0000
	.4byte 0xE6DC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90D40000
	.4byte 0x8ECDE6DD
	.4byte 0
	.4byte 0x00008A71
	.4byte 0x0000E6DE
	.4byte 0
	.4byte 0x9196E6DF
	.4byte 0x0000E6E0
	.4byte 0x958B0000
	.4byte 0x00008B4E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6E1
	.4byte 0
	.4byte 0x000092B4
	.4byte 0
	.4byte 0
	.4byte 0x897A0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6E2
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008EEF
	.4byte 0
	.4byte 0
	.4byte 0x90960000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000091AB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6E50000
	.4byte 0
	.4byte 0xE6E40000
	.4byte 0
	.4byte 0xE6E30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6EB
	.4byte 0xE6E90000
	.4byte 0x0000E6E6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6E80000
	.4byte 0
	.4byte 0xE6E7E6EA
	.4byte 0x00008B97
	.4byte 0x0000E6EE
	.4byte 0x000090D5
	.4byte 0x0000E6EF
	.4byte 0
	.4byte 0
	.4byte 0x8CD70000
	.4byte 0xE6ECE6ED
	.4byte 0
	.4byte 0x00009848
	.4byte 0
	.4byte 0x000092B5
	.4byte 0x00009148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6F00000
	.4byte 0x0000E6F3

.global lbl_8055C1F8
lbl_8055C1F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6F1E6F2
	.4byte 0x97780000
	.4byte 0
	.4byte 0x000093A5
	.4byte 0xE6F60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E6F4
	.4byte 0xE6F5E6F7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7480000
	.4byte 0
	.4byte 0
	.4byte 0xE6FA0000
	.4byte 0
	.4byte 0xE6FBE6F9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE6F80000
	.4byte 0x92FB0000
	.4byte 0x0000E740
	.4byte 0xE744E741
	.4byte 0xE6FC0000
	.4byte 0xE7420000
	.4byte 0
	.4byte 0xE7430000
	.4byte 0
	.4byte 0x0000E74A
	.4byte 0
	.4byte 0x0000E745
	.4byte 0
	.4byte 0
	.4byte 0x000090D6
	.4byte 0xE7470000
	.4byte 0x0000E749
	.4byte 0xE7460000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE74C0000
	.4byte 0x8F520000
	.4byte 0xE74B0000
	.4byte 0
	.4byte 0
	.4byte 0xE74D0000
	.4byte 0
	.4byte 0x0000E74E
	.4byte 0
	.4byte 0xE751E750
	.4byte 0x0000E74F
	.4byte 0
	.4byte 0xE753E752
	.4byte 0x000096F4
	.4byte 0
	.4byte 0x0000E755
	.4byte 0x0000E754
	.4byte 0xE7560000
	.4byte 0
	.4byte 0x0000E757
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E759
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7589067
	.4byte 0xE75A0000
	.4byte 0x00008BEB
	.4byte 0xE75BE75D
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE75E0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E75F
	.4byte 0xE75C0000
	.4byte 0xE7600000
	.4byte 0x8ED4E761
	.4byte 0x8B4F8C52
	.4byte 0
	.4byte 0
	.4byte 0x8CAC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E762
	.4byte 0
	.4byte 0x000093EE
	.4byte 0
	.4byte 0x935DE763
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E766
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EB20000
	.4byte 0x0000E765
	.4byte 0xE7648C79
	.4byte 0xE7670000

.global lbl_8055C3F8
lbl_8055C3F8:
	.4byte 0
	.4byte 0x00008A72
	.4byte 0x0000E769
	.4byte 0
	.4byte 0x00008DDA
	.4byte 0xE7680000
	.4byte 0xE7710000
	.4byte 0
	.4byte 0
	.4byte 0xE76BE76D
	.4byte 0x95E3E76A
	.4byte 0
	.4byte 0x0000E76C
	.4byte 0x0000E770
	.4byte 0xE76E8B50
	.4byte 0x0000E76F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7720000
	.4byte 0x00009479
	.4byte 0x97D60000
	.4byte 0
	.4byte 0x00008F53
	.4byte 0
	.4byte 0x0000E773
	.4byte 0
	.4byte 0
	.4byte 0x9741E775
	.4byte 0x0000E774
	.4byte 0
	.4byte 0xE7789760
	.4byte 0
	.4byte 0xE7770000
	.4byte 0x8A8DE776
	.4byte 0xE77B0000
	.4byte 0x0000E77A
	.4byte 0
	.4byte 0xE7799351
	.4byte 0xE77C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E77D
	.4byte 0
	.4byte 0
	.4byte 0xE77E0000
	.4byte 0x00008D8C
	.4byte 0x00008C44
	.4byte 0xE780E781
	.4byte 0xE7820000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009068
	.4byte 0xE7830000
	.4byte 0x8EABE784
	.4byte 0
	.4byte 0x0000E785
	.4byte 0
	.4byte 0x0000999F
	.4byte 0x999E0000
	.4byte 0
	.4byte 0x0000E786
	.4byte 0xE390E787
	.4byte 0x9243904A
	.4byte 0x945F0000
	.4byte 0
	.4byte 0x0000E788
	.4byte 0
	.4byte 0x95D392D2
	.4byte 0x8D9E0000
	.4byte 0x00009248
	.4byte 0
	.4byte 0x89490000
	.4byte 0x96989076
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C7D0000
	.4byte 0x00008BDF
	.4byte 0
	.4byte 0x95D40000
	.4byte 0
	.4byte 0
	.4byte 0xE7890000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE78B0000
	.4byte 0x0000E78A
	.4byte 0x89DE0000
	.4byte 0x000093F4
	.4byte 0xE78C9497
	.4byte 0x00009352
	.4byte 0x0000E78D
	.4byte 0x8F710000
	.4byte 0
	.4byte 0xE78F0000
	.4byte 0x000096C0
	.4byte 0xE79EE791
	.4byte 0xE7920000
	.4byte 0x000092C7
	.4byte 0

.global lbl_8055C5F8
lbl_8055C5F8:
	.4byte 0x91DE9197
	.4byte 0x000093A6
	.4byte 0x0000E790
	.4byte 0x8B740000
	.4byte 0
	.4byte 0x0000E799
	.4byte 0x0000E796
	.4byte 0xE7A393A7
	.4byte 0x9280E793
	.4byte 0x000092FC
	.4byte 0x9372E794
	.4byte 0xE7989080
	.4byte 0x00009487
	.4byte 0x92CA0000
	.4byte 0x000090C0
	.4byte 0xE79791AC
	.4byte 0x91A2E795
	.4byte 0x88A79841
	.4byte 0
	.4byte 0x0000E79A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91DF0000
	.4byte 0x00008F54
	.4byte 0x90690000
	.4byte 0x0000E79C
	.4byte 0xE79B0000
	.4byte 0x88EDE79D
	.4byte 0
	.4byte 0x954E0000
	.4byte 0xE7A50000
	.4byte 0x000093D9
	.4byte 0x908B0000
	.4byte 0x00009278
	.4byte 0x00008BF6
	.4byte 0x0000E7A4
	.4byte 0x9756895E
	.4byte 0x000095D5
	.4byte 0x89DFE79F
	.4byte 0xE7A0E7A1
	.4byte 0xE7A293B9
	.4byte 0x924288E1
	.4byte 0xE7A60000
	.4byte 0xE7A7EAA1
	.4byte 0
	.4byte 0x91BB0000
	.4byte 0xE7A80000
	.4byte 0x8993916B
	.4byte 0x00008CAD
	.4byte 0x00009779
	.4byte 0
	.4byte 0xE7A9934B
	.4byte 0
	.4byte 0x00009198
	.4byte 0x8ED5E7AA
	.4byte 0
	.4byte 0xE7AD0000
	.4byte 0x00008F85
	.4byte 0xE7AB914A
	.4byte 0x91490000
	.4byte 0x88E20000
	.4byte 0x97C9E7AF
	.4byte 0x000094F0
	.4byte 0xE7B1E7B0
	.4byte 0xE7AEE284
	.4byte 0x8AD20000
	.4byte 0x0000E78E
	.4byte 0x0000E7B3
	.4byte 0xE7B20000
	.4byte 0
	.4byte 0x0000E7B4
	.4byte 0x00009757
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093DF
	.4byte 0
	.4byte 0x964D0000
	.4byte 0xE7B50000
	.4byte 0x8ED70000
	.4byte 0
	.4byte 0x0000E7B6
	.4byte 0x0000E7B7
	.4byte 0
	.4byte 0x0000E7B8
	.4byte 0
	.4byte 0x93400000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000088E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8D780000
	.4byte 0
	.4byte 0x98590000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7BC
	.4byte 0
	.4byte 0
	.4byte 0x00008C53
	.4byte 0xE7B90000
	.4byte 0xE7BA0000
	.4byte 0
	.4byte 0x95940000
	.4byte 0
	.4byte 0x00008A73
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009758
	.4byte 0x00008BBD
	.4byte 0
	.4byte 0
	.4byte 0x00009373
	.4byte 0

.global lbl_8055C7F8
lbl_8055C7F8:
	.4byte 0
	.4byte 0xE7BD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7BE0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E7BF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009341
	.4byte 0
	.4byte 0xE7C10000
	.4byte 0xE7C00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093D1
	.4byte 0xE7C28F55
	.4byte 0x8EDE947A
	.4byte 0x92910000
	.4byte 0
	.4byte 0x8EF00000
	.4byte 0x908C0000
	.4byte 0xE7C30000
	.4byte 0xE7C40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x907CE7C5
	.4byte 0x0000E7C6
	.4byte 0
	.4byte 0x0000E7C7
	.4byte 0x978F0000
	.4byte 0x8F560000
	.4byte 0
	.4byte 0
	.4byte 0xE7C9E7C8
	.4byte 0x00008D79
	.4byte 0x00008D93
	.4byte 0x8E5F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7CC0000
	.4byte 0
	.4byte 0x00008F86
	.4byte 0x0000E7CB
	.4byte 0x0000E7CA
	.4byte 0x000091E7
	.4byte 0
	.4byte 0x8CED0000
	.4byte 0x90C10000
	.4byte 0
	.4byte 0x000094AE
	.4byte 0
	.4byte 0
	.4byte 0x8F580000
	.4byte 0
	.4byte 0
	.4byte 0xE7CD0000
	.4byte 0x8FDD0000
	.4byte 0
	.4byte 0
	.4byte 0xE7D0E7CE
	.4byte 0
	.4byte 0x0000E7CF
	.4byte 0
	.4byte 0
	.4byte 0xE7D2E7D1
	.4byte 0
	.4byte 0x8FF80000
	.4byte 0xE7D30000
	.4byte 0
	.4byte 0
	.4byte 0xE7D4E7D5
	.4byte 0
	.4byte 0
	.4byte 0x94CE8DD1
	.4byte 0x8EDFE7D6
	.4byte 0x0000E7D7
	.4byte 0x97A28F64
	.4byte 0x96EC97CA
	.4byte 0xE7D88BE0
	.4byte 0
	.4byte 0
	.4byte 0xE7D90000
	.4byte 0x93420000
	.4byte 0x0000E7DC
	.4byte 0x8A98906A
	.4byte 0x0000E7DA
	.4byte 0x0000E7DB
	.4byte 0x000092DE
	.4byte 0
	.4byte 0x96748BFA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7DE
	.4byte 0xE7DF0000
	.4byte 0
	.4byte 0
	.4byte 0xE7DD0000
	.4byte 0x0000E7E1

.global lbl_8055C9F8
lbl_8055C9F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000093DD
	.4byte 0x8A620000
	.4byte 0x0000E7E5
	.4byte 0
	.4byte 0xE7E2E7E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7E00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E86E
	.4byte 0
	.4byte 0xE7E30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x97E90000
	.4byte 0x00008CD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7ED
	.4byte 0
	.4byte 0
	.4byte 0x9353E7E8
	.4byte 0
	.4byte 0xE7EBE7E9
	.4byte 0x0000E7EE
	.4byte 0
	.4byte 0
	.4byte 0xE7EF0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E7E7
	.4byte 0
	.4byte 0xE7F48994
	.4byte 0
	.4byte 0xE7E60000
	.4byte 0
	.4byte 0x94AB0000
	.4byte 0xE7EA0000
	.4byte 0x8FDE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008D7A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96670000
	.4byte 0x8BE20000
	.4byte 0x00008F65
	.4byte 0x000093BA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000914C
	.4byte 0x0000E7F2
	.4byte 0x0000E7EC
	.4byte 0xE7F10000
	.4byte 0x96C10000
	.4byte 0x92B6E7F3
	.4byte 0xE7F00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000914B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7F7
	.4byte 0x0000E7F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7F5
	.4byte 0
	.4byte 0x964E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8F9B0000
	.4byte 0
	.4byte 0x0000E7F8
	.4byte 0x95DD0000
	.4byte 0x00008973
	.4byte 0
	.4byte 0
	.4byte 0x95659292
	.4byte 0
	.4byte 0
	.4byte 0x8B980000
	.4byte 0xE7FA0000
	.4byte 0x8D7C0000
	.4byte 0

.global lbl_8055CBF8
lbl_8055CBF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E4B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E7F9
	.4byte 0x908D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x908EE840
	.4byte 0xE8420000
	.4byte 0
	.4byte 0
	.4byte 0x8FF90000
	.4byte 0xE841E843
	.4byte 0
	.4byte 0x8BD10000
	.4byte 0x95640000
	.4byte 0x00008EE0
	.4byte 0x98420000
	.4byte 0xE7FC8DF6
	.4byte 0
	.4byte 0x985E0000
	.4byte 0x0000E845
	.4byte 0
	.4byte 0
	.4byte 0xE844E846
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE7FB0000
	.4byte 0
	.4byte 0
	.4byte 0x000093E7
	.4byte 0x00009374
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x92D50000
	.4byte 0xE84B0000
	.4byte 0
	.4byte 0x00009262
	.4byte 0xE8470000
	.4byte 0
	.4byte 0xE8480000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8C4C0000
	.4byte 0xE84A0000
	.4byte 0
	.4byte 0
	.4byte 0x00008CAE
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8490000
	.4byte 0x8FDF0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A990000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE84F0000
	.4byte 0x8DBD9199
	.4byte 0
	.4byte 0x92C80000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008A5A
	.4byte 0
	.4byte 0
	.4byte 0xE84DE84E
	.4byte 0x92C10000
	.4byte 0xE84C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E850
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E856
	.4byte 0
	.4byte 0
	.4byte 0xE8590000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE858934C
	.4byte 0
	.4byte 0
	.4byte 0xE851E852
	.4byte 0xE8550000
	.4byte 0
	.4byte 0x0000E857
	.4byte 0
	.4byte 0x00008BBE
	.4byte 0
	.4byte 0xE85AE854
	.4byte 0
	.4byte 0xE8530000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055CDF8
lbl_8055CDF8:
	.4byte 0
	.4byte 0x0000E85E
	.4byte 0
	.4byte 0x0000E85F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8600000
	.4byte 0x0000E85D
	.4byte 0xE85C0000
	.4byte 0
	.4byte 0x8FE093A8
	.4byte 0xE85B0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E864
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E862
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E863
	.4byte 0xE8610000
	.4byte 0x91F60000
	.4byte 0xE8650000
	.4byte 0
	.4byte 0
	.4byte 0x0000E866
	.4byte 0
	.4byte 0xE8680000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AD3
	.4byte 0xE86796F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE873E869
	.4byte 0
	.4byte 0xE86C0000
	.4byte 0xE86A0000
	.4byte 0xE86B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE86D0000
	.4byte 0
	.4byte 0
	.4byte 0xE86F0000
	.4byte 0
	.4byte 0x0000E870
	.4byte 0x0000E871
	.4byte 0
	.4byte 0
	.4byte 0xE874E872
	.4byte 0xE875E877
	.4byte 0x0000E876
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055CFF8
lbl_8055CFF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000092B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96E50000
	.4byte 0xE878914D
	.4byte 0
	.4byte 0x0000E879
	.4byte 0x000095C2
	.4byte 0xE87A8A4A
	.4byte 0
	.4byte 0x0000895B
	.4byte 0x00008AD5
	.4byte 0x00008AD4
	.4byte 0xE87B0000
	.4byte 0xE87C0000
	.4byte 0xE87DE87E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8800000
	.4byte 0x8AD68A74
	.4byte 0x8D7D94B4
	.4byte 0x0000E882
	.4byte 0xE8810000
	.4byte 0
	.4byte 0x0000E883
	.4byte 0
	.4byte 0
	.4byte 0x897B0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E886
	.4byte 0x0000E885
	.4byte 0xE8840000
	.4byte 0xE8870000
	.4byte 0
	.4byte 0x0000E88A
	.4byte 0
	.4byte 0x000088C5
	.4byte 0
	.4byte 0xE8880000
	.4byte 0xE88CE88B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE88EE88D
	.4byte 0xE88F0000
	.4byte 0x93AC0000
	.4byte 0
	.4byte 0xE8900000
	.4byte 0
	.4byte 0x0000E891
	.4byte 0xE8930000
	.4byte 0x0000E892
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055D1F8
lbl_8055D1F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x958C0000
	.4byte 0
	.4byte 0x0000E894
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8950000
	.4byte 0x8DE30000
	.4byte 0
	.4byte 0xE896E897
	.4byte 0
	.4byte 0x96680000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000916A
	.4byte 0
	.4byte 0x000088A2
	.4byte 0x91C90000
	.4byte 0xE8980000
	.4byte 0x958D0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E89B
	.4byte 0xE8998D7E
	.4byte 0x0000E89A
	.4byte 0x8CC00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000095C3
	.4byte 0xE89DE89F
	.4byte 0xE89EE8A0
	.4byte 0
	.4byte 0x89409077
	.4byte 0x8F9C8AD7
	.4byte 0xE8A10000
	.4byte 0
	.4byte 0x94860000
	.4byte 0xE8A30000
	.4byte 0
	.4byte 0x89410000
	.4byte 0xE8A292C2
	.4byte 0x000097CB
	.4byte 0x93A9E89C
	.4byte 0x97A40000
	.4byte 0x8CAF0000
	.4byte 0x0000977A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008BF7
	.4byte 0x97B20000
	.4byte 0x8C470000
	.4byte 0x91E0E440
	.4byte 0x0000E8A4
	.4byte 0x8A4B908F
	.4byte 0
	.4byte 0
	.4byte 0x8A75E8A6
	.4byte 0x0000E8A7
	.4byte 0xE8A58C84
	.4byte 0x00008DDB
	.4byte 0x8FE10000
	.4byte 0
	.4byte 0x89420000
	.4byte 0x000097D7
	.4byte 0
	.4byte 0x0000E8A9
	.4byte 0xE7AC0000
	.4byte 0xE8A80000
	.4byte 0
	.4byte 0
	.4byte 0xE8ACE8AA
	.4byte 0xE8AB0000
	.4byte 0xE8AD0000
	.4byte 0xE8AE97EA
	.4byte 0xE8AFE8B0
	.4byte 0x000090C7
	.4byte 0x94B90000
	.4byte 0
	.4byte 0x909D8AE5
	.4byte 0
	.4byte 0x975989EB
	.4byte 0x8F578CD9
	.4byte 0x0000E8B3
	.4byte 0x0000E8B2
	.4byte 0x8E93E8B4
	.4byte 0xE8B10000
	.4byte 0x00008E47
	.4byte 0
	.4byte 0x0000E8B8
	.4byte 0xE5AB0000
	.4byte 0x000099D4
	.4byte 0x00009097
	.4byte 0xE8B60000
	.4byte 0
	.4byte 0
	.4byte 0x97A393EF
	.4byte 0
	.4byte 0
	.4byte 0x894A0000
	.4byte 0x90E18EB4
	.4byte 0
	.4byte 0
	.4byte 0x95B50000
	.4byte 0x895F0000
	.4byte 0
	.4byte 0x97EB978B
	.4byte 0x0000E8B9
	.4byte 0x00009364
	.4byte 0
	.4byte 0

.global lbl_8055D3F8
lbl_8055D3F8:
	.4byte 0x8EF90000
	.4byte 0
	.4byte 0xE8BA0000
	.4byte 0xE8BB906B
	.4byte 0xE8BC0000
	.4byte 0x97EC0000
	.4byte 0x0000E8B7
	.4byte 0xE8BEE8C0
	.4byte 0x0000E8BF
	.4byte 0x0000E8BD
	.4byte 0
	.4byte 0xE8C10000
	.4byte 0x0000E8C2
	.4byte 0
	.4byte 0x919A0000
	.4byte 0x89E00000
	.4byte 0
	.4byte 0
	.4byte 0xE8C30000
	.4byte 0x000096B6
	.4byte 0
	.4byte 0xE8C40000
	.4byte 0
	.4byte 0
	.4byte 0xE8C50000
	.4byte 0x98490000
	.4byte 0
	.4byte 0
	.4byte 0x9E50E8C6
	.4byte 0
	.4byte 0x0000E8C7
	.4byte 0xE8C80000
	.4byte 0
	.4byte 0xE8CC0000
	.4byte 0xE8C90000
	.4byte 0xE8CA0000
	.4byte 0xE8CBE8CD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x90C20000
	.4byte 0
	.4byte 0x96F50000
	.4byte 0x000090C3
	.4byte 0
	.4byte 0xE8CE0000
	.4byte 0x94F10000
	.4byte 0xE8CFEA72
	.4byte 0x96CA0000
	.4byte 0xE8D00000
	.4byte 0xE8D10000
	.4byte 0xE8D28A76
	.4byte 0x0000E8D4
	.4byte 0x00009078
	.4byte 0
	.4byte 0x0000E8D5
	.4byte 0
	.4byte 0x8C430000
	.4byte 0
	.4byte 0x0000E8D6
	.4byte 0xE8DA0000
	.4byte 0xE8D80000
	.4byte 0
	.4byte 0x0000E8D9
	.4byte 0
	.4byte 0x8A93E8D7
	.4byte 0xE8DB0000
	.4byte 0
	.4byte 0x0000E8DC
	.4byte 0x000088C6
	.4byte 0x0000E8DD
	.4byte 0xE8DE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8FE20000
	.4byte 0
	.4byte 0xE8DF0000
	.4byte 0
	.4byte 0x8B660000
	.4byte 0x0000E8E2
	.4byte 0
	.4byte 0xE8E10000
	.4byte 0xE8E00000
	.4byte 0x0000E691
	.4byte 0x000095DA
	.4byte 0
	.4byte 0
	.4byte 0x0000E8E3
	.4byte 0xE8E40000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E8E5
	.4byte 0
	.4byte 0xE8E60000
	.4byte 0xE8E70000
	.4byte 0x0000E8E8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008AD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E8EA
	.4byte 0x94420000
	.4byte 0
	.4byte 0xE8EC89B9
	.4byte 0x0000E8EF
	.4byte 0xE8EE0000
	.4byte 0
	.4byte 0x00008943
	.4byte 0
	.4byte 0x00008BBF

.global lbl_8055D5F8
lbl_8055D5F8:
	.4byte 0x000095C5
	.4byte 0x92B88DA0
	.4byte 0x00008D80
	.4byte 0x8F870000
	.4byte 0x907B0000
	.4byte 0
	.4byte 0xE8F10000
	.4byte 0x0000E8F0
	.4byte 0x97618AE6
	.4byte 0x94D093DA
	.4byte 0
	.4byte 0x0000909C
	.4byte 0x97CC0000
	.4byte 0x8C7A0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E8F4
	.4byte 0
	.4byte 0xE8F30000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x966A93AA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x896F0000
	.4byte 0x0000E8F5
	.4byte 0xE8F20000
	.4byte 0x00009570
	.4byte 0x978AE8F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE8F70000
	.4byte 0
	.4byte 0x0000E8F9
	.4byte 0x91E88A7A
	.4byte 0x8A7BE8F8
	.4byte 0
	.4byte 0
	.4byte 0x8AE78CB0
	.4byte 0
	.4byte 0x8AE80000
	.4byte 0x0000935E
	.4byte 0
	.4byte 0x97DE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008CDA
	.4byte 0
	.4byte 0x0000E8FA
	.4byte 0
	.4byte 0x0000E8FB
	.4byte 0xE8FCE940
	.4byte 0x0000E942
	.4byte 0xE9410000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x95970000
	.4byte 0xE9430000
	.4byte 0
	.4byte 0x0000E944
	.4byte 0x0000E945
	.4byte 0
	.4byte 0
	.4byte 0xE9460000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E948
	.4byte 0xE9470000
	.4byte 0xE9490000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000094F2
	.4byte 0xE3CA0000
	.4byte 0x00009048
	.4byte 0
	.4byte 0x8B510000
	.4byte 0
	.4byte 0
	.4byte 0x0000E94A
	.4byte 0x0000E94B
	.4byte 0x000099AA
	.4byte 0x9F5A94D1
	.4byte 0
	.4byte 0x88F90000
	.4byte 0x88B90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8E94964F
	.4byte 0x8FFC0000

.global lbl_8055D7F8
lbl_8055D7F8:
	.4byte 0
	.4byte 0x0000E94C
	.4byte 0x000096DD
	.4byte 0
	.4byte 0x0000E94D
	.4byte 0x977B0000
	.4byte 0x89610000
	.4byte 0
	.4byte 0x8E600000
	.4byte 0xE94E89EC
	.4byte 0xE94F0000
	.4byte 0
	.4byte 0xE9500000
	.4byte 0
	.4byte 0x0000E952
	.4byte 0xE9530000
	.4byte 0xE955E951
	.4byte 0
	.4byte 0xE9540000
	.4byte 0
	.4byte 0x8AD90000
	.4byte 0
	.4byte 0xE9560000
	.4byte 0xE9570000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E958
	.4byte 0xE9590000
	.4byte 0
	.4byte 0xE95A0000
	.4byte 0x0000E95C
	.4byte 0
	.4byte 0x0000E95B
	.4byte 0x0000E95E
	.4byte 0xE9610000
	.4byte 0
	.4byte 0xE95DE95F
	.4byte 0xE9600000
	.4byte 0x0000E962
	.4byte 0x00008BC0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8EF1E963
	.4byte 0xE9648D81
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E965
	.4byte 0
	.4byte 0x8A5D0000
	.4byte 0
	.4byte 0x946EE966
	.4byte 0xE9670000
	.4byte 0
	.4byte 0x00009279
	.4byte 0x93E90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9680000
	.4byte 0
	.4byte 0x0000949D
	.4byte 0
	.4byte 0x91CA8977
	.4byte 0x8BEC0000
	.4byte 0x8BED0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x9293E96D
	.4byte 0x8BEE0000
	.4byte 0x000089ED
	.4byte 0
	.4byte 0xE96C0000
	.4byte 0x0000E96A
	.4byte 0x0000E96B
	.4byte 0x0000E969
	.4byte 0
	.4byte 0xE9770000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E96E
	.4byte 0xE96F0000
	.4byte 0x0000E970
	.4byte 0xE9710000
	.4byte 0
	.4byte 0
	.4byte 0xE9730000
	.4byte 0x0000E972
	.4byte 0
	.4byte 0x00008F78

.global lbl_8055D9F8
lbl_8055D9F8:
	.4byte 0x0000E974
	.4byte 0
	.4byte 0x0000E976
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8B52E975
	.4byte 0
	.4byte 0x919B8CB1
	.4byte 0
	.4byte 0
	.4byte 0x0000E978
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x91CB0000
	.4byte 0x0000E979
	.4byte 0
	.4byte 0
	.4byte 0x93AB0000
	.4byte 0
	.4byte 0
	.4byte 0x0000E97A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9800000
	.4byte 0xE97D0000
	.4byte 0xE97CE97E
	.4byte 0x0000E97B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E982
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E981
	.4byte 0x0000E984
	.4byte 0
	.4byte 0x8BC1E983
	.4byte 0
	.4byte 0x0000E985
	.4byte 0
	.4byte 0xE9860000
	.4byte 0xE988E987
	.4byte 0
	.4byte 0x0000E989
	.4byte 0xE98BE98A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8D9C0000
	.4byte 0
	.4byte 0x0000E98C
	.4byte 0
	.4byte 0xE98D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x8A5B0000
	.4byte 0
	.4byte 0xE98E0000
	.4byte 0
	.4byte 0xE98F0000
	.4byte 0
	.4byte 0x90910000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E990
	.4byte 0x0000E991
	.4byte 0x0000E992
	.4byte 0xE9930000
	.4byte 0
	.4byte 0x8D820000
	.4byte 0
	.4byte 0
	.4byte 0xE994E995
	.4byte 0
	.4byte 0xE996E997
	.4byte 0
	.4byte 0xE9980000
	.4byte 0
	.4byte 0x94AFE99A
	.4byte 0x00009545
	.4byte 0xE99BE999
	.4byte 0x0000E99D
	.4byte 0
	.4byte 0xE99C0000
	.4byte 0x0000E99E
	.4byte 0
	.4byte 0x0000E99F
	.4byte 0
	.4byte 0

.global lbl_8055DBF8
lbl_8055DBF8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9A00000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9A10000
	.4byte 0xE9A20000
	.4byte 0
	.4byte 0x0000E9A3
	.4byte 0
	.4byte 0xE9A4E9A5
	.4byte 0x0000E9A6
	.4byte 0x0000E9A7
	.4byte 0xE9A8E9A9
	.4byte 0xE9AA0000
	.4byte 0
	.4byte 0xE9ABE9AC
	.4byte 0x00009F54
	.4byte 0xE9AD0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E2F6
	.4byte 0x8B530000
	.4byte 0
	.4byte 0x00008A40
	.4byte 0x8DB0E9AF
	.4byte 0xE9AE96A3
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E9B1
	.4byte 0xE9B2E9B0
	.4byte 0x0000E9B3
	.4byte 0
	.4byte 0x96820000
	.4byte 0
	.4byte 0xE9B40000
	.4byte 0x8B9B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009844
	.4byte 0
	.4byte 0
	.4byte 0xE9B50000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E9B7
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x88BC0000
	.4byte 0x0000E9B8
	.4byte 0x95A9E9B6
	.4byte 0
	.4byte 0xE9B9E9BA
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000E9BB
	.4byte 0xE9BC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9BD0000
	.4byte 0x968E8E4C
	.4byte 0x00008DF8
	.4byte 0x914E0000
	.4byte 0
	.4byte 0
	.4byte 0xE9BE0000
	.4byte 0
	.4byte 0x0000E9C1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9BF0000
	.4byte 0
	.4byte 0
	.4byte 0xE9C20000
	.4byte 0x00008CEF
	.4byte 0xE9C00000
	.4byte 0
	.4byte 0x0000E9C3
	.4byte 0x0000E9C4
	.4byte 0xE9C50000
	.4byte 0xE9C90000
	.4byte 0x8E490000
	.4byte 0
	.4byte 0x000091E2
	.4byte 0
	.4byte 0
	.4byte 0x0000E9CA
	.4byte 0xE9C7E9C6
	.4byte 0xE9C80000
	.4byte 0
	.4byte 0x8C7E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9CEE9CD
	.4byte 0xE9CC0000
	.4byte 0x000088B1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055DDF8
lbl_8055DDF8:
	.4byte 0
	.4byte 0
	.4byte 0xE9D80000
	.4byte 0xE9D40000
	.4byte 0xE9D5E9D1
	.4byte 0xE9D70000
	.4byte 0xE9D38A82
	.4byte 0
	.4byte 0x986B0000
	.4byte 0xE9D6E9D2
	.4byte 0xE9D0E9CF
	.4byte 0
	.4byte 0
	.4byte 0x0000E9DA
	.4byte 0
	.4byte 0
	.4byte 0x0000E9DD
	.4byte 0
	.4byte 0xE9DCE9DB
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009568
	.4byte 0xE9D988F1
	.4byte 0xE9DE0000
	.4byte 0xE9E00000
	.4byte 0
	.4byte 0
	.4byte 0x00008A8F
	.4byte 0xE9CB8956
	.4byte 0
	.4byte 0xE9E20000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9E1E9DF
	.4byte 0x924C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96900000
	.4byte 0
	.4byte 0x000097D8
	.4byte 0
	.4byte 0xE9E30000
	.4byte 0
	.4byte 0
	.4byte 0xE9E40000
	.4byte 0
	.4byte 0
	.4byte 0x0000E9E5
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xE9E60000
	.4byte 0xE9E70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000092B9
	.4byte 0x0000E9E8
	.4byte 0x000094B5
	.4byte 0x0000E9ED
	.4byte 0xE9E90000
	.4byte 0
	.4byte 0xE9EA0000
	.4byte 0x00009650
	.4byte 0x96C20000
	.4byte 0x93CE0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055DFF8
lbl_8055DFF8:
	.4byte 0
	.4byte 0x0000E9EE
	.4byte 0
	.4byte 0xE9EF93BC
	.4byte 0xE9ECE9EB
	.4byte 0
	.4byte 0
	.4byte 0x89A80000
	.4byte 0
	.4byte 0xE9F70000
	.4byte 0x0000E9F6
	.4byte 0
	.4byte 0
	.4byte 0x00008995
	.4byte 0
	.4byte 0x0000E9F4
	.4byte 0
	.4byte 0x0000E9F3
	.4byte 0
	.4byte 0xE9F10000
	.4byte 0x8A9B0000
	.4byte 0xE9F08EB0
	.4byte 0x89A70000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008D83
	.4byte 0
	.4byte 0xE9FAE9F9
	.4byte 0x0000E9F8
	.4byte 0
	.4byte 0xE9F50000
	.4byte 0xE9FB0000
	.4byte 0xE9FC0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA44EA43
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA45
	.4byte 0
	.4byte 0x894CEA40
	.4byte 0xEA410000
	.4byte 0x8D9496B7
	.4byte 0
	.4byte 0xEA420000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x96510000
	.4byte 0x0000EA4A
	.4byte 0
	.4byte 0xEA460000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA4B0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA48
	.4byte 0x0000EA47
	.4byte 0
	.4byte 0
	.4byte 0x00008C7B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA4C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA4D0000
	.4byte 0
	.4byte 0x0000EA4E
	.4byte 0x0000EA49
	.4byte 0
	.4byte 0x0000E9F2
	.4byte 0
	.4byte 0xEA4F0000
	.4byte 0x92DF0000
	.4byte 0
	.4byte 0xEA530000
	.4byte 0xEA54EA52
	.4byte 0
	.4byte 0
	.4byte 0x0000EA51
	.4byte 0xEA570000
	.4byte 0xEA500000
	.4byte 0xEA550000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA56
	.4byte 0
	.4byte 0x0000EA59
	.4byte 0
	.4byte 0
	.4byte 0x0000EA58
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA5B0000
	.4byte 0
	.4byte 0
	.4byte 0x0000EA5C
	.4byte 0x0000EA5D
	.4byte 0
	.4byte 0x98680000
	.4byte 0
	.4byte 0
	.4byte 0xEA5A91E9
	.4byte 0x8DEB0000
	.4byte 0x0000EA5E
	.4byte 0

.global lbl_8055E1F8
lbl_8055E1F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA5FEA60
	.4byte 0
	.4byte 0xEA610000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA62
	.4byte 0
	.4byte 0x8CB2EA63
	.4byte 0
	.4byte 0x0000EA64
	.4byte 0x00008EAD
	.4byte 0x0000EA65
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA660000
	.4byte 0x0000EA67
	.4byte 0xEA680000
	.4byte 0
	.4byte 0x0000EA6B
	.4byte 0xEA69985B
	.4byte 0x0000EA6A
	.4byte 0x000097ED
	.4byte 0
	.4byte 0
	.4byte 0x0000EA6C
	.4byte 0x000097D9
	.4byte 0
	.4byte 0
	.4byte 0x0000EA6D
	.4byte 0x949E0000
	.4byte 0x0000EA6E
	.4byte 0xEA700000
	.4byte 0x0000EA71
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA6F8D8D
	.4byte 0x96CB9683
	.4byte 0x9BF50000
	.4byte 0x9F80969B
	.4byte 0
	.4byte 0
	.4byte 0x89A90000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA738B6F
	.4byte 0xEA74EA75
	.4byte 0xEA760000
	.4byte 0x8D950000
	.4byte 0xEA770000
	.4byte 0
	.4byte 0xE0D296D9
	.4byte 0x000091E1
	.4byte 0xEA78EA7A
	.4byte 0xEA790000
	.4byte 0xEA7B0000
	.4byte 0
	.4byte 0x0000EA7C
	.4byte 0
	.4byte 0xEA7D0000
	.4byte 0
	.4byte 0
	.4byte 0x0000EA7E
	.4byte 0
	.4byte 0
	.4byte 0xEA800000
	.4byte 0xEA81EA82
	.4byte 0x0000EA83
	.4byte 0x0000EA84
	.4byte 0xEA85EA86
	.4byte 0

.global lbl_8055E3F8
lbl_8055E3F8:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA87
	.4byte 0xEA880000
	.4byte 0
	.4byte 0
	.4byte 0x93430000
	.4byte 0
	.4byte 0x00008CDB
	.4byte 0x0000EA8A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x916CEA8B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA8C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00009540
	.4byte 0
	.4byte 0xEA8D0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA8EE256
	.4byte 0
	.4byte 0xE6D8E8EB
	.4byte 0
	.4byte 0xEA8F0000
	.4byte 0xEA900000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA92
	.4byte 0xEA93EA94
	.4byte 0x97EEEA91
	.4byte 0
	.4byte 0xEA95EA96
	.4byte 0
	.4byte 0xEA980000
	.4byte 0xEA970000
	.4byte 0
	.4byte 0
	.4byte 0xEA9A0000
	.4byte 0
	.4byte 0xEA9BEA99
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000097B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000EA9C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xEA9DE273
	.4byte 0
	.4byte 0xEA9E0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8055E5F8
lbl_8055E5F8:
	.4byte 0x00008149
	.4byte 0x00008194
	.4byte 0x81908193
	.4byte 0x81950000
	.4byte 0x8169816A
	.4byte 0x8196817B
	.4byte 0x81430000
	.4byte 0x8144815E
	.4byte 0x824F8250
	.4byte 0x82518252
	.4byte 0x82538254
	.4byte 0x82558256
	.4byte 0x82578258
	.4byte 0x81468147
	.4byte 0x81838181
	.4byte 0x81848148
	.4byte 0x81978260
	.4byte 0x82618262
	.4byte 0x82638264
	.4byte 0x82658266
	.4byte 0x82678268
	.4byte 0x8269826A
	.4byte 0x826B826C
	.4byte 0x826D826E
	.4byte 0x826F8270
	.4byte 0x82718272
	.4byte 0x82738274
	.4byte 0x82758276
	.4byte 0x82778278
	.4byte 0x8279816D
	.4byte 0x0000816E
	.4byte 0x814F8151
	.4byte 0x814D8281
	.4byte 0x82828283
	.4byte 0x82848285
	.4byte 0x82868287
	.4byte 0x82888289
	.4byte 0x828A828B
	.4byte 0x828C828D
	.4byte 0x828E828F
	.4byte 0x82908291
	.4byte 0x82928293
	.4byte 0x82948295
	.4byte 0x82968297
	.4byte 0x82988299
	.4byte 0x829A816F
	.4byte 0x81628170
	.4byte 0
	.4byte 0x000000A1
	.4byte 0x00A200A3
	.4byte 0x00A400A5
	.4byte 0x00A600A7
	.4byte 0x00A800A9
	.4byte 0x00AA00AB
	.4byte 0x00AC00AD
	.4byte 0x00AE00AF
	.4byte 0x00B000B1
	.4byte 0x00B200B3
	.4byte 0x00B400B5
	.4byte 0x00B600B7
	.4byte 0x00B800B9
	.4byte 0x00BA00BB
	.4byte 0x00BC00BD
	.4byte 0x00BE00BF
	.4byte 0x00C000C1
	.4byte 0x00C200C3
	.4byte 0x00C400C5
	.4byte 0x00C600C7
	.4byte 0x00C800C9
	.4byte 0x00CA00CB
	.4byte 0x00CC00CD
	.4byte 0x00CE00CF
	.4byte 0x00D000D1
	.4byte 0x00D200D3
	.4byte 0x00D400D5
	.4byte 0x00D600D7
	.4byte 0x00D800D9
	.4byte 0x00DA00DB
	.4byte 0x00DC00DD
	.4byte 0x00DE00DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00008150
	.4byte 0x0000818F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8055E7F8
lbl_8055E7F8:
	# ROM: 0x55A8F8
	.4byte lbl_80552DF8
	.4byte 0
	.4byte 0
	.4byte lbl_80552FF8
	.4byte lbl_805531F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805533F8
	.4byte lbl_805535F8
	.4byte lbl_805537F8
	.4byte lbl_805539F8
	.4byte 0
	.4byte lbl_80553BF8
	.4byte lbl_80553DF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_80553FF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805541F8
	.4byte lbl_805543F8
	.4byte lbl_805545F8
	.4byte lbl_805547F8
	.4byte lbl_805549F8
	.4byte lbl_80554BF8
	.4byte lbl_80554DF8
	.4byte lbl_80554FF8
	.4byte lbl_805551F8
	.4byte lbl_805553F8
	.4byte lbl_805555F8
	.4byte lbl_805557F8
	.4byte lbl_805559F8
	.4byte lbl_80555BF8
	.4byte lbl_80555DF8
	.4byte lbl_80555FF8
	.4byte lbl_805561F8
	.4byte lbl_805563F8
	.4byte lbl_805565F8
	.4byte lbl_805567F8
	.4byte lbl_805569F8
	.4byte lbl_80556BF8
	.4byte lbl_80556DF8
	.4byte lbl_80556FF8
	.4byte lbl_805571F8
	.4byte lbl_805573F8
	.4byte lbl_805575F8
	.4byte lbl_805577F8
	.4byte lbl_805579F8
	.4byte lbl_80557BF8
	.4byte lbl_80557DF8
	.4byte lbl_80557FF8
	.4byte lbl_805581F8
	.4byte lbl_805583F8
	.4byte lbl_805585F8
	.4byte lbl_805587F8
	.4byte lbl_805589F8
	.4byte lbl_80558BF8
	.4byte lbl_80558DF8
	.4byte lbl_80558FF8
	.4byte lbl_805591F8
	.4byte lbl_805593F8
	.4byte lbl_805595F8
	.4byte lbl_805597F8
	.4byte lbl_805599F8
	.4byte lbl_80559BF8
	.4byte lbl_80559DF8
	.4byte lbl_80559FF8
	.4byte lbl_8055A1F8
	.4byte lbl_8055A3F8
	.4byte lbl_8055A5F8
	.4byte lbl_8055A7F8
	.4byte lbl_8055A9F8
	.4byte lbl_8055ABF8
	.4byte lbl_8055ADF8
	.4byte lbl_8055AFF8
	.4byte lbl_8055B1F8
	.4byte lbl_8055B3F8
	.4byte lbl_8055B5F8
	.4byte lbl_8055B7F8
	.4byte lbl_8055B9F8
	.4byte lbl_8055BBF8
	.4byte lbl_8055BDF8
	.4byte lbl_8055BFF8
	.4byte lbl_8055C1F8
	.4byte lbl_8055C3F8
	.4byte lbl_8055C5F8
	.4byte lbl_8055C7F8
	.4byte lbl_8055C9F8
	.4byte lbl_8055CBF8
	.4byte lbl_8055CDF8
	.4byte lbl_8055CFF8
	.4byte lbl_8055D1F8
	.4byte lbl_8055D3F8
	.4byte lbl_8055D5F8
	.4byte lbl_8055D7F8
	.4byte lbl_8055D9F8
	.4byte lbl_8055DBF8
	.4byte lbl_8055DDF8
	.4byte lbl_8055DFF8
	.4byte lbl_8055E1F8
	.4byte lbl_8055E3F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8055E5F8


.global lbl_8055EBF8
lbl_8055EBF8:
	.asciz "/dev/stm/immediate"
	.balign 4


.global lbl_8055EC0C
lbl_8055EC0C:
	.asciz "/dev/stm/eventhook"
	.balign 4


.global lbl_8055EC20
lbl_8055EC20:
	.asciz "OSStateTM.c"


.global lbl_8055EC2C
lbl_8055EC2C:
	.asciz "Error: The firmware doesn't support shutdown feature.\n"
	.balign 4


.global lbl_8055EC64
lbl_8055EC64:
	.asciz "Error: The firmware doesn't support reboot feature.\n"
	.balign 4


.global lbl_8055EC9C
lbl_8055EC9C:
	.asciz "Error on STM state event handler\n"
	.balign 4


.global lbl_8055ECC0
lbl_8055ECC0:
	.asciz "/title/00000001/00000002/data/play_rec.dat"
	.balign 4


.global lbl_8055ECEC
lbl_8055ECEC:
	# ROM: 0x55ADEC
	.4byte lbl_8035D7B0
	.4byte lbl_8035D7BC
	.4byte lbl_8035D838
	.4byte lbl_8035D87C
	.4byte lbl_8035D8A4
	.4byte lbl_8035D8B0
	.4byte lbl_8035D938


.global lbl_8055ED08
lbl_8055ED08:
	.asciz "/title/00000001/00000002/data/state.dat"


.global lbl_8055ED30
lbl_8055ED30:
	.asciz "Failed to register network shutdown function. %d\n"
	.balign 4
	.asciz "Failed to suspend the WiiConnect24 scheduler. %d\n"
	.balign 4
	.asciz "Failed to synchronize time with network resource managers. %d\n"
	.balign 4
	.asciz "NWC24iPrepareShutdown"
	.balign 4


.global lbl_8055EDF0
lbl_8055EDF0:
	.asciz "/dev/net/kd/request"
	.asciz "NWC24SuspendScheduler"
	.balign 4
	.asciz "NWC24ResumeScheduler"
	.balign 4
	.asciz "NWC24iRequestShutdown"
	.balign 4


.global lbl_8055EE4C
lbl_8055EE4C:
	.asciz "NWC24Shutdown_: Give up!\n"
	.balign 4
	.asciz "NWC24iSetRtcCounter_"
	.balign 4


.global lbl_8055EE80
lbl_8055EE80:
	.asciz "/dev/net/kd/time"
	.balign 4
	.4byte 0


.global lbl_8055EE98
lbl_8055EE98:
	.asciz "/shared2/sys/NANDBOOTINFO"
	.balign 4
	.4byte 0


.global lbl_8055EEB8
lbl_8055EEB8:
	.asciz "/shared2/expired"
	.balign 4


.global lbl_8055EECC
lbl_8055EECC:
	.asciz "OSPlayTime.c"
	.balign 4


.global lbl_8055EEDC
lbl_8055EEDC:
	.asciz "PlayTime: %d seconds left\n"
	.balign 4

.global lbl_8055EEF8
lbl_8055EEF8:
	.asciz "<< RVL_SDK - SC \trelease build: Feb 27 2009 10:05:17 (0x4302_145) >>"
	.balign 4

.global lbl_8055EF40
lbl_8055EF40:
	.asciz "IPL.EULA"
	.balign 4

.global lbl_8055EF4C
lbl_8055EF4C:
	.asciz "IPL.SADR"
	.balign 4

.global lbl_8055EF58
lbl_8055EF58:
	.asciz "NET.CTPC"
	.balign 4

.global lbl_8055EF64
lbl_8055EF64:
	.asciz "NET.PROF"
	.balign 4

.global lbl_8055EF70
lbl_8055EF70:
	.asciz "NET.WCPC"
	.balign 4

.global lbl_8055EF7C
lbl_8055EF7C:
	.asciz "NET.WCFG"
	.balign 4


.global lbl_8055EF88
lbl_8055EF88:
	# ROM: 0x55B088
	.4byte lbl_80665BC4
	.4byte 0
	.4byte lbl_80665BCC
	.4byte 0x00000001
	.4byte lbl_80665BD8
	.4byte 0x00000002
	.4byte lbl_80665BE0
	.4byte 0x00000003
	.4byte lbl_80665BE8
	.4byte 0x00000004
	.4byte lbl_80665BF0
	.4byte 0x00000005
	.4byte lbl_80665BF8
	.4byte 0x00000006
	.4byte lbl_8055EF40
	.4byte 0x00000007
	.4byte lbl_80665C00
	.4byte 0x00000008
	.4byte lbl_80665C08
	.4byte 0x00000009
	.4byte lbl_80665C10
	.4byte 0x0000000A
	.4byte lbl_80665C18
	.4byte 0x0000000B
	.4byte lbl_80665C20
	.4byte 0x0000000C
	.4byte lbl_80665C28
	.4byte 0x0000000D
	.4byte lbl_80665C30
	.4byte 0x0000000E
	.4byte lbl_80665C38
	.4byte 0x0000000F
	.4byte lbl_8055EF4C
	.4byte 0x00000010
	.4byte lbl_80665C40
	.4byte 0x00000011
	.4byte lbl_80665C48
	.4byte 0x00000012
	.4byte lbl_80665C50
	.4byte 0x00000013
	.4byte lbl_8055EF58
	.4byte 0x00000014
	.4byte lbl_8055EF64
	.4byte 0x00000015
	.4byte lbl_8055EF70
	.4byte 0x00000016
	.4byte lbl_8055EF7C
	.4byte 0x00000017
	.4byte lbl_80665C58
	.4byte 0x00000018
	.4byte lbl_80665C60
	.4byte 0x00000019
	.4byte lbl_80665C68
	.4byte 0x0000001A
	.4byte lbl_80665C70
	.4byte 0x0000001B
	.4byte lbl_80665C78
	.4byte 0x0000001C
	.4byte lbl_80665C80
	.4byte 0x0000001D
	.4byte lbl_80665C88
	.4byte 0x0000001E
	.4byte lbl_80665C90
	.4byte 0x0000001F
	.4byte lbl_80665C98
	.4byte 0x00000020
	.4byte lbl_80665CA0
	.4byte 0x00000021
	.4byte lbl_80665CA8
	.4byte 0x00000022
	.4byte lbl_80665CB0
	.4byte 0x00000023
	.4byte lbl_80665CB8
	.4byte 0x00000024


.global lbl_8055F0B0
lbl_8055F0B0:
	# ROM: 0x55B1B0
	.4byte lbl_80360BC0
	.4byte lbl_80360C04
	.4byte lbl_80360C44
	.4byte lbl_80360C74
	.4byte lbl_80360CBC
	.4byte lbl_80360CF0
	.4byte lbl_80360D24
	.4byte lbl_80360D68
	.4byte lbl_80360DA4
	.4byte lbl_80360DAC


.global lbl_8055F0D8
lbl_8055F0D8:
	# ROM: 0x55B1D8
	.4byte 0x004A504E
	.4byte 0x00015553
	.4byte 0x41000245
	.4byte 0x55520003
	.4byte 0x41555300
	.4byte 0x04425241
	.4byte 0x00055457
	.4byte 0x4E000552
	.4byte 0x4F430006
	.4byte 0x4B4F5200
	.4byte 0x07484B47
	.4byte 0x00084153
	.4byte 0x4900094C
	.4byte 0x544E000A
	.4byte 0x53414600
	.4byte 0x0B43484E
	.4byte 0x00FF0000
	.4byte 0


.global lbl_8055F120
lbl_8055F120:
	# ROM: 0x55B220
	.4byte 0x004A5000
	.4byte 0x01555300
	.4byte 0x02455500
	.4byte 0x044B5200
	.4byte 0x05434E00
	.4byte 0xFF000000

.global lbl_8055F138
lbl_8055F138:
	.asciz "<< RVL_SDK - SI \trelease build: Feb 27 2009 10:04:44 (0x4302_145) >>"
	.balign 4


.global lbl_8055F180
lbl_8055F180:
	# ROM: 0x55B280
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8055F198
lbl_8055F198:
	# ROM: 0x55B298
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008


.global lbl_8055F1A8
lbl_8055F1A8:
	# ROM: 0x55B2A8
	.4byte 0x00F60200
	.4byte 0x000E1300
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.asciz "SISetSamplingRate: unknown TV format. Use default."
	.balign 4
	.4byte 0


.global lbl_8055F240
lbl_8055F240:
	.asciz "invalid version number for texture palette"
	.balign 4
	.4byte 0


.global lbl_8055F270
lbl_8055F270:
	.asciz "USB ERR: "
	.balign 4
	.asciz "Library is already initialized. Heap Id = %d\n"
	.balign 4
	.asciz "iusb size: %d lo: %x hi: %x\n"
	.balign 4
	.asciz "Not enough IPC arena\n"
	.balign 4
	.asciz "Not enough heaps\n"
	.balign 4
	.asciz "_intrBlkCtrlIsoCb returned: %d\n"
	.asciz "_intrBlkCtrlIsoCb: nclean = %d\n"
	.asciz "__intrBlkCtrlIsoCb: got invalid nclean\n"
	.asciz "Freeing clean[%d] = %x\n"
	.asciz "iosFree(%d, 0x%x) failed: %d\n"
	.balign 4
	.asciz "cb = %x cbArg = %x\n"
	.asciz "calling iso callback\n"
	.balign 4
	.asciz "iosAllocAligned(%d, %u) failed: %d\n"
	.asciz "OpenDeviceIds: Not enough memory\n"
	.balign 4
	.asciz "/dev/usb/%s/%x/%x"
	.balign 4
	.asciz "OpenDevice - %s\n"
	.balign 4
	.asciz "OpenDevice returned: %d\n"
	.balign 4
	.asciz "OpenDevice\n"
	.asciz "OpenDeviceIdsAsync: Not enough memory\n"
	.balign 4
	.asciz "CloseDevice\n"
	.balign 4
	.asciz "CloseDevice returned: %d\n"
	.balign 4
	.asciz "CloseDeviceAsync: Not enough memory\n"
	.balign 4
	.asciz "openDevice: Not enough memory\n"
	.balign 4
	.asciz "getDeviceList: Not enough memory\n"
	.balign 4
	.4byte 0
	.asciz "__LongBlkMsgInt"
	.asciz "__LongBlkMsgInt: Not enough memory\n"
	.asciz "Long bulk ioctl returned: %d\n"
	.balign 4
	.asciz "LongBlkMsgInt (async): Not enough memory\n"
	.balign 4
	.asciz "longblkmsg: cb = 0x%x cbArg = 0x%x\n"
	.asciz "%s: IoctlvAsync returned error %d\n"
	.balign 4
	.asciz "__IntrBlkMsgInt"
	.asciz "__IntrBlkMsgInt: Not enough memory\n"
	.asciz "intr/blk ioctl returned: %d\n"
	.balign 4
	.asciz "IntBlkMsgInt (async): Not enough memory\n"
	.balign 4
	.asciz "intrblkmsg: cb = 0x%x cbArg = 0x%x\n"
	.asciz "calling short blk transfer fn: buflen = %u limit = %u\n"
	.balign 4
	.asciz "calling long blk transfer fn: buflen = %u limit = %u\n"
	.balign 4
	.asciz "ctrlmsg: bad data buffer\n"
	.balign 4
	.asciz "Ctrl Msg: Not enough memory\n"
	.balign 4
	.asciz "CtrlMsgInt (async): Not enough memory\n"
	.balign 4
	.asciz "ctrlmsgint: cb = 0x%x cbArg = 0x%x\n"
	.asciz "Ctrl Msg async returned: %d\n"
	.balign 4
	.asciz "GetStrCb returned: %d\n"
	.balign 4
	.asciz "GetStrCb: buf = 0x%x buflen = %u\n"
	.balign 4
	.asciz "Failed to convert buffer from unicode 2 ascii\n"
	.balign 4
	.asciz "calling cb 0x%x with arg 0x%x\n"
	.balign 4
	.asciz "Failed __CtrlMsg: %d"
	.balign 4
	.asciz "Failed to convert unicode 2 ascii\n"
	.balign 4
	.asciz "GetStr - _GetStrCb\n"
	.asciz " GetAsciiStrAsync: Not enough memory\n"
	.balign 4
	.asciz "__CtrlMsgInt failed %d\n"
	.asciz "GetDescrCb returned: %d\n"
	.balign 4
	.asciz "GetDevDescr\n"
	.balign 4
	.4byte 0
	.asciz "GetDevDescr: Not enough memory\n"
	.asciz "GetDevDescr: %d\n"
	.balign 4
	.asciz "GetDevDescr - _GetDescrCb\n"
	.balign 4
	.asciz "GetDevDescrAsync: Not enough memory\n"
	.balign 4
	.asciz "DeviceRemovalNotifyAsync\n"
	.balign 4
	.asciz "packet %u too big: %u\n"
	.balign 4
	.asciz "Invalid parameters for ISO transfer request\n"
	.balign 4
	.asciz "IUSB_IsoMsgAsync: Not enough memory\n"
	.balign 4
	.asciz "Open(%s) failed\n"
	.balign 4
	.asciz "Invalid path or devClass in insertion notification call\n"
	.balign 4
	.4byte 0
	.asciz "IUSB_RegisterInsertionNotifyWithIdAsync"
	.asciz "%s: Not enough memory\n"
	.balign 4
	.asciz "Failed to open %s: %d\n"
	.balign 4


.global lbl_8055FAA0
lbl_8055FAA0:
	.asciz "<< RVL_SDK - VI \trelease build: Feb 27 2009 10:04:46 (0x4302_145) >>"
	.balign 4


.global lbl_8055FAE8
lbl_8055FAE8:
	# ROM: 0x55BBE8
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x00040C0C
	.4byte 0x0C0C0208
	.4byte 0x02080208
	.4byte 0x0208020E
	.4byte 0x01AD4047
	.4byte 0x69A20175
	.4byte 0x7A00019C
	.4byte 0x0500011F
	.4byte 0x00230024
	.4byte 0x00010000
	.4byte 0x0D0C0B0A
	.4byte 0x026B026A
	.4byte 0x0269026C
	.4byte 0x027101B0
	.4byte 0x404B6AAC
	.4byte 0x017C8500
	.4byte 0x01A40500
	.4byte 0x011F0021
	.4byte 0x00210002
	.4byte 0x00020D0B
	.4byte 0x0D0B026B
	.4byte 0x026D026B
	.4byte 0x026D0270
	.4byte 0x01B0404B
	.4byte 0x6AAC017C
	.4byte 0x850001A4
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x100F0E0D
	.4byte 0x02060205
	.4byte 0x02040207
	.4byte 0x020D01AD
	.4byte 0x404E70A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x0004100E
	.4byte 0x100E0206
	.4byte 0x02080206
	.4byte 0x0208020E
	.4byte 0x01AD404E
	.4byte 0x70A20175
	.4byte 0x7A00019C
	.4byte 0x0C0001E0
	.4byte 0x00300030
	.4byte 0x00060006
	.4byte 0x18181818
	.4byte 0x040E040E
	.4byte 0x040E040E
	.4byte 0x041A01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0C00
	.4byte 0x01E0002C
	.4byte 0x002C000A
	.4byte 0x000A1818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69A8017B
	.4byte 0x7A00019C
	.4byte 0x060000F1
	.4byte 0x00180019
	.4byte 0x00010000
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x4047699F
	.4byte 0x01727A00
	.4byte 0x019C0C00
	.4byte 0x01E00030
	.4byte 0x00300006
	.4byte 0x00061818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69B40187
	.4byte 0x7A00019C
	.4byte 0x0A000240
	.4byte 0x003E003E
	.4byte 0x00060006
	.4byte 0x14141414
	.4byte 0x04D804D8
	.4byte 0x04D804D8
	.4byte 0x04E201B0
	.4byte 0x404B6AAC
	.4byte 0x017C7A00
	.4byte 0x019C0000


.global lbl_8055FC8C
lbl_8055FC8C:
	# ROM: 0x55BD8C
	.4byte 0x01F001DC
	.4byte 0x01AE0174
	.4byte 0x012900DB
	.4byte 0x008E0046
	.4byte 0x000C00E2
	.4byte 0x00CB00C0
	.4byte 0x00C400CF
	.4byte 0x00DE00EC
	.4byte 0x00FC0008
	.4byte 0x000F0013
	.4byte 0x0013000F
	.4byte 0x000C0008
	.4byte 0x00010000
	.4byte 0x00000006
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0
	.4byte 0x00000006
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000
	.4byte 0x00000006
	.4byte 0x02800108
	.4byte 0x020C0028
	.4byte 0x00170280
	.4byte 0x020C0000
	.4byte 0
	.4byte 0x00010302
	.4byte 0x0906030A
	.4byte 0x03020906
	.4byte 0x030A0902
	.4byte 0x0306090A
	.4byte 0x09020306
	.4byte 0x090A0408
	.4byte 0x0C100C08
	.4byte 0x04000000
	.4byte 0


.global lbl_8055FD78
lbl_8055FD78:
	# ROM: 0x55BE78
	.4byte func_80363F30
	.4byte 0x0000007F
	.4byte 0
	.4byte 0


.global lbl_8055FD88
lbl_8055FD88:
	# ROM: 0x55BE88
	.4byte lbl_80364420
	.4byte lbl_80364428
	.4byte lbl_80364430
	.4byte lbl_80364420
	.4byte lbl_80364428
	.4byte lbl_80364430
	.4byte lbl_80364420
	.4byte lbl_80364420
	.4byte lbl_80364420


.global lbl_8055FDAC
lbl_8055FDAC:
	# ROM: 0x55BEAC
	.4byte lbl_803649A0
	.4byte lbl_803649AC
	.4byte lbl_80364A18
	.4byte lbl_80364A28
	.4byte lbl_803649BC
	.4byte lbl_803649CC
	.4byte lbl_80364A78
	.4byte lbl_80364A90
	.4byte lbl_803649F8
	.4byte lbl_80364A08
	.4byte lbl_80364A18
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_80364A38
	.4byte lbl_80364A48
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_803649DC
	.4byte lbl_803649E8
	.4byte lbl_80364A18
	.4byte lbl_80364A90
	.4byte lbl_80364A58
	.4byte lbl_80364A90
	.4byte lbl_80364A68
	.4byte lbl_80364A90
	.4byte lbl_80364A88
	.4byte lbl_80364A88
	.4byte lbl_80364A88
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_80364A90
	.4byte lbl_80364A88


.global lbl_8055FE38
lbl_8055FE38:
	# ROM: 0x55BF38
	.4byte lbl_80365134
	.4byte lbl_8036513C
	.4byte lbl_80365144
	.4byte lbl_80365134
	.4byte lbl_8036513C
	.4byte lbl_80365144
	.4byte lbl_80365134
	.4byte lbl_80365134
	.4byte lbl_80365134
	.asciz "***************************************\n"
	.balign 4
	.asciz " ! ! ! C A U T I O N ! ! !             \n"
	.balign 4
	.asciz "This TV format \"DEBUG_PAL\" is only for \n"
	.balign 4
	.asciz "temporary solution until PAL DAC board \n"
	.balign 4
	.asciz "is available. Please do NOT use this   \n"
	.balign 4
	.asciz "mode in real games!!!                  \n"
	.balign 4
	.asciz "VIConfigure(): Tried to change mode from (%d) to (%d), which is forbidden\n"
	.balign 4


.global lbl_8055FFB0
lbl_8055FFB0:
	# ROM: 0x55C0B0
	.4byte lbl_80366538
	.4byte lbl_80366540
	.4byte lbl_80366544
	.4byte lbl_80366538
	.4byte lbl_80366540
	.4byte lbl_80366544
	.4byte lbl_80366538
	.4byte lbl_80366538
	.4byte lbl_80366538


.global lbl_8055FFD4
lbl_8055FFD4:
	# ROM: 0x55C0D4
	.4byte lbl_80366914
	.4byte lbl_8036691C
	.4byte lbl_80366920
	.4byte lbl_80366914
	.4byte lbl_8036691C
	.4byte lbl_80366920
	.4byte lbl_80366914
	.4byte lbl_80366914
	.4byte lbl_80366914


.global lbl_8055FFF8
lbl_8055FFF8:
	# ROM: 0x55C0F8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00300397
	.4byte 0x3B49101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x10001000
	.4byte 0x10001080
	.4byte 0x1B80EB00
	.4byte 0x00000028
	.4byte 0x005A02DB
	.4byte 0x0D8D3049
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001000
	.4byte 0x10401100
	.4byte 0x18804200
	.4byte 0xEB000000
	.4byte 0x007A023C
	.4byte 0x076D129C
	.4byte 0x2724101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x100010C0
	.4byte 0x15802900
	.4byte 0x6200EB00
	.4byte 0x004E0199
	.4byte 0x052D0B24
	.4byte 0x142920A4
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001040
	.4byte 0x12C01DC0
	.4byte 0x3B0078C0
	.4byte 0xEB0000EC
	.4byte 0x03D70800
	.4byte 0x0D9E143E
	.4byte 0x1BDB101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x10C016C0
	.4byte 0x27C04B80
	.4byte 0x8980EB00
	.4byte 0x02760666
	.4byte 0x0A960EF3
	.4byte 0x13AC1849
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001200
	.4byte 0x1C003280
	.4byte 0x59C09600
	.4byte 0xEB0004EC
	.4byte 0x08F50C96
	.4byte 0x0FCF12C6
	.4byte 0x1580101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x14002200
	.4byte 0x3CC06640
	.4byte 0x9FC0EB00
	.4byte 0x08000BAE
	.4byte 0x0E001030
	.4byte 0x11CB1349
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10001680
	.4byte 0x28C04680
	.4byte 0x7100A780
	.4byte 0xEB000BB1
	.4byte 0x0E140F2D
	.4byte 0x101810E5
	.4byte 0x1180101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x19802F80
	.4byte 0x4FC07A00
	.4byte 0xADC0EB00
	.4byte 0x10001000
	.4byte 0x10001000
	.4byte 0x10001000
	.4byte 0x10204060
	.4byte 0x80A0EB00
	.4byte 0x10002000
	.4byte 0x40006000
	.4byte 0x8000A000
	.4byte 0xEB0014EC
	.4byte 0x11C21078
	.4byte 0x0FB60F2F
	.4byte 0x0EB6101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x21003CC0
	.4byte 0x5FC08900
	.4byte 0xB780EB00
	.4byte 0x19D81333
	.4byte 0x10D20F6D
	.4byte 0x0E5E0DA4
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10002500
	.4byte 0x430066C0
	.4byte 0x8F40BB40
	.4byte 0xEB001EC4
	.4byte 0x147A110F
	.4byte 0x0F0C0DA1
	.4byte 0x0CB6101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x29004900
	.4byte 0x6D4094C0
	.4byte 0xBE80EB00
	.4byte 0x24001570
	.4byte 0x110F0EAA
	.4byte 0x0D0F0BDB
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10002D40
	.4byte 0x4EC07300
	.4byte 0x9980C180
	.4byte 0xEB00293B
	.4byte 0x163D110F
	.4byte 0x0E300C7D
	.4byte 0x0B24101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x31805440
	.4byte 0x78809DC0
	.4byte 0xC400EB00
	.4byte 0x2E27170A
	.4byte 0x10D20DE7
	.4byte 0x0BEB0A80
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10003580
	.4byte 0x59807D40
	.4byte 0xA1C0C640
	.4byte 0xEB003362
	.4byte 0x175C10D2
	.4byte 0x0D6D0B6D
	.4byte 0x09ED101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x39C05E40
	.4byte 0x8200A540
	.4byte 0xC840EB00
	.4byte 0x384E17AE
	.4byte 0x10B40D0C
	.4byte 0x0AF0096D
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10003DC0
	.4byte 0x62C08640
	.4byte 0xA880CA00
	.4byte 0xEB003D3B
	.4byte 0x1800105A
	.4byte 0x0CC30A72
	.4byte 0x0900101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x41C06740
	.4byte 0x8A00AB80
	.4byte 0xCB80EB00
	.4byte 0x41D81828
	.4byte 0x103C0C49
	.4byte 0x0A1F0892
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10004580
	.4byte 0x6B408DC0
	.4byte 0xAE00CD00
	.4byte 0xEB004676
	.4byte 0x18510FE1
	.4byte 0x0C0009B6
	.4byte 0x0836101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x49406F40
	.4byte 0x9100B080
	.4byte 0xCE40EB00
	.4byte 0x4AC4187A
	.4byte 0x0FA50B9E
	.4byte 0x096307DB
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10004CC0
	.4byte 0x73009440
	.4byte 0xB2C0CF80
	.4byte 0xEB004F13
	.4byte 0x18510F69
	.4byte 0x0B6D090F
	.4byte 0x0780101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x50407640
	.4byte 0x9700B500
	.4byte 0xD0C0EB00
	.4byte 0x5313187A
	.4byte 0x0F0F0B24
	.4byte 0x08BC0736
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10005380
	.4byte 0x79C099C0
	.4byte 0xB700D1C0
	.4byte 0xEB005713
	.4byte 0x18510EF0
	.4byte 0x0AC3087D
	.4byte 0x06ED101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x56C07CC0
	.4byte 0x9C80B8C0
	.4byte 0xD2C0EB00
	.4byte 0x5B131828
	.4byte 0x0E960A92
	.4byte 0x082906B6
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10005A00
	.4byte 0x7FC09EC0
	.4byte 0xBA80D380
	.4byte 0xEB005EC4
	.4byte 0x18000E78
	.4byte 0x0A300800
	.4byte 0x066D101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x5D008280
	.4byte 0xA140BC00
	.4byte 0xD480EB00
	.4byte 0x627617D7
	.4byte 0x0E1E0A00
	.4byte 0x07C10636
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10006000
	.4byte 0x8540A340
	.4byte 0xBD80D540
	.4byte 0xEB0065D8
	.4byte 0x17AE0DE1
	.4byte 0x09CF0782
	.4byte 0x0600101D
	.4byte 0x365882B3
	.4byte 0xEB001000
	.4byte 0x62C087C0
	.4byte 0xA540BF00
	.4byte 0xD600EB00
	.4byte 0x693B1785
	.4byte 0x0DA50986
	.4byte 0x074305DB
	.4byte 0x101D3658
	.4byte 0x82B3EB00
	.4byte 0x10006580
	.4byte 0x8A40A740
	.4byte 0xC040D680
	.4byte 0xEB000000
	.4byte 0x36000000
	.4byte 0
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F600000
	.4byte 0
	.4byte 0
	.4byte 0x3E1D1125
	.4byte 0x11010700
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x3E171521
	.4byte 0x15050502
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x361A222A
	.4byte 0x22050200
	.4byte 0x1C3D1403
	.4byte 0xFE0154FE
	.4byte 0x7E600008
	.4byte 0x00040701
	.4byte 0x55010000
	.4byte 0x361A222A
	.4byte 0x22050200
	.4byte 0x1C3D1403
	.4byte 0xFE0154FE
	.4byte 0x7E600008
	.4byte 0x00040701
	.4byte 0x55010000
	.4byte 0x361A222A
	.4byte 0x22050200
	.4byte 0x1C3D1403
	.4byte 0xFE0154FE
	.4byte 0x7E600008
	.4byte 0x00040701
	.4byte 0x55010000
	.4byte 0x36000000
	.4byte 0
	.4byte 0x1B1B2407
	.4byte 0xF800001E
	.4byte 0x1E600000
	.4byte 0
	.4byte 0x00010000
	.4byte 0x361D1125
	.4byte 0x11010700
	.4byte 0x1B1B2407
	.4byte 0xF800001E
	.4byte 0x1E60010A
	.4byte 0x00050403
	.4byte 0xFF010000
	.4byte 0x36171521
	.4byte 0x15050502
	.4byte 0x1B1B2407
	.4byte 0xF800001E
	.4byte 0x1E60010A
	.4byte 0x00050403
	.4byte 0xFF010000
	.4byte 0x36000000
	.4byte 0
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F600000
	.4byte 0
	.4byte 0
	.4byte 0x361D1125
	.4byte 0x11010700
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x36171521
	.4byte 0x15050502
	.4byte 0x1B1B2407
	.4byte 0xF800000F
	.4byte 0x0F60010A
	.4byte 0x00050403
	.4byte 0xFF000000
	.4byte 0x01000000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.asciz "vi3in1.c"
	.balign 4
	.asciz "VISetCGMS(): Tried to set APS Trigger bit(WORD2[3:2]) \nwhen the scan is progressive in DTV mode, which is forbidden\n"
	.balign 4


.global lbl_80560608
lbl_80560608:
	.asciz "<< RVL_SDK - WPAD \trelease build: Jun 22 2009 18:33:21 (0x4302_145) >>"
	.balign 4


.global lbl_80560650
lbl_80560650:
	.asciz "WBCReadDummy\n"
	.balign 4


.global lbl_80560660
lbl_80560660:
	.asciz "WBCSetZEROPointDummy\n"
	.balign 4


.global lbl_80560678
lbl_80560678:
	.asciz "WBCGetTGCWeightDummy\n"
	.balign 4


.global lbl_80560690
lbl_80560690:
	.asciz "Wait for %d ms until start reconnect!\n"
	.balign 4


.global lbl_805606B8
lbl_805606B8:
	# ROM: 0x55C7B8
	.4byte func_80368E90
	.4byte 0x0000007F
	.4byte 0
	.4byte 0


.global lbl_805606C8
lbl_805606C8:
	.asciz "handle = %d, repid = %02x\n"
	.balign 4


.global lbl_805606E4
lbl_805606E4:
	# ROM: 0x55C7E4
	.4byte lbl_803696E0
	.4byte lbl_803696E0
	.4byte lbl_803696E0
	.4byte lbl_80369858
	.4byte lbl_80369858
	.4byte lbl_80369858
	.4byte lbl_80369C2C
	.4byte lbl_803699F4
	.4byte lbl_80369858
	.4byte lbl_80369A6C
	.4byte lbl_80369BA8
	.4byte lbl_80369BA8
	.4byte lbl_80369858
	.asciz "Reconnect Start!!\n"
	.balign 4
	.4byte 0
	.asciz "Check the update of WiFi using channel\n"
	.asciz "WiFi uses channel = %d\n"


.global lbl_80560770
lbl_80560770:
	.asciz "WPADInit()\n"


.global lbl_8056077C
lbl_8056077C:
	.asciz " ==>this error means that the firmware is for NDEV %s\n"
	.balign 4


.global lbl_805607B4
lbl_805607B4:
	.asciz "2.1 or later"
	.balign 4


.global lbl_805607C4
lbl_805607C4:
	.asciz "Nintendo RVL-WBC"
	.balign 4
	.asciz "connection is %s\n"
	.balign 4
	.asciz "Nintendo RVL-CNT"
	.balign 4
	.asciz "clean up command queue\n"
	.asciz "WARNING: disconnection for device handle not assigned to channel.\n"
	.balign 4
	.4byte 0


.global lbl_80560860
lbl_80560860:
	.asciz "HID Parser reports: %d\n"


.global lbl_80560878
lbl_80560878:
	.asciz "WARNING: Overwritten the callback needed by KPAD.\n"
	.balign 4


.global lbl_805608AC
lbl_805608AC:
	.asciz "         Please call KPADSetSamplingCallback instead of WPADSetSamplingCallback.\n"
	.balign 4


.global lbl_80560900
lbl_80560900:
	.asciz "         Please call KPADSetConnectCallback instead of WPADSetConnectCallback.\n"


.global lbl_80560950
lbl_80560950:
	# ROM: 0x55CA50
	.4byte lbl_8036CBE4
	.4byte lbl_8036CBE4
	.4byte lbl_8036CBE4
	.4byte lbl_8036CBEC
	.4byte lbl_8036CBEC
	.4byte lbl_8036CBEC
	.4byte lbl_8036CC0C
	.4byte lbl_8036CBF4
	.4byte lbl_8036CBEC
	.4byte lbl_8036CBFC
	.4byte lbl_8036CC04
	.4byte lbl_8036CC04
	.4byte lbl_8036CBEC


.global lbl_80560984
lbl_80560984:
	# ROM: 0x55CA84
	.4byte lbl_8036CCD0
	.4byte lbl_8036CCD0
	.4byte lbl_8036CCD0
	.4byte lbl_8036CCD8
	.4byte lbl_8036CCD8
	.4byte lbl_8036CCD8
	.4byte lbl_8036CCF8
	.4byte lbl_8036CCE0
	.4byte lbl_8036CCD8
	.4byte lbl_8036CCE8
	.4byte lbl_8036CCF0
	.4byte lbl_8036CCF0
	.4byte lbl_8036CCD8


.global lbl_805609B8
lbl_805609B8:
	# ROM: 0x55CAB8
	.4byte lbl_8036CFA4
	.4byte lbl_8036CFA4
	.4byte lbl_8036CFA4
	.4byte lbl_8036CFAC
	.4byte lbl_8036CFAC
	.4byte lbl_8036CFAC
	.4byte lbl_8036CFCC
	.4byte lbl_8036CFB4
	.4byte lbl_8036CFAC
	.4byte lbl_8036CFBC
	.4byte lbl_8036CFC4
	.4byte lbl_8036CFC4
	.4byte lbl_8036CFAC


.global lbl_805609EC
lbl_805609EC:
	# ROM: 0x55CAEC
	.4byte lbl_8036FF58
	.4byte lbl_8036FF64
	.4byte lbl_8036FF70
	.4byte lbl_8036FF7C
	.4byte lbl_8036FF88
	.4byte lbl_8036FF94
	.4byte lbl_8036FFA0
	.4byte lbl_8036FFAC
	.4byte lbl_8036FFB8
	.4byte lbl_8036FFC4
	.4byte lbl_8036FFD0
	.4byte lbl_8036FFDC
	.4byte lbl_8036FFF4
	.4byte lbl_80370000
	.4byte lbl_8037000C
	.4byte lbl_8036FFE8
	.4byte 0


.global lbl_80560A30
lbl_80560A30:
	# ROM: 0x55CB30
	.4byte __a1_20_status_report
	.4byte __a1_21_user_data
	.4byte __a1_22_ack
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_30_data_type
	.4byte __a1_31_data_type
	.4byte __a1_32_data_type
	.4byte __a1_33_data_type
	.4byte __a1_34_data_type
	.4byte __a1_35_data_type
	.4byte __a1_36_data_type
	.4byte __a1_37_data_type
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_unused_report
	.4byte __a1_3d_data_type
	.4byte __a1_3e_data_type
	.4byte __a1_3f_data_type

.global lbl_80560AB0
lbl_80560AB0:
	.asciz "detaching extension during initialization.\n"
	.asciz "Dpd Setting is ok.\n"
	.asciz "Dpd Setting is broken.\n"
	.asciz "Old Firmware uses default values because it has no Dpd Setting.\n"
	.balign 4
	.asciz "x = %lf, y = %lf\n"
	.balign 4
	.asciz "difaveX = %lf, difaveY = %lf\n"
	.balign 4
	.asciz "deltaX  = %lf, deltaY  = %lf\n"
	.balign 4
	.asciz "_wpadCalibrationX = %lf, _wpadCalibrationY = %lf\n"
	.balign 4
	.asciz "centX  = %lf, centY  = %lf\n"
	.asciz "_wpadRolag  = %lf\n"
	.balign 4
	.asciz "Acc is ok.\n"
	.asciz "Acc is broken.\n"
	.asciz "0G:  accX = %d,  accY = %d,  accZ = %d\n"
	.asciz "1G:  accX = %d,  accY = %d,  accZ = %d\n"
	.asciz "Volume: %d,   Motor: %d\n"
	.balign 4
	.asciz "check sum error.\n"
	.balign 4
	.asciz "0G:  fsaccX = %d,  fsaccY = %d,  fsaccZ = %d\n"
	.balign 4
	.asciz "1G:  fsaccX = %d,  fsaccY = %d,  fsaccZ = %d\n"
	.balign 4
	.asciz "FS:  X = %d,  X max = %d,  X min = %d\n"
	.balign 4
	.asciz "FS:  Y = %d,  Y max = %d,  Y min = %d\n"
	.balign 4
	.asciz "CL:  X = %d,  X max = %d,  X min = %d\n"
	.balign 4
	.asciz "CL:  Y = %d,  Y max = %d,  Y min = %d\n"
	.balign 4
	.asciz "CR:  X = %d,  X max = %d,  X min = %d\n"
	.balign 4
	.asciz "CR:  Y = %d,  Y max = %d,  Y min = %d\n"
	.balign 4
	.asciz "LR:  L = %d,  R = %d\n"
	.balign 4
	.asciz "devId: %d, subId: %d\n"
	.balign 4
	.asciz "type : %d\n"
	.balign 4
	.asciz "mode : %d\n"
	.balign 4
	.asciz "last : %d\n"
	.balign 4
	.asciz "Keep calibration!\n"
	.balign 4
	.asciz "Recalibration!\n"


.global lbl_80560E68
lbl_80560E68:
	.asciz "Received report 20\n"


.global lbl_80560E7C
lbl_80560E7C:
	.asciz "initialize attachment\n"
	.balign 4
	.asciz "read error happens!\n"
	.balign 4
	.asciz "base addr: %08x\n"
	.balign 4
	.asciz "length   : %d\n"
	.balign 4
	.asciz "i2c = %04x\n"
	.asciz "enc = %d\n"
	.balign 4
	.asciz "Access to extension register.\n"
	.balign 4
	.asciz "Decode!!!!\n"
	.asciz "    len = %d, addr = %04x\n"
	.balign 4
	.asciz "received data is out of range!\n"
	.asciz "Received ack!\n"
	.balign 4
	.asciz "ack --> report ID = %02x, error code = %d\n"
	.balign 4
	.asciz "invalid ack!\n"
	.balign 4
	.4byte 0


.global lbl_80560FA0
lbl_80560FA0:
	# ROM: 0x55D0A0
	.4byte 0xA877A6E0
	.4byte 0xF7435A35
	.4byte 0x85E27297
	.4byte 0x8FB71A62
	.4byte 0x87380D67
	.4byte 0xC7BE4F3E
	.4byte 0x2076378F
	.4byte 0x68B7A926
	.4byte 0x3F2B10E3
	.4byte 0x307E900E
	.4byte 0x850A0000
	.4byte 0
	.4byte 0x70510386
	.4byte 0x400D4FEB
	.4byte 0x3ECCD187
	.4byte 0x35BDF50B
	.4byte 0x5ED0F8F2
	.4byte 0xD5E26C31
	.4byte 0x0CADFC21
	.4byte 0xC378C106
	.4byte 0xC24C55E6
	.4byte 0x4A344811
	.4byte 0x1EDAE71A
	.4byte 0x84A096A7
	.4byte 0xE37FAF63
	.4byte 0x9CFA235B
	.4byte 0x79C89EBA
	.4byte 0xB2C92212
	.4byte 0x4BB3A1B6
	.4byte 0x3249A2E1
	.4byte 0x89391066
	.4byte 0xC5078F54
	.4byte 0xEA91CA3F
	.4byte 0xF919F0D7
	.4byte 0x46BC281B
	.4byte 0x61E82F6A
	.4byte 0xAE9DF64E
	.4byte 0x0914774D
	.4byte 0xDB1F2E7B
	.4byte 0x7CF143A3
	.4byte 0x00B8138C
	.4byte 0x85B92975
	.4byte 0x88FDD256
	.4byte 0x1C509741
	.4byte 0xE53B60B5
	.4byte 0xC064EE98
	.4byte 0xD62D25A4
	.4byte 0xAACD7DA8
	.4byte 0x83C6ABBE
	.4byte 0x4499263C
	.4byte 0xCE9FBFD3
	.4byte 0xCB767A7E
	.4byte 0x82018A9A
	.4byte 0x801D0EB0
	.4byte 0x5CD43862
	.4byte 0xF430E08E
	.4byte 0x53B70257
	.4byte 0xACA6520A
	.4byte 0x6D926517
	.4byte 0x24334572
	.4byte 0x74B1B4F7
	.4byte 0x5DED2CFF
	.4byte 0x47375A90
	.4byte 0xBBDF2A16
	.4byte 0x5995D9C4
	.4byte 0x276773C7
	.4byte 0x68FEA5DD
	.4byte 0x6B5F93D8
	.4byte 0xEC053A8D
	.4byte 0x6EFB3DA9
	.4byte 0x6936F394
	.4byte 0xDEEF156F
	.4byte 0x8B9B080F
	.4byte 0xDC811820
	.4byte 0x04E471CF
	.4byte 0xE92B4258
	.4byte 0x01A0A962
	.4byte 0xD63F85A7
	.4byte 0xB6D4FA15
	.4byte 0x661709BD
	.4byte 0x5D143426
	.4byte 0x59729154
	.4byte 0x064FF8B0
	.4byte 0x5B749399
	.4byte 0x8CF245CD
	.4byte 0xEA4EAD10
	.4byte 0x4AE5CAEE
	.4byte 0xDFC66F9F
	.4byte 0x888E02CC
	.4byte 0x08A87794
	.4byte 0x6D21B128
	.4byte 0xE4397996
	.4byte 0x60718116
	.4byte 0x2EE678B9
	.4byte 0xC4469A42
	.4byte 0xAEB77C43
	.4byte 0xB3221A86
	.4byte 0xC2323D2D
	.4byte 0x9CD229E9
	.4byte 0x639BD131
	.4byte 0x385E1E36
	.4byte 0x41BB0318
	.4byte 0x2B3EBF68
	.4byte 0x61FC52C0
	.4byte 0xDEE00A58
	.4byte 0x135A00BE
	.4byte 0x1C900E53
	.4byte 0x12FDE26E
	.4byte 0xBACE2427
	.4byte 0x447F87A3
	.4byte 0xA1D55040
	.4byte 0xE3F983F7
	.4byte 0xC7A235C8
	.4byte 0xDB19AB2F
	.4byte 0x1125ED33
	.4byte 0x9E55E148
	.4byte 0xAF7384DA
	.4byte 0x2AAA51EB
	.4byte 0x9D95B2CB
	.4byte 0xE77080FE
	.4byte 0x4C6504EF
	.4byte 0xC5F1C33A
	.4byte 0xB4F55F23
	.4byte 0x89DD30A5
	.4byte 0x8BD3F6DC
	.4byte 0x4D64D7F0
	.4byte 0x8FEC5637
	.4byte 0x5CA40D07
	.4byte 0x768A2C0B
	.4byte 0xB5D8C11F
	.4byte 0xE83BF44B
	.4byte 0x1B476C49
	.4byte 0x677B92CF
	.4byte 0x757E20D9
	.4byte 0x7D3C977A
	.4byte 0xD0056B0F
	.4byte 0x1DFB8298
	.4byte 0x578DF36A
	.4byte 0xBCACC9A6
	.4byte 0xFFB8690C
	.4byte 0x4C4D7207
	.4byte 0x5A49338D
	.4byte 0xA2AB463D
	.4byte 0x630DA097
	.4byte 0xFFF0F5FA
	.4byte 0xC0E9DB62
	.4byte 0xE4E17443
	.4byte 0xDC861829
	.4byte 0x37F406E2
	.4byte 0xED6F9048
	.4byte 0x1E2D1DEA
	.4byte 0x739454DF
	.4byte 0x25F64727
	.4byte 0xD91177C9
	.4byte 0x841C5B5C
	.4byte 0x5181A622
	.4byte 0x3E2496C8
	.4byte 0x8AEC827C
	.4byte 0x09B8454A
	.4byte 0x57BB2F50
	.4byte 0x758E6170
	.4byte 0x8C6CAFD0
	.4byte 0xFDB41BAE
	.4byte 0xDEFE3BB5
	.4byte 0x36BD5501
	.4byte 0x0E9C4156
	.4byte 0x5FB32603
	.4byte 0x83BA134B
	.4byte 0xCAC50AF8
	.4byte 0x60A5B9C7
	.4byte 0xC39832FB
	.4byte 0x12F9A792
	.4byte 0xAA68F378
	.4byte 0x7E052021
	.4byte 0x02E8BFF2
	.4byte 0xB0598FD2
	.4byte 0xCB876515
	.4byte 0xF11AB230
	.4byte 0xADEE58A3
	.4byte 0x8B661F2C
	.4byte 0xD75D1985
	.4byte 0xA8E6D36B
	.4byte 0xA10C9193
	.4byte 0x6A5E0B79
	.4byte 0xE3DD004F
	.4byte 0x3C896E71
	.4byte 0x69A9AC40
	.4byte 0xE59928C6
	.4byte 0x314E7ACD
	.4byte 0x089E7DEF
	.4byte 0x17FC88D8
	.4byte 0xA46D4495
	.4byte 0xD1B7D49B
	.4byte 0xBE2A3464
	.4byte 0x2BCF2EEB
	.4byte 0x38CE23E0
	.4byte 0x3A3FF77B
	.4byte 0x9F1053BC
	.4byte 0x526716E7
	.4byte 0x807604C4
	.4byte 0xB6C1C27F
	.4byte 0x9ADAD539
	.4byte 0x42149DB1
	.4byte 0x0F35D6CC
	.4byte 0xB9DA380C
	.4byte 0xA29C091F
	.4byte 0x06B1B6FD
	.4byte 0x1A692330
	.4byte 0xC4DE01D1
	.4byte 0xF4582937
	.4byte 0x1C7DD5BF
	.4byte 0xFFBDC8C9
	.4byte 0xCF65BE7B
	.4byte 0x78979867
	.4byte 0x08B32657
	.4byte 0xF7FA40AD
	.4byte 0x8E75A67C
	.4byte 0xDB918B51
	.4byte 0x99D4177A
	.4byte 0x908DCE63
	.4byte 0xCB4EA0AB
	.4byte 0x183A5B50
	.4byte 0x7F2174C1
	.4byte 0xBBB8B7BA
	.4byte 0x0B359531
	.4byte 0x599A4D04
	.4byte 0x071E5A76
	.4byte 0x13F37183
	.4byte 0xF08603A8
	.4byte 0x3942AA28
	.4byte 0xE6E4D85D
	.4byte 0xD3D06E6F
	.4byte 0x96FB5EBC
	.4byte 0x56C25F85
	.4byte 0x9BE7AFD2
	.4byte 0x3B846AA7
	.4byte 0x53C54449
	.4byte 0xA5F93672
	.4byte 0x3D2CD91B
	.4byte 0xA1F54F93
	.4byte 0x9D684741
	.4byte 0x16CA2A4C
	.4byte 0xA387D6E5
	.4byte 0x192E7715
	.4byte 0x6D70C0DF
	.4byte 0xB20046ED
	.4byte 0xC66C4360
	.4byte 0x922DA922
	.4byte 0x458F3455
	.4byte 0xAEA40A66
	.4byte 0x32E0DC02
	.4byte 0xACE8208C
	.4byte 0x89624AFE
	.4byte 0xEEC3E33C
	.4byte 0xF17905E9
	.4byte 0xF62733CC
	.4byte 0xF29E1181
	.4byte 0x7E80108A
	.4byte 0x829F480D
	.4byte 0xD7B4FC2F
	.4byte 0xB5C7DD88
	.4byte 0x146B2B54
	.4byte 0xEA1D945C
	.4byte 0xB0EF1224
	.4byte 0xCDEBE1E2
	.4byte 0x64733F0E
	.4byte 0x5261253E
	.4byte 0xF80F4BEC
	.4byte 0xC00030F6
	.4byte 0x02493D10
	.4byte 0x6E20C9A6
	.4byte 0x2FFE2C2B
	.4byte 0x752E4526
	.4byte 0xAB48A980
	.4byte 0xFC04CCD3
	.4byte 0xB5BAA338
	.4byte 0x317D01D9
	.4byte 0xA77B96B6
	.4byte 0x63694EF7
	.4byte 0xDEE078CA
	.4byte 0x50AA4191
	.4byte 0x6588E421
	.4byte 0x85DA3A27
	.4byte 0xBE1C3E42
	.4byte 0x5E17527F
	.4byte 0x1F89246F
	.4byte 0x8F5C6774
	.4byte 0x0E12878D
	.4byte 0xE934ED73
	.4byte 0xC4F8615B
	.4byte 0x05DF594C
	.4byte 0x97798318
	.4byte 0xA45595EB
	.4byte 0xBD53F5F1
	.4byte 0x5766469F
	.4byte 0xB2810951
	.4byte 0x862216DD
	.4byte 0x23937629
	.4byte 0xC2D71DD4
	.4byte 0xBF363FEA
	.4byte 0x4B1132B9
	.4byte 0x625460D6
	.4byte 0x6D439A0D
	.4byte 0x929CB0EF
	.4byte 0x586C9D77
	.4byte 0x2D70FAF3
	.4byte 0xB30BE240
	.4byte 0x7EF48AE5
	.4byte 0x8C3C5671
	.4byte 0xD164E182
	.4byte 0x0ACB1315
	.4byte 0x90EC0399
	.4byte 0xAF145D0F
	.4byte 0x334A94A5
	.4byte 0xA8351BE3
	.4byte 0x6AC628FF
	.4byte 0x4DE72584
	.4byte 0xAC08AEC5
	.4byte 0xA22AB837
	.4byte 0x0C7AA0C3
	.4byte 0xCEAD061A
	.4byte 0x9E8BFBD5
	.4byte 0xF0C11ED0
	.4byte 0xB49BB144
	.4byte 0xF247C768
	.4byte 0xCF72BB4F
	.4byte 0x5AF9DC6B
	.4byte 0xDBD2E87C
	.4byte 0xC8EE98A1
	.4byte 0xE6D83907
	.4byte 0x5FFD8E19
	.4byte 0xB73BBCCD
	.4byte 0x7CE38173
	.4byte 0xB211BF6F
	.4byte 0x2098FE75
	.4byte 0x96EF6CDA
	.4byte 0x50E10972
	.4byte 0x5445BA34
	.4byte 0x805BED3E
	.4byte 0x532C87A4
	.4byte 0x57F3333F
	.4byte 0x3CB767B4
	.4byte 0xA325604F
	.4byte 0x076B1B47
	.4byte 0x150FE40A
	.4byte 0xEAD13278
	.4byte 0x36498D4B
	.4byte 0xD2BCA5DC
	.4byte 0x1D0D4DCD
	.4byte 0x9A825FFC
	.4byte 0x9465BEE2
	.4byte 0xF4C91E44
	.4byte 0xCB9E0C64
	.4byte 0x712663B3
	.4byte 0x14E84070
	.4byte 0x8A0E1942
	.4byte 0x6DAC8810
	.4byte 0x5CDF41A9
	.4byte 0xADE5FB74
	.4byte 0xCCD5068E
	.4byte 0x5986CE1F
	.4byte 0x3D76E08F
	.4byte 0xB977277B
	.4byte 0xA6D829D3
	.4byte 0xECB813F7
	.4byte 0xFAC3516A
	.4byte 0xDE4A5AEB
	.4byte 0xC28B2348
	.4byte 0x92CF62A8
	.4byte 0x99F8D02E
	.4byte 0x856143C8
	.4byte 0xBDF00593
	.4byte 0xCA4EF17D
	.4byte 0x30FDC469
	.4byte 0x662F08B1
	.4byte 0x52F921E6
	.4byte 0x7A2BDD39
	.4byte 0x84FFC091
	.4byte 0xD637D47F
	.4byte 0x2D9B5DA1
	.4byte 0x3B6EB5C5
	.4byte 0x4604F590
	.4byte 0xEE7E831C
	.4byte 0x0356B6AA
	.4byte 0x00170135
	.4byte 0x55790B12
	.4byte 0xBB1A31E7
	.4byte 0x022816C1
	.4byte 0xF6A2DB18
	.4byte 0x9C896838
	.4byte 0x97ABC72A
	.4byte 0xD73AF2C6
	.4byte 0x244CB058
	.4byte 0xA0225E9D
	.4byte 0xD9A7E9AE
	.4byte 0xAF8C959F
	.4byte 0x28B720D7
	.4byte 0xB030C309
	.4byte 0x19C067D6
	.4byte 0x003C7EE7
	.4byte 0xE9F4085A
	.4byte 0xF8B82E05
	.4byte 0xA6259E5C
	.4byte 0xD8150DE1
	.4byte 0xF611546B
	.4byte 0xCD214666
	.4byte 0x5E84AD06
	.4byte 0x382944C5
	.4byte 0xA2CEF1AA
	.4byte 0xC1407186
	.4byte 0xB5EFFC36
	.4byte 0xA8CB0A48
	.4byte 0x274564A3
	.4byte 0xAF8CB2C6
	.4byte 0x9F0789DC
	.4byte 0x17D34979
	.4byte 0xFBFE1DD0
	.4byte 0xB9884352
	.4byte 0xBC01782B
	.4byte 0x7D94C70E
	.4byte 0xDEA5D59B
	.4byte 0xCCF7617A
	.4byte 0xC2748139
	.4byte 0x03AB96A0
	.4byte 0x37BD2D72
	.4byte 0x753FC9D4
	.4byte 0x8E6FF98D
	.4byte 0xED62DB1C
	.4byte 0xDF04AC1B
	.4byte 0x6C144B63
	.4byte 0xF0BFB482
	.4byte 0xEC7B1A59
	.4byte 0x92D21060
	.4byte 0xB63D5FE6
	.4byte 0x806E70C4
	.4byte 0xF235D97C
	.4byte 0xEEE541A4
	.4byte 0x5B50DDBB
	.4byte 0x4CF31F9D
	.4byte 0x5D575551
	.4byte 0x97E35842
	.4byte 0x4D9C73BA
	.4byte 0xC8773169
	.4byte 0x26AEEA8A
	.4byte 0xDA22B387
	.4byte 0x56FA930B
	.4byte 0x341633E8
	.4byte 0xE453BEA9
	.4byte 0xB13A3EF5
	.4byte 0x906ACF3B
	.4byte 0x12FD8F9A
	.4byte 0xA7479199
	.4byte 0xEB0F24FF
	.4byte 0x2318854E
	.4byte 0x7F0CE0A1
	.4byte 0xE2D12C2A
	.4byte 0x4A024F1E
	.4byte 0x95688B98
	.4byte 0x836D76CA
	.4byte 0x6532132F
	.4byte 0xC3829AA4
	.4byte 0xBA816037
	.4byte 0x3435FC80
	.4byte 0xA8516567
	.4byte 0xED305F10
	.4byte 0xD34A272F
	.4byte 0x13B92AD2
	.4byte 0xCCE1EFAE
	.4byte 0xEBBEF4BD
	.4byte 0xCF43B3C5
	.4byte 0x8884B7DD
	.4byte 0x3940CE48
	.4byte 0x6D9B7261
	.4byte 0x7EE7A14E
	.4byte 0x532E773B
	.4byte 0xE2C93622
	.4byte 0x1B6E73B1
	.4byte 0x03B24C87
	.4byte 0xA9D44D0F
	.4byte 0xD8156CAA
	.4byte 0x18F64957
	.4byte 0x5DFB7A14
	.4byte 0x9463A011
	.4byte 0xB09EDE05
	.4byte 0x46C8EE47
	.4byte 0xDBDC2489
	.4byte 0x9C919729
	.4byte 0xE97BC107
	.4byte 0x1EB8FDFE
	.4byte 0xACC66298
	.4byte 0x4FF179E0
	.4byte 0xE86B7856
	.4byte 0xB68D0450
	.4byte 0x86CA6F20
	.4byte 0xE6EAE576
	.4byte 0x171C747F
	.4byte 0xBC0D2C85
	.4byte 0xF76696E4
	.4byte 0x8B753F4B
	.4byte 0xD938AF7C
	.4byte 0xDA0B832D
	.4byte 0x3132A2F5
	.4byte 0x1D594145
	.4byte 0xBF3C1FF8
	.4byte 0xF98AD016
	.4byte 0x25691299
	.4byte 0x9D2195AB
	.4byte 0x01A6D7B5
	.4byte 0xC07DFF58
	.4byte 0x0E3A92D1
	.4byte 0x55E3089F
	.4byte 0xD63E528E
	.4byte 0xFAA3C702
	.4byte 0xCDDF8F64
	.4byte 0x198CF3A7
	.4byte 0x0C5E0A6A
	.4byte 0x09F0935B
	.4byte 0x42C20623
	.4byte 0xEC71ADB4
	.4byte 0xCBBB7028
	.4byte 0xD51A5C33
	.4byte 0x685A0044
	.4byte 0x90A5C426
	.4byte 0x3D2BF254
	.4byte 0x96ADDA1F
	.4byte 0xED33E181
	.4byte 0x69080D0A
	.4byte 0xDB35779A
	.4byte 0x64D1FC78
	.4byte 0xAA1BD067
	.4byte 0xA0DDFA6C
	.4byte 0x63710584
	.4byte 0x176A894F
	.4byte 0x667FC650
	.4byte 0x55926FBD
	.4byte 0xE7D24072
	.4byte 0x8DBBEC06
	.4byte 0x428AE488
	.4byte 0x9D7E7A82
	.4byte 0x2713411A
	.4byte 0xAFC8A476
	.4byte 0xB4C2FE6D
	.4byte 0x1CD96130
	.4byte 0xB37CEAF7
	.4byte 0x290FF23B
	.4byte 0x51C1DE5F
	.4byte 0xE52A2F99
	.4byte 0x0B5DA32B
	.4byte 0x4AAB95A5
	.4byte 0xD35856EE
	.4byte 0x283100CC
	.4byte 0x1546CAE6
	.4byte 0x86383C65
	.4byte 0xF5E39FD6
	.4byte 0x5B094983
	.4byte 0x702D53A9
	.4byte 0x7DE2C4AC
	.4byte 0x8E5EB825
	.4byte 0xF4B957F3
	.4byte 0xF16847B2
	.4byte 0xA25920CE
	.4byte 0x34795C90
	.4byte 0x0E1EBED5
	.4byte 0x2223B1C9
	.4byte 0x1862162E
	.4byte 0x913E078F
	.4byte 0xD83F933D
	.4byte 0xD49BDF85
	.4byte 0x21FB1174
	.4byte 0x97C7D7DC
	.4byte 0x4C194598
	.4byte 0xE943024B
	.4byte 0xBCC3049C
	.4byte 0x6BF07552
	.4byte 0xA726F6C5
	.4byte 0xBACFB0B7
	.4byte 0xAE5AA1BF
	.4byte 0x038B8012
	.4byte 0x6E0CEBF9
	.4byte 0xC04424EF
	.4byte 0x10F8A88C
	.4byte 0xE87BFF9E
	.4byte 0x2CCD6036
	.4byte 0x87B594A6
	.4byte 0x54733A14
	.4byte 0x4E011DB6
	.4byte 0xFD37484D
	.4byte 0x39CBE032
	.4byte 0x5429284E
	.4byte 0x0FFCA46C
	.4byte 0x8750493C
	.4byte 0xF2B4B1F9
	.4byte 0xC3582E83
	.4byte 0x5F718A9B
	.4byte 0x82CAC2BE
	.4byte 0xBA759160
	.4byte 0x78A82A4C
	.4byte 0x255B8BB0
	.4byte 0xDAAF0000
	.4byte 0
	.4byte 0xA4383369
	.4byte 0xD4F56AA8
	.4byte 0xD7EC74A6
	.4byte 0x7BC73C41
	.4byte 0xB721984A
	.4byte 0x8DC828F3
	.4byte 0xF83291AB
	.4byte 0xAD348630
	.4byte 0x4CBCFFCE
	.4byte 0x141E2EF9
	.4byte 0x31598587
	.4byte 0xFCC2FD3E
	.4byte 0xBB56888B
	.4byte 0xBF476192
	.4byte 0xB1947A51
	.4byte 0x9C8FB049
	.4byte 0x9BB90536
	.4byte 0x103BD5D3
	.4byte 0x0C96CB79
	.4byte 0x604EA2B5
	.4byte 0xD1EE17BA
	.4byte 0x1F097893
	.4byte 0xB4353A9D
	.4byte 0x1D39C93F
	.4byte 0x7C2FCA0B
	.4byte 0x37E61BD0
	.4byte 0x67D91884
	.4byte 0xE1425A7E
	.4byte 0xB897DF54
	.4byte 0x70036EDB
	.4byte 0x63AE555D
	.4byte 0xC44B89CC
	.4byte 0x13B390F6
	.4byte 0xE9B2A3BE
	.4byte 0x2D197323
	.4byte 0x207F4002
	.4byte 0x9EC36B1A
	.4byte 0x52DA2980
	.4byte 0x0D5FD68E
	.4byte 0x0E22E36D
	.4byte 0xDC5875E0
	.4byte 0x010A2650
	.4byte 0x08A9FE4D
	.4byte 0x15F76CCF
	.4byte 0x4FF0645E
	.4byte 0xC6688AAC
	.4byte 0xDEB64866
	.4byte 0xED6F7145
	.4byte 0x3DEB9F04
	.4byte 0x255CBD65
	.4byte 0xDD53CD24
	.4byte 0xEF72E89A
	.4byte 0xE716C100
	.4byte 0x772C7DA5
	.4byte 0x2A446227
	.4byte 0xF4C0071C
	.4byte 0x5B998257
	.4byte 0x06FAFB12
	.4byte 0xAFA7D2AA
	.4byte 0x2B8CF2D8
	.4byte 0x83A07611
	.4byte 0xC5438146
	.4byte 0xE5F1EA95
	.4byte 0xE2E40FA1
	.4byte 0x2BD2A58E
	.4byte 0x26090FF7
	.4byte 0x455B3CFD
	.4byte 0x8C7222BF
	.4byte 0xCADAE7AF
	.4byte 0x16B25E8A
	.4byte 0x6F94B7D6
	.4byte 0x1CB1294C
	.4byte 0xB543189C
	.4byte 0x31CEB684
	.4byte 0x71607F2A
	.4byte 0x6E35F8A6
	.4byte 0x54EA7488
	.4byte 0xAC03191B
	.4byte 0x3D79FCEE
	.4byte 0x429F93DB
	.4byte 0x80AD8B15
	.4byte 0x415D48CD
	.4byte 0x7CA32C32
	.4byte 0x1F63D1ED
	.4byte 0x4F04661E
	.4byte 0x469BBB38
	.4byte 0x067E95C8
	.4byte 0x5F4A516B
	.4byte 0x97BE2E98
	.4byte 0xBDEC0E05
	.4byte 0x0AA00152
	.4byte 0x85C0D83B
	.4byte 0xFE1264E1
	.4byte 0xF3244BF5
	.4byte 0x497AE44E
	.4byte 0x34250853
	.4byte 0x1AE3EF86
	.4byte 0xDFF191EB
	.4byte 0xC6D9D383
	.4byte 0x141DB0A7
	.4byte 0x0B104089
	.4byte 0xB4D43A02
	.4byte 0x0CDD2F5A
	.4byte 0x5628AE2D
	.4byte 0x55F6C1D5
	.4byte 0xA844CF58
	.4byte 0x9DB323C5
	.4byte 0xA43E7D30
	.4byte 0x136A61D0
	.4byte 0xF03F67CB
	.4byte 0x0DFF9268
	.4byte 0xE0816962
	.4byte 0xAB755911
	.4byte 0xF2C907E9
	.4byte 0xC7A1C278
	.4byte 0x33176CF9
	.4byte 0xC4B8B9DC
	.4byte 0x2790BCFB
	.4byte 0x70AAE896
	.4byte 0x7339F4C3
	.4byte 0x7787DE00
	.4byte 0xA29AE27B
	.4byte 0xFA36656D
	.4byte 0x20D7575C
	.4byte 0x378F4D9E
	.4byte 0x47A9E5CC
	.4byte 0x998D7650
	.4byte 0xBAE68221
	.4byte 0xB00DEB75
	.4byte 0x6D22CEE7
	.4byte 0x632CDEE2
	.4byte 0xF545BA44
	.4byte 0x951FE539
	.4byte 0xD7A5B58D
	.4byte 0x0793FDBC
	.4byte 0x627E89B3
	.4byte 0x48597FD3
	.4byte 0xBED0F236
	.4byte 0x539FE6B1
	.4byte 0x82C094B8
	.4byte 0x2F03243C
	.4byte 0x000A4265
	.4byte 0xE85C96D5
	.4byte 0xA990B985
	.4byte 0xE9EA0E16
	.4byte 0x7B84294E
	.4byte 0x5E879D35
	.4byte 0x0686E1E0
	.4byte 0xE3ECEFC8
	.4byte 0x525F64E4
	.4byte 0x46305ACD
	.4byte 0xEDD15181
	.4byte 0x0C3A66FE
	.4byte 0x04671ED6
	.4byte 0xF78CBD33
	.4byte 0xB291D4A8
	.4byte 0x4A140B79
	.4byte 0x5888B6C1
	.4byte 0x1956F827
	.4byte 0xAC2399B4
	.4byte 0xC312F320
	.4byte 0x783449DC
	.4byte 0xD805BB55
	.4byte 0x8A711121
	.4byte 0xC7DBF19B
	.4byte 0xF69E17F9
	.4byte 0xFAFBA760
	.4byte 0x8E6E8BCA
	.4byte 0x15ABDD3D
	.4byte 0xA6C680C2
	.4byte 0xDA4C1D4F
	.4byte 0x5D926998
	.4byte 0xA2329C2B
	.4byte 0x6A411A6C
	.4byte 0xA3C572AA
	.4byte 0xCC6B105B
	.4byte 0x4D572868
	.4byte 0xEE0940F0
	.4byte 0xAD262E2D
	.4byte 0x9AA07ACB
	.4byte 0x743E1B70
	.4byte 0xFC43C477
	.4byte 0x08B7CF1C
	.4byte 0x7D180F13
	.4byte 0x25BF6101
	.4byte 0x37AED22A
	.4byte 0x7C97AF3F
	.4byte 0x50DF6FA1
	.4byte 0xA4FF38C9
	.4byte 0x838F5473
	.4byte 0x0247D931
	.4byte 0x763B4BF4
	.4byte 0x9C49C7B6
	.4byte 0x14215F52
	.4byte 0xF3B7D5F2
	.4byte 0x95A02554
	.4byte 0xD9E7B0BF
	.4byte 0x691378F0
	.4byte 0x33E08C94
	.4byte 0xDBE6A7B5
	.4byte 0xECC263E3
	.4byte 0x18B94B74
	.4byte 0xE5018EB1
	.4byte 0x2735B43D
	.4byte 0x26481FFA
	.4byte 0xBB90D398
	.4byte 0xDFA43767
	.4byte 0x5D80D262
	.4byte 0xE16F962D
	.4byte 0xA86A9730
	.4byte 0x89EA3ABE
	.4byte 0x221941AC
	.4byte 0x79F185EE
	.4byte 0x70C00A1B
	.4byte 0x7FC1D0A6
	.4byte 0xF416FCBA
	.4byte 0x4E4AC912
	.4byte 0x8A1A9DC5
	.4byte 0x38D4DEAD
	.4byte 0xC44303B3
	.4byte 0xF7A9596D
	.4byte 0xA320364D
	.4byte 0x865BAE61
	.4byte 0x17A593DC
	.4byte 0x502CEF2A
	.4byte 0x68757A8B
	.4byte 0xD6FB009E
	.4byte 0x2E02CDED
	.4byte 0x47AB82BD
	.4byte 0x7111B266
	.4byte 0x5E3C7C08
	.4byte 0x6EF60945
	.4byte 0x3F5A0F84
	.4byte 0xCCDD730D
	.4byte 0xF892E80B
	.4byte 0xE9CF4F1C
	.4byte 0xDA100E9F
	.4byte 0xA258FF40
	.4byte 0x87772F60
	.4byte 0x4CC32888
	.4byte 0x15810656
	.4byte 0xD1558D9B
	.4byte 0x57836591
	.4byte 0x34CE5342
	.4byte 0x040C467D
	.4byte 0x0729FE24
	.4byte 0x2B6C0532
	.4byte 0xCB721E7E
	.4byte 0xAAE4996B
	.4byte 0xE2A1D81D
	.4byte 0x3EC6C85C
	.4byte 0x8FD76439
	.4byte 0xB8442331
	.4byte 0x7B51CA3B
	.4byte 0xF5F9FD76
	.4byte 0xEB9AAFBC
	.4byte 0x94C5263F
	.4byte 0xF6F8936E
	.4byte 0x738482E7
	.4byte 0x542C57AA
	.4byte 0x466D7A7E
	.4byte 0xF7E69A9F
	.4byte 0xD6EDE1F0
	.4byte 0xF567DEF4
	.4byte 0xD141FC4A
	.4byte 0x53C84D30
	.4byte 0x4E364031
	.4byte 0x8D980CA2
	.4byte 0xC0EA6C0A
	.4byte 0x18588FEE
	.4byte 0x006283E2
	.4byte 0x0D5B8BC7
	.4byte 0xD70490A1
	.4byte 0xE9CD1615
	.4byte 0x56789277
	.4byte 0xD512E3CE
	.4byte 0x19BE3450
	.4byte 0x514B32C1
	.4byte 0x06073735
	.4byte 0x60ACAD2B
	.4byte 0x27EB089B
	.4byte 0xDB7B4F03
	.4byte 0x791117D3
	.4byte 0xF1D9A666
	.4byte 0xF3CF7299
	.4byte 0x3ACA3D0B
	.4byte 0x894724DF
	.4byte 0x65143861
	.4byte 0xC26F13AF
	.4byte 0x913E2A33
	.4byte 0xDAE0A53B
	.4byte 0x1B1DA022
	.4byte 0x6AC495FA
	.4byte 0xB6B2699C
	.4byte 0xF2804421
	.4byte 0xEF9DA7CB
	.4byte 0xA9961E43
	.4byte 0x768A7F3C
	.4byte 0xD0A85920
	.4byte 0xDC81C9CC
	.4byte 0x97A4BCBD
	.4byte 0x7DABA3B4
	.4byte 0x52E4B08C
	.4byte 0xB92F9EB7
	.4byte 0x4CE84563
	.4byte 0x09645D88
	.4byte 0xD21C7487
	.4byte 0x485E556B
	.4byte 0xB3EC3905
	.4byte 0x2D2810B1
	.4byte 0xC6FE7029
	.4byte 0x5AFB4923
	.4byte 0xDD8601E5
	.4byte 0xD42542AE
	.4byte 0x8575FF68
	.4byte 0x2E5C1F02
	.4byte 0xBAB5BF7C
	.4byte 0xFD71F98E
	.4byte 0x5FB80E0F
	.4byte 0xC31ABBD8
	.4byte 0xAAF3C7A9
	.4byte 0x4320C6D0
	.4byte 0xF407009F
	.4byte 0x898EBAE0
	.4byte 0x5A241F2A
	.4byte 0xDDD4E30D
	.4byte 0xB0EDBEB2
	.4byte 0x2B752E66
	.4byte 0x176E7C52
	.4byte 0x76910159
	.4byte 0x613C862C
	.4byte 0xFD2DF60B
	.4byte 0xABE52241
	.4byte 0x6772C2AD
	.4byte 0xBDFE96FA
	.4byte 0x7B9E405F
	.4byte 0x71984C88
	.4byte 0xFBEB6BC9
	.4byte 0xCEBBC003
	.4byte 0x5B3AAE15
	.4byte 0x3E564DD8
	.4byte 0x3B503584
	.4byte 0x9734C454
	.4byte 0xCC4E5ECD
	.4byte 0xE6684FB3
	.4byte 0xB49D5DA5
	.4byte 0xA378E938
	.4byte 0x7E08606C
	.4byte 0xDB7FBF82
	.4byte 0x30E24819
	.4byte 0x6D1AA2DF
	.4byte 0x58956951
	.4byte 0x31DA0C4B
	.4byte 0xA40A4527
	.4byte 0xD71E6587
	.4byte 0x1BB7B542
	.4byte 0x8C266F25
	.4byte 0xEAFCEF8A
	.4byte 0xA710BCF5
	.4byte 0xA0214457
	.4byte 0x02D22F63
	.4byte 0x3DD5799C
	.4byte 0x05F2E4CF
	.4byte 0x29F1530E
	.4byte 0x7AB11412
	.4byte 0xF9F7118B
	.4byte 0x36A6B6D6
	.4byte 0xA11839EC
	.4byte 0x04C1E88D
	.4byte 0x28997390
	.4byte 0x70D31D8F
	.4byte 0xCBF8F0B9
	.4byte 0xDE779232
	.4byte 0xE7EE8533
	.4byte 0x13A89A3F
	.4byte 0xC8E1809B
	.4byte 0x06233709
	.4byte 0xD1FFAC81
	.4byte 0x9464AF4A
	.4byte 0x467D16C3
	.4byte 0x5547CAD9
	.4byte 0x0F1C6A74
	.4byte 0xDC4983C5
	.4byte 0xB85C9362
	.4byte 0xDC2FD4F0
	.4byte 0x8618B18C
	.4byte 0x4FB9D597
	.4byte 0x1B434C1D
	.4byte 0xEA5BC311
	.4byte 0x82FCA24A
	.4byte 0xA07F47AF
	.4byte 0xA30A59AD
	.4byte 0xE5062A4E
	.4byte 0x6EE340DB
	.4byte 0x538349B4
	.4byte 0xBA71959B
	.4byte 0x51B3ACD1
	.4byte 0xAEC4CF4B
	.4byte 0x4D6916EC
	.4byte 0x0BA59173
	.4byte 0x073B1984
	.4byte 0xC26D8DB2
	.4byte 0xBD254896
	.4byte 0xC5201AA1
	.4byte 0x8BC6E13F
	.4byte 0x28A7E712
	.4byte 0x76B01C8E
	.4byte 0xD04590CA
	.4byte 0x98D6A636
	.4byte 0x32728AA8
	.4byte 0x0D3A9F37
	.4byte 0x3C89DD67
	.4byte 0x2281E915
	.4byte 0x4142F52E
	.4byte 0x66D26180
	.4byte 0x0F5493AA
	.4byte 0xED5DE47D
	.4byte 0x30C93DE0
	.4byte 0xE226F208
	.4byte 0xA963242D
	.4byte 0x8F799CDA
	.4byte 0xBF55625C
	.4byte 0x00B6276A
	.4byte 0x0E9201D7
	.4byte 0xFFEB1F74
	.4byte 0x1499F744
	.4byte 0x87336C94
	.4byte 0x13507568
	.4byte 0x1017BB2C
	.4byte 0x6B04DFBC
	.4byte 0x356FB7F1
	.4byte 0x57C1E67C
	.4byte 0xB877653E
	.4byte 0x5FD364CB
	.4byte 0x021E38AB
	.4byte 0x88605E9D
	.4byte 0xBEC8A4D8
	.4byte 0x527B29F4
	.4byte 0x0570CE78
	.4byte 0x853923F3
	.4byte 0x34589EFB
	.4byte 0x31CC46EF
	.4byte 0x9A5AFE7A
	.4byte 0x56FDEEDE
	.4byte 0x0CF9CDC0
	.4byte 0x2BD9B509
	.4byte 0xF6C721FA
	.4byte 0xF803E87E
	.4byte 0x9FBD7991
	.4byte 0xCC787FD5
	.4byte 0x1BEEBBB7
	.4byte 0xDCED6D9B
	.4byte 0xEF58FB5D
	.4byte 0x67691F4E
	.4byte 0xAF624BB8
	.4byte 0xA8AE0860
	.4byte 0x8CAD24A1
	.4byte 0x482F8A00
	.4byte 0x90B15307
	.4byte 0x2612729D
	.4byte 0x561C5134
	.4byte 0x462E81CF
	.4byte 0xB3F337F1
	.4byte 0xFA3CBA06
	.4byte 0x54851459
	.4byte 0x365EA555
	.4byte 0x0C5289CB
	.4byte 0x97E23B11
	.4byte 0xBED91DFC
	.4byte 0x137DA005
	.4byte 0x41C3C5FD
	.4byte 0x763382CD
	.4byte 0x88161A29
	.4byte 0x871E406F
	.4byte 0xE8033A50
	.4byte 0xA6E4F44F
	.4byte 0xD6983971
	.4byte 0xD0F2F03E
	.4byte 0xEA8D2CA2
	.4byte 0xA9570B8B
	.4byte 0x0DAAE931
	.4byte 0xC2355CD1
	.4byte 0x38FF01A7
	.4byte 0xEC80F923
	.4byte 0xDF30EB2A
	.4byte 0xB017D219
	.4byte 0x6EDA259E
	.4byte 0xB64CC693
	.4byte 0xDB756B3F
	.4byte 0x1573FE3D
	.4byte 0x6566B57A
	.4byte 0x9A32CA68
	.4byte 0x8E22C044
	.4byte 0x43A30E21
	.4byte 0xB9024DC8
	.4byte 0xB40AF6D3
	.4byte 0x45965A84
	.4byte 0x7018D4BF
	.4byte 0xC4A49CC1
	.4byte 0xE047C7E5
	.4byte 0xE67E63DD
	.4byte 0x6ACE2894
	.4byte 0xE710BC5F
	.4byte 0x04642D8F
	.4byte 0x6CF72B92
	.4byte 0x83D899E3
	.4byte 0xDED75BAB
	.4byte 0x4A7477C9
	.4byte 0xF57B0F20
	.4byte 0xF8614286
	.4byte 0x7C4995AC
	.4byte 0x27E109B2
	.4byte 0x0BD36F0A
	.4byte 0x39772117
	.4byte 0x8FC7D5E5
	.4byte 0xB5B911A4
	.4byte 0xDCA3CDBB
	.4byte 0x1A818AB7
	.4byte 0xD95B4761
	.4byte 0x8E88B80C
	.4byte 0x3B3A9A54
	.4byte 0xFD2D53B4
	.4byte 0xC35F6960
	.4byte 0xB1AB2656
	.4byte 0x837EB33D
	.4byte 0x4A0D5A1D
	.4byte 0x1E59D635
	.4byte 0x8CF39B18
	.4byte 0x66BFE262
	.4byte 0x927BFF2E
	.4byte 0x5CCF25C4
	.4byte 0xAFD22963
	.4byte 0xA5B2F96A
	.4byte 0xC1FB1487
	.4byte 0x55732C44
	.4byte 0x3179F42A
	.4byte 0x41012480
	.4byte 0x19654D9D
	.4byte 0x9CE813A2
	.4byte 0xC0C5FE6B
	.4byte 0xCE50F804
	.4byte 0x48A80616
	.4byte 0xBE67BAEA
	.4byte 0xC60FD774
	.4byte 0x85B6D80E
	.4byte 0x4C9315BD
	.4byte 0xE6780305
	.4byte 0x32F734E4
	.4byte 0xAD3098A1
	.4byte 0x279EF643
	.4byte 0x643C49BC
	.4byte 0xF099DD12
	.4byte 0xD1C95D7C
	.4byte 0x22751F28
	.4byte 0x2F09C284
	.4byte 0x6DFA233F
	.4byte 0x7D918982
	.4byte 0x8658DF76
	.4byte 0xE9AADBAC
	.4byte 0x2BF59042
	.4byte 0x20E1A0ED
	.4byte 0xD45210EF
	.4byte 0x3EE31CDA
	.4byte 0x96B07238
	.4byte 0x9F7A1BDE
	.4byte 0x02A64E97
	.4byte 0x33366EE0
	.4byte 0xC84FFC37
	.4byte 0x71EC9400
	.4byte 0x95D0A7CB
	.4byte 0xF170A98B
	.4byte 0x40F24B46
	.4byte 0x45EE518D
	.4byte 0xCC6CCAEB
	.4byte 0x7F6807AE
	.4byte 0x5E5708E7

.global lbl_80562200
lbl_80562200:
	.asciz "ans : %d %d %d %d %d %d\n"
	.balign 4
	.asciz "rand: %d %d %d %d %d %d %d %d %d %d\n"
	.balign 4
	.asciz "t0  : %d %d %d %d %d %d %d %d %d %d\n"
	.balign 4
	.asciz "key : %d %d %d %d %d %d \n"
	.balign 4
	.asciz "ft  : %d %d %d %d %d %d %d %d\n"
	.balign 4
	.asciz "sb  : %d %d %d %d %d %d %d %d\n"
	.balign 4


.global lbl_805622C8
lbl_805622C8:
	# ROM: 0x55E3C8
	.4byte 0x05010905
	.4byte 0xA1018510
	.4byte 0x150026FF
	.4byte 0x00750895
	.4byte 0x010600FF
	.4byte 0x09019100
	.4byte 0x85119501
	.4byte 0x09019100
	.4byte 0x85129502
	.4byte 0x09019100
	.4byte 0x85139501
	.4byte 0x09019100
	.4byte 0x85149501
	.4byte 0x09019100
	.4byte 0x85159501
	.4byte 0x09019100
	.4byte 0x85169515
	.4byte 0x09019100
	.4byte 0x85179506
	.4byte 0x09019100
	.4byte 0x85189515
	.4byte 0x09019100
	.4byte 0x85199501
	.4byte 0x09019100
	.4byte 0x851A9501
	.4byte 0x09019100
	.4byte 0x85209506
	.4byte 0x09018100
	.4byte 0x85219515
	.4byte 0x09018100
	.4byte 0x85229504
	.4byte 0x09018100
	.4byte 0x85309502
	.4byte 0x09018100
	.4byte 0x85319505
	.4byte 0x09018100
	.4byte 0x8532950A
	.4byte 0x09018100
	.4byte 0x85339511
	.4byte 0x09018100
	.4byte 0x85349515
	.4byte 0x09018100
	.4byte 0x85359515
	.4byte 0x09018100
	.4byte 0x85369515
	.4byte 0x09018100
	.4byte 0x85379515
	.4byte 0x09018100
	.4byte 0x853D9515
	.4byte 0x09018100
	.4byte 0x853E9515
	.4byte 0x09018100
	.4byte 0x853F9515
	.4byte 0x09018100
	.4byte 0xC0000000
	.4byte 0x05009A0E
	.4byte 0x00010000
	.4byte 0
	.4byte 0x70990800
	.4byte 0xB4000000
	.4byte 0x8843D107
	.4byte 0x090C0843
	.4byte 0xA0621923
	.4byte 0xDB013380
	.4byte 0x7CF788F8
	.4byte 0x287680F7
	.4byte 0x17FF4378
	.4byte 0xEB701923
	.4byte 0xDB013387
	.4byte 0x7CF7BCFB
	.4byte 0x0B60A37B
	.4byte 0x01490B60
	.4byte 0x90F796FB
	.4byte 0xD81D0800
	.4byte 0x00F004F8
	.4byte 0x002379F7
	.4byte 0xE3FA0000
	.4byte 0x00B50023
	.4byte 0x11490B60
	.4byte 0x1D21C903
	.4byte 0x0B607D20
	.4byte 0x80010138
	.4byte 0xFDD10E4B
	.4byte 0x0E4A1360
	.4byte 0x47200021
	.4byte 0x96F796FF
	.4byte 0x46200021
	.4byte 0x96F792FF
	.4byte 0x0A4A1368
	.4byte 0x0A480340
	.4byte 0x13600A4A
	.4byte 0x13680A48
	.4byte 0x03401360
	.4byte 0x094A1368
	.4byte 0x09480340
	.4byte 0x136000BD
	.4byte 0x24800E00
	.4byte 0x81030FFE
	.4byte 0x5C000F00
	.4byte 0x60FC0E00
	.4byte 0xFEFF0000
	.4byte 0xFCFC0E00
	.4byte 0xFF9F0000
	.4byte 0x30FC0E00
	.4byte 0x7FFF0000
	.4byte 0x0720BC65
	.4byte 0x01008442
	.4byte 0x09D28442
	.4byte 0x09D12184
	.4byte 0x5A000083
	.4byte 0xF074FF09
	.4byte 0x0C084322
	.4byte 0x00610000
	.4byte 0x83F040FC
	.4byte 0
	.4byte 0x23CC9F01
	.4byte 0x006FF0E4
	.4byte 0xFC03287D
	.4byte 0xD1243C62
	.4byte 0x01002820
	.4byte 0x00E0608D
	.4byte 0x23682504
	.4byte 0x12010020
	.4byte 0x1C201C24
	.4byte 0xE0B02126
	.4byte 0x742F0000
	.4byte 0x86F018FD
	.4byte 0x214F3B60
	.4byte 0x30360800
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_805624E4
lbl_805624E4:
	.asciz "App_MEMalloc\n"
	.balign 4


.global lbl_805624F4
lbl_805624F4:
	.asciz "App_MEMfree\n"
	.balign 4


.global lbl_80562504
lbl_80562504:
	.asciz "__wudSyncFlushCallback() : %d, Sync: %d\n"
	.balign 4

.global lbl_80562530
lbl_80562530:
	.asciz "Nintendo RVL-CNT"
	.balign 4


.global lbl_80562544
lbl_80562544:
	.asciz "Nintendo RVL-WBC"
	.balign 4
	.asciz "Found the registered WBC in database\n"
	.balign 4
	.asciz "Removed WBC data\n"
	.balign 4
	.asciz "new entry index is %d\n"
	.balign 4


.global lbl_805625AC
lbl_805625AC:
	.asciz "%d devices is stored into SC.\n"
	.balign 4
	.4byte 0


.global lbl_805625D0
lbl_805625D0:
	.asciz "NANDOpen. [%d]\n"


.global lbl_805625E0
lbl_805625E0:
	.asciz "NANDSeek. [%d]\n"


.global lbl_805625F0
lbl_805625F0:
	.asciz "NANDWrite. [%d]\n"
	.balign 4


.global lbl_80562604
lbl_80562604:
	.asciz "NANDClose. [%d]\n"
	.balign 4


.global lbl_80562618
lbl_80562618:
	.asciz "Pairing Done\n"
	.balign 4
	.asciz "write stored link key\n"
	.balign 4
	.asciz "addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.asciz "Cancel searching because 4 connections exist.\n"
	.balign 4
	.asciz "/title/00010004/52464e4a/data/RPHealth.dat"
	.balign 4
	.asciz "WbcSaveData: %s\n"
	.balign 4
	.asciz "WBC to WiiFit\n"
	.balign 4
	.asciz " %02x %02x %02x %02x %02x %02x\n"
	.asciz " %02x %02x %02x %02x %02x %02x %02x %02x\n"
	.balign 4
	.asciz " %02x%02x%02x%02x\n"
	.balign 4
	.asciz "WARNING: Illigal status\n"
	.balign 4


.global lbl_805627BC
lbl_805627BC:
	.asciz "__wudDeleteFlushCallback() : %d, Delete: %d\n"
	.balign 4
	.asciz "hci_version   : %02x\n"
	.balign 4
	.asciz "hci_revision  : %04x\n"
	.balign 4
	.asciz "lmp_version   : %02x\n"
	.balign 4
	.asciz "lmp_subversion: %04x\n"
	.balign 4
	.asciz "manufacturer  : %04x\n"
	.balign 4
	.asciz " ==> 2045 firmware ver.002.003.014.%d\n"
	.balign 4


.global lbl_8056288C
lbl_8056288C:
	.asciz "__wudInitFlushCallback() : %d, Init: %d\n"
	.balign 4
	.asciz "name : %s\n"
	.balign 4
	.asciz "Nintendo RVL-CNT-01"
	.asciz "Error: the workarea for synchronizing WBC pairing information is not allocated.\n"
	.balign 4
	.4byte 0
	.asciz "NANDInit. [%d]\n"
	.asciz "CRC  = %d:%08x\n"
	.asciz "CRC' = %d:%08x\n"
	.asciz "CRC Error on WiiFit SaveData.\n"
	.balign 4
	.asciz "WiiFit does not register WBC yet.\n"
	.balign 4
	.asciz "LinkKey saved in WiiFit SaveData is invalid.\n"
	.balign 4
	.asciz "WBC from WiiFit\n"
	.balign 4


.global lbl_805629E8
lbl_805629E8:
	.asciz "__wudShutdownFlushCallback() : %d, Shutdown: %d\n"
	.balign 4
	.4byte 0


.global lbl_80562A20
lbl_80562A20:
	.asciz "__wudClearControlBlock\n"


.global lbl_80562A38
lbl_80562A38:
	.asciz "BTA_Init() is started\n"
	.balign 4


.global lbl_80562A50
lbl_80562A50:
	.asciz "BTA_Init() is done\n"


.global lbl_80562A64
lbl_80562A64:
	.asciz "WUDShutdown()\n"
	.balign 4


.global lbl_80562A74
lbl_80562A74:
	.asciz "WUDSetSyncDeviceCallback\n"
	.balign 4
	.asciz "WUDSetClearDeviceCallback\n"
	.balign 4
	.4byte 0
	.asciz "WUDStartSyncSpDevice()\n"
	.asciz "WUDStartClearDevice()\n"
	.balign 4


.global lbl_80562AE0
lbl_80562AE0:
	.asciz "WUDSetDisableChannel()\n"


.global lbl_80562AF8
lbl_80562AF8:
	.asciz "BTM_SetAfhChannels() : %d\n"
	.balign 4


.global lbl_80562B14
lbl_80562B14:
	.asciz "WUDSetHidRecvCallback()\n"
	.balign 4


.global lbl_80562B30
lbl_80562B30:
	.asciz "WUDSetHidConnCallback()\n"
	.balign 4


.global lbl_80562B4C
lbl_80562B4C:
	.asciz "Initialize the BCM2045 firmware complete.\n"
	.balign 4
	.asciz "Reset again!\n"
	.balign 4
	.asciz "Install the patches\n"
	.balign 4
	.asciz "Download the patch codes [%d]\n"
	.balign 4
	.asciz "RemovePatch Callback\n"
	.balign 4


.global lbl_80562BD8
lbl_80562BD8:
	.asciz "SuperPeekPoke Callback\n"


.global lbl_80562BF0
lbl_80562BF0:
	.asciz "RemovePatch\n"
	.balign 4
	.asciz "__wudAppendRuntimePatch()\n"
	.balign 4
	.asciz "SuperPeekPoke\n"
	.balign 4


.global lbl_80562C2C
lbl_80562C2C:
	.asciz "start __wudInitSub()\n"
	.balign 4
	.asciz "BTA_DmAddDevice(): %d\n"
	.balign 4
	.4byte 0
	.asciz "BTA_HhAddDev()\n"
	.asciz "WUDiRemoveDevice : \n"
	.balign 4
	.asciz " handle : %d,  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "remove device info from database.\n"
	.balign 4
	.asciz "BTA_HhRemoveDev()\n"
	.balign 4
	.asciz " handle : %d\n"
	.balign 4
	.asciz "BTA_DmRemoveDevice(): %d\n"
	.balign 4


.global lbl_80562D24
lbl_80562D24:
	.asciz "WARNING: USB_CLOSE_FAILURE!\n"
	.balign 4
	.asciz "__wudCleanupStackCallback: "
	.asciz "BTA_ENABLE_EVT\n"
	.asciz "host : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "BTA_DISABLE_EVT\n"
	.balign 4
	.asciz "BTA_DM_PIN_REQ_EVT\n"
	.asciz "BTA_DM_AUTH_CMPL_EVT\n"
	.balign 4
	.asciz "  addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.asciz "  key  : %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "  result = %d\n"
	.balign 4
	.asciz "BTA_DM_AUTHORIZE_EVT\n"
	.balign 4
	.asciz "BTA_DM_LINK_UP_EVT\n"
	.asciz "   addr : %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "%s --> %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "not paired"
	.balign 4
	.asciz "4 links exist"
	.balign 4
	.asciz "BTA_DM_LINK_DOWN_EVT\n"
	.balign 4
	.asciz "result: %d\n"
	.asciz "this device in not paired\n"
	.balign 4
	.asciz "WARNING: link num count is reset.\n"
	.balign 4
	.asciz "BTA_DM_SIG_STRENGTH_EVT\n"
	.balign 4
	.asciz "BTA_DM_BUSY_LEVEL_EVT\n"
	.balign 4


.global lbl_80562FA0
lbl_80562FA0:
	# ROM: 0x55F0A0
	.4byte lbl_8037AE1C
	.4byte lbl_8037AEC8
	.4byte lbl_8037AEE4
	.4byte lbl_8037AF84
	.4byte lbl_8037B090
	.4byte lbl_8037B0A0
	.4byte lbl_8037B18C
	.4byte lbl_8037B2E0
	.4byte lbl_8037B2F0
	.asciz "INQUIRY RESULT: %02x:%02x:%02x:%02x:%02x:%02x   %02x%02x%02x   %d\n"
	.balign 4
	.asciz "INQUIRY_COMPLETED\n"
	.balign 4
	.asciz "DISCOVER RESULT:  %02x:%02x:%02x:%02x:%02x:%02x   %s (%04x)\n"
	.balign 4
	.asciz "DISCOVER COMPLETED\n"
	.asciz "SEARCH CANCEL\n\n"
	.asciz "Warning: Search Callback returns invalid event\n"
	.asciz "__wudProcSyncEvent()\n"
	.balign 4
	.asciz "__wudProcDeleteEvent()\n"
	.asciz "MODULE FATAL ERROR\n"


.global lbl_805630F4
lbl_805630F4:
	.asciz "__wudDeviceStatusEventStackCallback\n"
	.balign 4


.global lbl_8056311C
lbl_8056311C:
	.asciz "---- WARNING: USB FATAL ERROR! ----\n"
	.balign 4
	.asciz "BTM_CB_EVT_RETURN_LINK_KEYS\n"
	.balign 4
	.asciz "BD_ADDR:  %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "LINKKEY: %02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "this device is not stored in NAND\n"
	.balign 4
	.asciz "   LAST: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.asciz "BTM_CB_EVT_READ_STORED_LINK_KEYS\n"
	.balign 4
	.asciz "  status: %d  max_keys: %d  num_keys: %d\n"
	.balign 4
	.asciz "BTM_CB_EVT_WRITE_STORED_LINK_KEYS\n"
	.balign 4
	.asciz "  status: %d  num_keys: %d\n"
	.asciz "BTM_CB_EVT_DELETE_STORED_LINK_KEYS\n"
	.asciz "WARNING: no entry is deleted\n"
	.balign 4
	.asciz "Unknown event\n"
	.balign 4
	.asciz "__wudPowerMangeEventStackCallback\n"
	.balign 4
	.asciz "hci_status = %d\n"
	.balign 4
	.asciz "Unknown device is connected and changes the connection type!!!!\n"
	.balign 4
	.asciz " addr = %02x:%02x:%02x:%02x:%02x:%02x,  status = %d\n"
	.balign 4
	.asciz "_WUDEnableTestMode\n"
	.asciz "_WUDStartSyncDevice()\n"
	.balign 4
	.asciz "_WUDDeleteStoreDevice()\n"
	.balign 4
	.asciz "dev number = %d\n"
	.balign 4
	.asciz "Not Found"
	.balign 4
	.asciz "Found the registered WBC\n"
	.balign 4
	.asciz "Removed\n"
	.balign 4
	.asciz "Not Found WBC\n"
	.balign 4


.global lbl_80563470
lbl_80563470:
	.asciz "BTA_HH_ENABLE_EVT\n"
	.balign 4
	.asciz "BTA_HH_DISABLE_EVT\n"
	.asciz "BTA_HH_OPEN_EVT\n"
	.balign 4
	.asciz "handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "Nintendo RVL-CNT"
	.balign 4
	.4byte 0
	.asciz "error code: %d\n"
	.asciz "BTA_HH_CLOSE_EVT\n"
	.balign 4
	.asciz "device handle : %d   status = %d\n"
	.balign 4
	.asciz "BTA_HH_ADD_DEV_EVT\n"
	.asciz "result: %d, handle: %d, addr: %02x:%02x:%02x:%02x:%02x:%02x\n"
	.balign 4
	.asciz "BTA_HH_RMV_DEV_EVT\n"
	.asciz "WARNING: link num count is modified.\n"
	.balign 4
	.asciz "BTA_HH_SET_RPT_EVT\n"
	.asciz "BTA_HH_GET_RPT_EVT\n"
	.asciz "BTA_HH_SET_PROTO_EVT\n"
	.balign 4
	.asciz "BTA_HH_GET_PROTO_EVT\n"
	.balign 4
	.asciz "BTA_HH_SET_IDLE_EVT\n"
	.balign 4
	.asciz "BTA_HH_GET_IDLE_EVT\n"
	.balign 4
	.asciz "BTA_HH_GET_DCSP_EVT\n"
	.balign 4
	.asciz "BTA_HH_VS_UNPLUG_EVT\n"
	.balign 4


.global lbl_80563688
lbl_80563688:
	# ROM: 0x55F788
	.4byte lbl_8037C030
	.4byte lbl_8037C04C
	.4byte lbl_8037C05C
	.4byte lbl_8037C2B8
	.4byte lbl_8037C4D4
	.4byte lbl_8037C4C4
	.4byte lbl_8037C4F4
	.4byte lbl_8037C4E4
	.4byte lbl_8037C514
	.4byte lbl_8037C504
	.4byte lbl_8037C524
	.4byte lbl_8037C398
	.4byte lbl_8037C40C
	.4byte lbl_8037C534
	.4byte lbl_8037C540
	.4byte lbl_8037C44C


.global lbl_805636C8
lbl_805636C8:
	.asciz "Invalid app_id [%d]\n"
	.balign 4


.global lbl_805636E0
lbl_805636E0:
	.asciz "bta_hh_co_open()\n"
	.balign 4


.global lbl_805636F4
lbl_805636F4:
	.asciz "bta_hh_co_close()\n"
	.balign 4


.global adxm_framework
adxm_framework:
	# ROM: 0x55F808
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_80563710
lbl_80563710:
	# ROM: 0x55F810
	.4byte 0x00000018
	.4byte 0x00000018
	.4byte 0x00000010
	.4byte 0


.global lbl_80563720
lbl_80563720:
	# ROM: 0x55F820
	.4byte 0x00000019


.global lbl_80563724
lbl_80563724:
	# ROM: 0x55F824
	.4byte 0x00000001


.global lbl_80563728
lbl_80563728:
	# ROM: 0x55F828
	.4byte lbl_8051AA78


.global lbl_8056372C
lbl_8056372C:
	# ROM: 0x55F82C
	.4byte lbl_8051AA80

.global lbl_80563730
lbl_80563730:
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F2BEB4A
	.4byte 0xBF4D9F02
	.4byte 0xBF039C3E
	.4byte 0x3F676BD8
	.4byte 0x3EAC7CD5
	.4byte 0xBF7853F9
	.4byte 0xBE164085
	.4byte 0x3F7FB10E
	.4byte 0xBD48FB2E
	.4byte 0xBF7D3AAC
	.4byte 0x3E78CFCD
	.4byte 0x3F710909
	.4byte 0xBEDAE881
	.4byte 0xBF5B941A
	.4byte 0x3F187FC0
	.4byte 0x3F3DAEF9
	.4byte 0xBF3DAEF9
	.4byte 0xBF187FC0
	.4byte 0x3F5B941A
	.4byte 0x3EDAE881
	.4byte 0xBF710909
	.4byte 0xBE78CFCD
	.4byte 0x3F7D3AAC
	.4byte 0x3D48FB2E
	.4byte 0xBF7FB10E
	.4byte 0x3E164085
	.4byte 0x3F7853F9
	.4byte 0xBEAC7CD5
	.4byte 0xBF676BD8
	.4byte 0x3F039C3E
	.4byte 0x3F4D9F02
	.4byte 0xBF2BEB4A
	.4byte 0x3F226799
	.4byte 0xBF61C598
	.4byte 0xBE94A032
	.4byte 0x3F7EC46D
	.4byte 0xBDC8BD36
	.4byte 0xBF74FA0C
	.4byte 0x3EF15AE9
	.4byte 0x3F45E402
	.4byte 0xBF45E402
	.4byte 0xBEF15AE9
	.4byte 0x3F74FA0C
	.4byte 0x3DC8BD36
	.4byte 0xBF7EC46D
	.4byte 0x3E94A032
	.4byte 0x3F61C598
	.4byte 0xBF226799
	.4byte 0xBF226799
	.4byte 0x3F61C598
	.4byte 0x3E94A032
	.4byte 0xBF7EC46D
	.4byte 0x3DC8BD36
	.4byte 0x3F74FA0C
	.4byte 0xBEF15AE9
	.4byte 0xBF45E402
	.4byte 0x3F45E402
	.4byte 0x3EF15AE9
	.4byte 0xBF74FA0C
	.4byte 0xBDC8BD36
	.4byte 0x3F7EC46D
	.4byte 0xBE94A032
	.4byte 0xBF61C598
	.4byte 0x3F226799
	.4byte 0x3F187FC0
	.4byte 0xBF710909
	.4byte 0xBD48FB2E
	.4byte 0x3F7853F9
	.4byte 0xBF039C3E
	.4byte 0xBF2BEB4A
	.4byte 0x3F676BD8
	.4byte 0x3E164085
	.4byte 0xBF7D3AAC
	.4byte 0x3EDAE881
	.4byte 0x3F3DAEF9
	.4byte 0xBF5B941A
	.4byte 0xBE78CFCD
	.4byte 0x3F7FB10E
	.4byte 0xBEAC7CD5
	.4byte 0xBF4D9F02
	.4byte 0x3F4D9F02
	.4byte 0x3EAC7CD5
	.4byte 0xBF7FB10E
	.4byte 0x3E78CFCD
	.4byte 0x3F5B941A
	.4byte 0xBF3DAEF9
	.4byte 0xBEDAE881
	.4byte 0x3F7D3AAC
	.4byte 0xBE164085
	.4byte 0xBF676BD8
	.4byte 0x3F2BEB4A
	.4byte 0x3F039C3E
	.4byte 0xBF7853F9
	.4byte 0x3D48FB2E
	.4byte 0x3F710909
	.4byte 0xBF187FC0
	.4byte 0x3F0E39D9
	.4byte 0xBF7B14BF
	.4byte 0x3E47C5C0
	.4byte 0x3F54DB31
	.4byte 0xBF54DB31
	.4byte 0xBE47C5C0
	.4byte 0x3F7B14BF
	.4byte 0xBF0E39D9
	.4byte 0xBF0E39D9
	.4byte 0x3F7B14BF
	.4byte 0xBE47C5C0
	.4byte 0xBF54DB31
	.4byte 0x3F54DB31
	.4byte 0x3E47C5C0
	.4byte 0xBF7B14BF
	.4byte 0x3F0E39D9
	.4byte 0x3F0E39D9
	.4byte 0xBF7B14BF
	.4byte 0x3E47C5C0
	.4byte 0x3F54DB31
	.4byte 0xBF54DB31
	.4byte 0xBE47C5C0
	.4byte 0x3F7B14BF
	.4byte 0xBF0E39D9
	.4byte 0xBF0E39D9
	.4byte 0x3F7B14BF
	.4byte 0xBE47C5C0
	.4byte 0xBF54DB31
	.4byte 0x3F54DB31
	.4byte 0x3E47C5C0
	.4byte 0xBF7B14BF
	.4byte 0x3F0E39D9
	.4byte 0x3F039C3E
	.4byte 0xBF7FB10E
	.4byte 0x3EDAE881
	.4byte 0x3F187FC0
	.4byte 0xBF7D3AAC
	.4byte 0x3EAC7CD5
	.4byte 0x3F2BEB4A
	.4byte 0xBF7853F9
	.4byte 0x3E78CFCD
	.4byte 0x3F3DAEF9
	.4byte 0xBF710909
	.4byte 0x3E164085
	.4byte 0x3F4D9F02
	.4byte 0xBF676BD8
	.4byte 0x3D48FB2E
	.4byte 0x3F5B941A
	.4byte 0xBF5B941A
	.4byte 0xBD48FB2E
	.4byte 0x3F676BD8
	.4byte 0xBF4D9F02
	.4byte 0xBE164085
	.4byte 0x3F710909
	.4byte 0xBF3DAEF9
	.4byte 0xBE78CFCD
	.4byte 0x3F7853F9
	.4byte 0xBF2BEB4A
	.4byte 0xBEAC7CD5
	.4byte 0x3F7D3AAC
	.4byte 0xBF187FC0
	.4byte 0xBEDAE881
	.4byte 0x3F7FB10E
	.4byte 0xBF039C3E
	.4byte 0x3EF15AE9
	.4byte 0xBF7EC46D
	.4byte 0x3F226799
	.4byte 0x3E94A032
	.4byte 0xBF74FA0C
	.4byte 0x3F45E402
	.4byte 0x3DC8BD36
	.4byte 0xBF61C598
	.4byte 0x3F61C598
	.4byte 0xBDC8BD36
	.4byte 0xBF45E402
	.4byte 0x3F74FA0C
	.4byte 0xBE94A032
	.4byte 0xBF226799
	.4byte 0x3F7EC46D
	.4byte 0xBEF15AE9
	.4byte 0xBEF15AE9
	.4byte 0x3F7EC46D
	.4byte 0xBF226799
	.4byte 0xBE94A032
	.4byte 0x3F74FA0C
	.4byte 0xBF45E402
	.4byte 0xBDC8BD36
	.4byte 0x3F61C598
	.4byte 0xBF61C598
	.4byte 0x3DC8BD36
	.4byte 0x3F45E402
	.4byte 0xBF74FA0C
	.4byte 0x3E94A032
	.4byte 0x3F226799
	.4byte 0xBF7EC46D
	.4byte 0x3EF15AE9
	.4byte 0x3EDAE881
	.4byte 0xBF7853F9
	.4byte 0x3F4D9F02
	.4byte 0xBD48FB2E
	.4byte 0xBF3DAEF9
	.4byte 0x3F7D3AAC
	.4byte 0xBF039C3E
	.4byte 0xBEAC7CD5
	.4byte 0x3F710909
	.4byte 0xBF5B941A
	.4byte 0x3E164085
	.4byte 0x3F2BEB4A
	.4byte 0xBF7FB10E
	.4byte 0x3F187FC0
	.4byte 0x3E78CFCD
	.4byte 0xBF676BD8
	.4byte 0x3F676BD8
	.4byte 0xBE78CFCD
	.4byte 0xBF187FC0
	.4byte 0x3F7FB10E
	.4byte 0xBF2BEB4A
	.4byte 0xBE164085
	.4byte 0x3F5B941A
	.4byte 0xBF710909
	.4byte 0x3EAC7CD5
	.4byte 0x3F039C3E
	.4byte 0xBF7D3AAC
	.4byte 0x3F3DAEF9
	.4byte 0x3D48FB2E
	.4byte 0xBF4D9F02
	.4byte 0x3F7853F9
	.4byte 0xBEDAE881
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EAC7CD5
	.4byte 0xBF5B941A
	.4byte 0x3F7D3AAC
	.4byte 0xBF2BEB4A
	.4byte 0x3D48FB2E
	.4byte 0x3F187FC0
	.4byte 0xBF7853F9
	.4byte 0x3F676BD8
	.4byte 0xBEDAE881
	.4byte 0xBE78CFCD
	.4byte 0x3F4D9F02
	.4byte 0xBF7FB10E
	.4byte 0x3F3DAEF9
	.4byte 0xBE164085
	.4byte 0xBF039C3E
	.4byte 0x3F710909
	.4byte 0xBF710909
	.4byte 0x3F039C3E
	.4byte 0x3E164085
	.4byte 0xBF3DAEF9
	.4byte 0x3F7FB10E
	.4byte 0xBF4D9F02
	.4byte 0x3E78CFCD
	.4byte 0x3EDAE881
	.4byte 0xBF676BD8
	.4byte 0x3F7853F9
	.4byte 0xBF187FC0
	.4byte 0xBD48FB2E
	.4byte 0x3F2BEB4A
	.4byte 0xBF7D3AAC
	.4byte 0x3F5B941A
	.4byte 0xBEAC7CD5
	.4byte 0x3E94A032
	.4byte 0xBF45E402
	.4byte 0x3F7EC46D
	.4byte 0xBF61C598
	.4byte 0x3EF15AE9
	.4byte 0x3DC8BD36
	.4byte 0xBF226799
	.4byte 0x3F74FA0C
	.4byte 0xBF74FA0C
	.4byte 0x3F226799
	.4byte 0xBDC8BD36
	.4byte 0xBEF15AE9
	.4byte 0x3F61C598
	.4byte 0xBF7EC46D
	.4byte 0x3F45E402
	.4byte 0xBE94A032
	.4byte 0xBE94A032
	.4byte 0x3F45E402
	.4byte 0xBF7EC46D
	.4byte 0x3F61C598
	.4byte 0xBEF15AE9
	.4byte 0xBDC8BD36
	.4byte 0x3F226799
	.4byte 0xBF74FA0C
	.4byte 0x3F74FA0C
	.4byte 0xBF226799
	.4byte 0x3DC8BD36
	.4byte 0x3EF15AE9
	.4byte 0xBF61C598
	.4byte 0x3F7EC46D
	.4byte 0xBF45E402
	.4byte 0x3E94A032
	.4byte 0x3E78CFCD
	.4byte 0xBF2BEB4A
	.4byte 0x3F710909
	.4byte 0xBF7D3AAC
	.4byte 0x3F4D9F02
	.4byte 0xBEDAE881
	.4byte 0xBD48FB2E
	.4byte 0x3F039C3E
	.4byte 0xBF5B941A
	.4byte 0x3F7FB10E
	.4byte 0xBF676BD8
	.4byte 0x3F187FC0
	.4byte 0xBE164085
	.4byte 0xBEAC7CD5
	.4byte 0x3F3DAEF9
	.4byte 0xBF7853F9
	.4byte 0x3F7853F9
	.4byte 0xBF3DAEF9
	.4byte 0x3EAC7CD5
	.4byte 0x3E164085
	.4byte 0xBF187FC0
	.4byte 0x3F676BD8
	.4byte 0xBF7FB10E
	.4byte 0x3F5B941A
	.4byte 0xBF039C3E
	.4byte 0x3D48FB2E
	.4byte 0x3EDAE881
	.4byte 0xBF4D9F02
	.4byte 0x3F7D3AAC
	.4byte 0xBF710909
	.4byte 0x3F2BEB4A
	.4byte 0xBE78CFCD
	.4byte 0x3E47C5C0
	.4byte 0xBF0E39D9
	.4byte 0x3F54DB31
	.4byte 0xBF7B14BF
	.4byte 0x3F7B14BF
	.4byte 0xBF54DB31
	.4byte 0x3F0E39D9
	.4byte 0xBE47C5C0
	.4byte 0xBE47C5C0
	.4byte 0x3F0E39D9
	.4byte 0xBF54DB31
	.4byte 0x3F7B14BF
	.4byte 0xBF7B14BF
	.4byte 0x3F54DB31
	.4byte 0xBF0E39D9
	.4byte 0x3E47C5C0
	.4byte 0x3E47C5C0
	.4byte 0xBF0E39D9
	.4byte 0x3F54DB31
	.4byte 0xBF7B14BF
	.4byte 0x3F7B14BF
	.4byte 0xBF54DB31
	.4byte 0x3F0E39D9
	.4byte 0xBE47C5C0
	.4byte 0xBE47C5C0
	.4byte 0x3F0E39D9
	.4byte 0xBF54DB31
	.4byte 0x3F7B14BF
	.4byte 0xBF7B14BF
	.4byte 0x3F54DB31
	.4byte 0xBF0E39D9
	.4byte 0x3E47C5C0
	.4byte 0x3E164085
	.4byte 0xBEDAE881
	.4byte 0x3F2BEB4A
	.4byte 0xBF5B941A
	.4byte 0x3F7853F9
	.4byte 0xBF7FB10E
	.4byte 0x3F710909
	.4byte 0xBF4D9F02
	.4byte 0x3F187FC0
	.4byte 0xBEAC7CD5
	.4byte 0x3D48FB2E
	.4byte 0x3E78CFCD
	.4byte 0xBF039C3E
	.4byte 0x3F3DAEF9
	.4byte 0xBF676BD8
	.4byte 0x3F7D3AAC
	.4byte 0xBF7D3AAC
	.4byte 0x3F676BD8
	.4byte 0xBF3DAEF9
	.4byte 0x3F039C3E
	.4byte 0xBE78CFCD
	.4byte 0xBD48FB2E
	.4byte 0x3EAC7CD5
	.4byte 0xBF187FC0
	.4byte 0x3F4D9F02
	.4byte 0xBF710909
	.4byte 0x3F7FB10E
	.4byte 0xBF7853F9
	.4byte 0x3F5B941A
	.4byte 0xBF2BEB4A
	.4byte 0x3EDAE881
	.4byte 0xBE164085
	.4byte 0x3DC8BD36
	.4byte 0xBE94A032
	.4byte 0x3EF15AE9
	.4byte 0xBF226799
	.4byte 0x3F45E402
	.4byte 0xBF61C598
	.4byte 0x3F74FA0C
	.4byte 0xBF7EC46D
	.4byte 0x3F7EC46D
	.4byte 0xBF74FA0C
	.4byte 0x3F61C598
	.4byte 0xBF45E402
	.4byte 0x3F226799
	.4byte 0xBEF15AE9
	.4byte 0x3E94A032
	.4byte 0xBDC8BD36
	.4byte 0xBDC8BD36
	.4byte 0x3E94A032
	.4byte 0xBEF15AE9
	.4byte 0x3F226799
	.4byte 0xBF45E402
	.4byte 0x3F61C598
	.4byte 0xBF74FA0C
	.4byte 0x3F7EC46D
	.4byte 0xBF7EC46D
	.4byte 0x3F74FA0C
	.4byte 0xBF61C598
	.4byte 0x3F45E402
	.4byte 0xBF226799
	.4byte 0x3EF15AE9
	.4byte 0xBE94A032
	.4byte 0x3DC8BD36
	.4byte 0x3D48FB2E
	.4byte 0xBE164085
	.4byte 0x3E78CFCD
	.4byte 0xBEAC7CD5
	.4byte 0x3EDAE881
	.4byte 0xBF039C3E
	.4byte 0x3F187FC0
	.4byte 0xBF2BEB4A
	.4byte 0x3F3DAEF9
	.4byte 0xBF4D9F02
	.4byte 0x3F5B941A
	.4byte 0xBF676BD8
	.4byte 0x3F710909
	.4byte 0xBF7853F9
	.4byte 0x3F7D3AAC
	.4byte 0xBF7FB10E
	.4byte 0x3F7FB10E
	.4byte 0xBF7D3AAC
	.4byte 0x3F7853F9
	.4byte 0xBF710909
	.4byte 0x3F676BD8
	.4byte 0xBF5B941A
	.4byte 0x3F4D9F02
	.4byte 0xBF3DAEF9
	.4byte 0x3F2BEB4A
	.4byte 0xBF187FC0
	.4byte 0x3F039C3E
	.4byte 0xBEDAE881
	.4byte 0x3EAC7CD5
	.4byte 0xBE78CFCD
	.4byte 0x3E164085
	.4byte 0xBD48FB2E
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0
	.4byte 0x80000000
	.4byte 0xBD48FB2E
	.4byte 0x3E164085
	.4byte 0xBE78CFCD
	.4byte 0x3EAC7CD5
	.4byte 0xBEDAE881
	.4byte 0x3F039C3E
	.4byte 0xBF187FC0
	.4byte 0x3F2BEB4A
	.4byte 0xBF3DAEF9
	.4byte 0x3F4D9F02
	.4byte 0xBF5B941A
	.4byte 0x3F676BD8
	.4byte 0xBF710909
	.4byte 0x3F7853F9
	.4byte 0xBF7D3AAC
	.4byte 0x3F7FB10E
	.4byte 0xBF7FB10E
	.4byte 0x3F7D3AAC
	.4byte 0xBF7853F9
	.4byte 0x3F710909
	.4byte 0xBF676BD8
	.4byte 0x3F5B941A
	.4byte 0xBF4D9F02
	.4byte 0x3F3DAEF9
	.4byte 0xBF2BEB4A
	.4byte 0x3F187FC0
	.4byte 0xBF039C3E
	.4byte 0x3EDAE881
	.4byte 0xBEAC7CD5
	.4byte 0x3E78CFCD
	.4byte 0xBE164085
	.4byte 0x3D48FB2E
	.4byte 0xBDC8BD36
	.4byte 0x3E94A032
	.4byte 0xBEF15AE9
	.4byte 0x3F226799
	.4byte 0xBF45E402
	.4byte 0x3F61C598
	.4byte 0xBF74FA0C
	.4byte 0x3F7EC46D
	.4byte 0xBF7EC46D
	.4byte 0x3F74FA0C
	.4byte 0xBF61C598
	.4byte 0x3F45E402
	.4byte 0xBF226799
	.4byte 0x3EF15AE9
	.4byte 0xBE94A032
	.4byte 0x3DC8BD36
	.4byte 0x3DC8BD36
	.4byte 0xBE94A032
	.4byte 0x3EF15AE9
	.4byte 0xBF226799
	.4byte 0x3F45E402
	.4byte 0xBF61C598
	.4byte 0x3F74FA0C
	.4byte 0xBF7EC46D
	.4byte 0x3F7EC46D
	.4byte 0xBF74FA0C
	.4byte 0x3F61C598
	.4byte 0xBF45E402
	.4byte 0x3F226799
	.4byte 0xBEF15AE9
	.4byte 0x3E94A032
	.4byte 0xBDC8BD36
	.4byte 0xBE164085
	.4byte 0x3EDAE881
	.4byte 0xBF2BEB4A
	.4byte 0x3F5B941A
	.4byte 0xBF7853F9
	.4byte 0x3F7FB10E
	.4byte 0xBF710909
	.4byte 0x3F4D9F02
	.4byte 0xBF187FC0
	.4byte 0x3EAC7CD5
	.4byte 0xBD48FB2E
	.4byte 0xBE78CFCD
	.4byte 0x3F039C3E
	.4byte 0xBF3DAEF9
	.4byte 0x3F676BD8
	.4byte 0xBF7D3AAC
	.4byte 0x3F7D3AAC
	.4byte 0xBF676BD8
	.4byte 0x3F3DAEF9
	.4byte 0xBF039C3E
	.4byte 0x3E78CFCD
	.4byte 0x3D48FB2E
	.4byte 0xBEAC7CD5
	.4byte 0x3F187FC0
	.4byte 0xBF4D9F02
	.4byte 0x3F710909
	.4byte 0xBF7FB10E
	.4byte 0x3F7853F9
	.4byte 0xBF5B941A
	.4byte 0x3F2BEB4A
	.4byte 0xBEDAE881
	.4byte 0x3E164085
	.4byte 0xBE47C5C0
	.4byte 0x3F0E39D9
	.4byte 0xBF54DB31
	.4byte 0x3F7B14BF
	.4byte 0xBF7B14BF
	.4byte 0x3F54DB31
	.4byte 0xBF0E39D9
	.4byte 0x3E47C5C0
	.4byte 0x3E47C5C0
	.4byte 0xBF0E39D9
	.4byte 0x3F54DB31
	.4byte 0xBF7B14BF
	.4byte 0x3F7B14BF
	.4byte 0xBF54DB31
	.4byte 0x3F0E39D9
	.4byte 0xBE47C5C0
	.4byte 0xBE47C5C0
	.4byte 0x3F0E39D9
	.4byte 0xBF54DB31
	.4byte 0x3F7B14BF
	.4byte 0xBF7B14BF
	.4byte 0x3F54DB31
	.4byte 0xBF0E39D9
	.4byte 0x3E47C5C0
	.4byte 0x3E47C5C0
	.4byte 0xBF0E39D9
	.4byte 0x3F54DB31
	.4byte 0xBF7B14BF
	.4byte 0x3F7B14BF
	.4byte 0xBF54DB31
	.4byte 0x3F0E39D9
	.4byte 0xBE47C5C0
	.4byte 0xBE78CFCD
	.4byte 0x3F2BEB4A
	.4byte 0xBF710909
	.4byte 0x3F7D3AAC
	.4byte 0xBF4D9F02
	.4byte 0x3EDAE881
	.4byte 0x3D48FB2E
	.4byte 0xBF039C3E
	.4byte 0x3F5B941A
	.4byte 0xBF7FB10E
	.4byte 0x3F676BD8
	.4byte 0xBF187FC0
	.4byte 0x3E164085
	.4byte 0x3EAC7CD5
	.4byte 0xBF3DAEF9
	.4byte 0x3F7853F9
	.4byte 0xBF7853F9
	.4byte 0x3F3DAEF9
	.4byte 0xBEAC7CD5
	.4byte 0xBE164085
	.4byte 0x3F187FC0
	.4byte 0xBF676BD8
	.4byte 0x3F7FB10E
	.4byte 0xBF5B941A
	.4byte 0x3F039C3E
	.4byte 0xBD48FB2E
	.4byte 0xBEDAE881
	.4byte 0x3F4D9F02
	.4byte 0xBF7D3AAC
	.4byte 0x3F710909
	.4byte 0xBF2BEB4A
	.4byte 0x3E78CFCD
	.4byte 0xBE94A032
	.4byte 0x3F45E402
	.4byte 0xBF7EC46D
	.4byte 0x3F61C598
	.4byte 0xBEF15AE9
	.4byte 0xBDC8BD36
	.4byte 0x3F226799
	.4byte 0xBF74FA0C
	.4byte 0x3F74FA0C
	.4byte 0xBF226799
	.4byte 0x3DC8BD36
	.4byte 0x3EF15AE9
	.4byte 0xBF61C598
	.4byte 0x3F7EC46D
	.4byte 0xBF45E402
	.4byte 0x3E94A032
	.4byte 0x3E94A032
	.4byte 0xBF45E402
	.4byte 0x3F7EC46D
	.4byte 0xBF61C598
	.4byte 0x3EF15AE9
	.4byte 0x3DC8BD36
	.4byte 0xBF226799
	.4byte 0x3F74FA0C
	.4byte 0xBF74FA0C
	.4byte 0x3F226799
	.4byte 0xBDC8BD36
	.4byte 0xBEF15AE9
	.4byte 0x3F61C598
	.4byte 0xBF7EC46D
	.4byte 0x3F45E402
	.4byte 0xBE94A032
	.4byte 0xBEAC7CD5
	.4byte 0x3F5B941A
	.4byte 0xBF7D3AAC
	.4byte 0x3F2BEB4A
	.4byte 0xBD48FB2E
	.4byte 0xBF187FC0
	.4byte 0x3F7853F9
	.4byte 0xBF676BD8
	.4byte 0x3EDAE881
	.4byte 0x3E78CFCD
	.4byte 0xBF4D9F02
	.4byte 0x3F7FB10E
	.4byte 0xBF3DAEF9
	.4byte 0x3E164085
	.4byte 0x3F039C3E
	.4byte 0xBF710909
	.4byte 0x3F710909
	.4byte 0xBF039C3E
	.4byte 0xBE164085
	.4byte 0x3F3DAEF9
	.4byte 0xBF7FB10E
	.4byte 0x3F4D9F02
	.4byte 0xBE78CFCD
	.4byte 0xBEDAE881
	.4byte 0x3F676BD8
	.4byte 0xBF7853F9
	.4byte 0x3F187FC0
	.4byte 0x3D48FB2E
	.4byte 0xBF2BEB4A
	.4byte 0x3F7D3AAC
	.4byte 0xBF5B941A
	.4byte 0x3EAC7CD5
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEC3EF14
	.4byte 0x3F6C835E
	.4byte 0xBF6C835E
	.4byte 0x3EC3EF14
	.4byte 0x3EC3EF14
	.4byte 0xBF6C835E
	.4byte 0x3F6C835E
	.4byte 0xBEC3EF14
	.4byte 0xBEDAE881
	.4byte 0x3F7853F9
	.4byte 0xBF4D9F02
	.4byte 0x3D48FB2E
	.4byte 0x3F3DAEF9
	.4byte 0xBF7D3AAC
	.4byte 0x3F039C3E
	.4byte 0x3EAC7CD5
	.4byte 0xBF710909
	.4byte 0x3F5B941A
	.4byte 0xBE164085
	.4byte 0xBF2BEB4A
	.4byte 0x3F7FB10E
	.4byte 0xBF187FC0
	.4byte 0xBE78CFCD
	.4byte 0x3F676BD8
	.4byte 0xBF676BD8
	.4byte 0x3E78CFCD
	.4byte 0x3F187FC0
	.4byte 0xBF7FB10E
	.4byte 0x3F2BEB4A
	.4byte 0x3E164085
	.4byte 0xBF5B941A
	.4byte 0x3F710909
	.4byte 0xBEAC7CD5
	.4byte 0xBF039C3E
	.4byte 0x3F7D3AAC
	.4byte 0xBF3DAEF9
	.4byte 0xBD48FB2E
	.4byte 0x3F4D9F02
	.4byte 0xBF7853F9
	.4byte 0x3EDAE881
	.4byte 0xBEF15AE9
	.4byte 0x3F7EC46D
	.4byte 0xBF226799
	.4byte 0xBE94A032
	.4byte 0x3F74FA0C
	.4byte 0xBF45E402
	.4byte 0xBDC8BD36
	.4byte 0x3F61C598
	.4byte 0xBF61C598
	.4byte 0x3DC8BD36
	.4byte 0x3F45E402
	.4byte 0xBF74FA0C
	.4byte 0x3E94A032
	.4byte 0x3F226799
	.4byte 0xBF7EC46D
	.4byte 0x3EF15AE9
	.4byte 0x3EF15AE9
	.4byte 0xBF7EC46D
	.4byte 0x3F226799
	.4byte 0x3E94A032
	.4byte 0xBF74FA0C
	.4byte 0x3F45E402
	.4byte 0x3DC8BD36
	.4byte 0xBF61C598
	.4byte 0x3F61C598
	.4byte 0xBDC8BD36
	.4byte 0xBF45E402
	.4byte 0x3F74FA0C
	.4byte 0xBE94A032
	.4byte 0xBF226799
	.4byte 0x3F7EC46D
	.4byte 0xBEF15AE9
	.4byte 0xBF039C3E
	.4byte 0x3F7FB10E
	.4byte 0xBEDAE881
	.4byte 0xBF187FC0
	.4byte 0x3F7D3AAC
	.4byte 0xBEAC7CD5
	.4byte 0xBF2BEB4A
	.4byte 0x3F7853F9
	.4byte 0xBE78CFCD
	.4byte 0xBF3DAEF9
	.4byte 0x3F710909
	.4byte 0xBE164085
	.4byte 0xBF4D9F02
	.4byte 0x3F676BD8
	.4byte 0xBD48FB2E
	.4byte 0xBF5B941A
	.4byte 0x3F5B941A
	.4byte 0x3D48FB2E
	.4byte 0xBF676BD8
	.4byte 0x3F4D9F02
	.4byte 0x3E164085
	.4byte 0xBF710909
	.4byte 0x3F3DAEF9
	.4byte 0x3E78CFCD
	.4byte 0xBF7853F9
	.4byte 0x3F2BEB4A
	.4byte 0x3EAC7CD5
	.4byte 0xBF7D3AAC
	.4byte 0x3F187FC0
	.4byte 0x3EDAE881
	.4byte 0xBF7FB10E
	.4byte 0x3F039C3E
	.4byte 0xBF0E39D9
	.4byte 0x3F7B14BF
	.4byte 0xBE47C5C0
	.4byte 0xBF54DB31
	.4byte 0x3F54DB31
	.4byte 0x3E47C5C0
	.4byte 0xBF7B14BF
	.4byte 0x3F0E39D9
	.4byte 0x3F0E39D9
	.4byte 0xBF7B14BF
	.4byte 0x3E47C5C0
	.4byte 0x3F54DB31
	.4byte 0xBF54DB31
	.4byte 0xBE47C5C0
	.4byte 0x3F7B14BF
	.4byte 0xBF0E39D9
	.4byte 0xBF0E39D9
	.4byte 0x3F7B14BF
	.4byte 0xBE47C5C0
	.4byte 0xBF54DB31
	.4byte 0x3F54DB31
	.4byte 0x3E47C5C0
	.4byte 0xBF7B14BF
	.4byte 0x3F0E39D9
	.4byte 0x3F0E39D9
	.4byte 0xBF7B14BF
	.4byte 0x3E47C5C0
	.4byte 0x3F54DB31
	.4byte 0xBF54DB31
	.4byte 0xBE47C5C0
	.4byte 0x3F7B14BF
	.4byte 0xBF0E39D9
	.4byte 0xBF187FC0
	.4byte 0x3F710909
	.4byte 0x3D48FB2E
	.4byte 0xBF7853F9
	.4byte 0x3F039C3E
	.4byte 0x3F2BEB4A
	.4byte 0xBF676BD8
	.4byte 0xBE164085
	.4byte 0x3F7D3AAC
	.4byte 0xBEDAE881
	.4byte 0xBF3DAEF9
	.4byte 0x3F5B941A
	.4byte 0x3E78CFCD
	.4byte 0xBF7FB10E
	.4byte 0x3EAC7CD5
	.4byte 0x3F4D9F02
	.4byte 0xBF4D9F02
	.4byte 0xBEAC7CD5
	.4byte 0x3F7FB10E
	.4byte 0xBE78CFCD
	.4byte 0xBF5B941A
	.4byte 0x3F3DAEF9
	.4byte 0x3EDAE881
	.4byte 0xBF7D3AAC
	.4byte 0x3E164085
	.4byte 0x3F676BD8
	.4byte 0xBF2BEB4A
	.4byte 0xBF039C3E
	.4byte 0x3F7853F9
	.4byte 0xBD48FB2E
	.4byte 0xBF710909
	.4byte 0x3F187FC0
	.4byte 0xBF226799
	.4byte 0x3F61C598
	.4byte 0x3E94A032
	.4byte 0xBF7EC46D
	.4byte 0x3DC8BD36
	.4byte 0x3F74FA0C
	.4byte 0xBEF15AE9
	.4byte 0xBF45E402
	.4byte 0x3F45E402
	.4byte 0x3EF15AE9
	.4byte 0xBF74FA0C
	.4byte 0xBDC8BD36
	.4byte 0x3F7EC46D
	.4byte 0xBE94A032
	.4byte 0xBF61C598
	.4byte 0x3F226799
	.4byte 0x3F226799
	.4byte 0xBF61C598
	.4byte 0xBE94A032
	.4byte 0x3F7EC46D
	.4byte 0xBDC8BD36
	.4byte 0xBF74FA0C
	.4byte 0x3EF15AE9
	.4byte 0x3F45E402
	.4byte 0xBF45E402
	.4byte 0xBEF15AE9
	.4byte 0x3F74FA0C
	.4byte 0x3DC8BD36
	.4byte 0xBF7EC46D
	.4byte 0x3E94A032
	.4byte 0x3F61C598
	.4byte 0xBF226799
	.4byte 0xBF2BEB4A
	.4byte 0x3F4D9F02
	.4byte 0x3F039C3E
	.4byte 0xBF676BD8
	.4byte 0xBEAC7CD5
	.4byte 0x3F7853F9
	.4byte 0x3E164085
	.4byte 0xBF7FB10E
	.4byte 0x3D48FB2E
	.4byte 0x3F7D3AAC
	.4byte 0xBE78CFCD
	.4byte 0xBF710909
	.4byte 0x3EDAE881
	.4byte 0x3F5B941A
	.4byte 0xBF187FC0
	.4byte 0xBF3DAEF9
	.4byte 0x3F3DAEF9
	.4byte 0x3F187FC0
	.4byte 0xBF5B941A
	.4byte 0xBEDAE881
	.4byte 0x3F710909
	.4byte 0x3E78CFCD
	.4byte 0xBF7D3AAC
	.4byte 0xBD48FB2E
	.4byte 0x3F7FB10E
	.4byte 0xBE164085
	.4byte 0xBF7853F9
	.4byte 0x3EAC7CD5
	.4byte 0x3F676BD8
	.4byte 0xBF039C3E
	.4byte 0xBF4D9F02
	.4byte 0x3F2BEB4A
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3504F4
	.4byte 0x3F3504F4
	.4byte 0x3F3504F4
	.4byte 0xBF3504F4
	.4byte 0xBF3DAEF9
	.4byte 0x3F187FC0
	.4byte 0x3F5B941A
	.4byte 0xBEDAE881
	.4byte 0xBF710909
	.4byte 0x3E78CFCD
	.4byte 0x3F7D3AAC
	.4byte 0xBD48FB2E
	.4byte 0xBF7FB10E
	.4byte 0xBE164085
	.4byte 0x3F7853F9
	.4byte 0x3EAC7CD5
	.4byte 0xBF676BD8
	.4byte 0xBF039C3E
	.4byte 0x3F4D9F02
	.4byte 0x3F2BEB4A
	.4byte 0xBF2BEB4A
	.4byte 0xBF4D9F02
	.4byte 0x3F039C3E
	.4byte 0x3F676BD8
	.4byte 0xBEAC7CD5
	.4byte 0xBF7853F9
	.4byte 0x3E164085
	.4byte 0x3F7FB10E
	.4byte 0x3D48FB2E
	.4byte 0xBF7D3AAC
	.4byte 0xBE78CFCD
	.4byte 0x3F710909
	.4byte 0x3EDAE881
	.4byte 0xBF5B941A
	.4byte 0xBF187FC0
	.4byte 0x3F3DAEF9
	.4byte 0xBF45E402
	.4byte 0x3EF15AE9
	.4byte 0x3F74FA0C
	.4byte 0xBDC8BD36
	.4byte 0xBF7EC46D
	.4byte 0xBE94A032
	.4byte 0x3F61C598
	.4byte 0x3F226799
	.4byte 0xBF226799
	.4byte 0xBF61C598
	.4byte 0x3E94A032
	.4byte 0x3F7EC46D
	.4byte 0x3DC8BD36
	.4byte 0xBF74FA0C
	.4byte 0xBEF15AE9
	.4byte 0x3F45E402
	.4byte 0x3F45E402
	.4byte 0xBEF15AE9
	.4byte 0xBF74FA0C
	.4byte 0x3DC8BD36
	.4byte 0x3F7EC46D
	.4byte 0x3E94A032
	.4byte 0xBF61C598
	.4byte 0xBF226799
	.4byte 0x3F226799
	.4byte 0x3F61C598
	.4byte 0xBE94A032
	.4byte 0xBF7EC46D
	.4byte 0xBDC8BD36
	.4byte 0x3F74FA0C
	.4byte 0x3EF15AE9
	.4byte 0xBF45E402
	.4byte 0xBF4D9F02
	.4byte 0x3EAC7CD5
	.4byte 0x3F7FB10E
	.4byte 0x3E78CFCD
	.4byte 0xBF5B941A
	.4byte 0xBF3DAEF9
	.4byte 0x3EDAE881
	.4byte 0x3F7D3AAC
	.4byte 0x3E164085
	.4byte 0xBF676BD8
	.4byte 0xBF2BEB4A
	.4byte 0x3F039C3E
	.4byte 0x3F7853F9
	.4byte 0x3D48FB2E
	.4byte 0xBF710909
	.4byte 0xBF187FC0
	.4byte 0x3F187FC0
	.4byte 0x3F710909
	.4byte 0xBD48FB2E
	.4byte 0xBF7853F9
	.4byte 0xBF039C3E
	.4byte 0x3F2BEB4A
	.4byte 0x3F676BD8
	.4byte 0xBE164085
	.4byte 0xBF7D3AAC
	.4byte 0xBEDAE881
	.4byte 0x3F3DAEF9
	.4byte 0x3F5B941A
	.4byte 0xBE78CFCD
	.4byte 0xBF7FB10E
	.4byte 0xBEAC7CD5
	.4byte 0x3F4D9F02
	.4byte 0xBF54DB31
	.4byte 0x3E47C5C0
	.4byte 0x3F7B14BF
	.4byte 0x3F0E39D9
	.4byte 0xBF0E39D9
	.4byte 0xBF7B14BF
	.4byte 0xBE47C5C0
	.4byte 0x3F54DB31
	.4byte 0x3F54DB31
	.4byte 0xBE47C5C0
	.4byte 0xBF7B14BF
	.4byte 0xBF0E39D9
	.4byte 0x3F0E39D9
	.4byte 0x3F7B14BF
	.4byte 0x3E47C5C0
	.4byte 0xBF54DB31
	.4byte 0xBF54DB31
	.4byte 0x3E47C5C0
	.4byte 0x3F7B14BF
	.4byte 0x3F0E39D9
	.4byte 0xBF0E39D9
	.4byte 0xBF7B14BF
	.4byte 0xBE47C5C0
	.4byte 0x3F54DB31
	.4byte 0x3F54DB31
	.4byte 0xBE47C5C0
	.4byte 0xBF7B14BF
	.4byte 0xBF0E39D9
	.4byte 0x3F0E39D9
	.4byte 0x3F7B14BF
	.4byte 0x3E47C5C0
	.4byte 0xBF54DB31
	.4byte 0xBF5B941A
	.4byte 0x3D48FB2E
	.4byte 0x3F676BD8
	.4byte 0x3F4D9F02
	.4byte 0xBE164085
	.4byte 0xBF710909
	.4byte 0xBF3DAEF9
	.4byte 0x3E78CFCD
	.4byte 0x3F7853F9
	.4byte 0x3F2BEB4A
	.4byte 0xBEAC7CD5
	.4byte 0xBF7D3AAC
	.4byte 0xBF187FC0
	.4byte 0x3EDAE881
	.4byte 0x3F7FB10E
	.4byte 0x3F039C3E
	.4byte 0xBF039C3E
	.4byte 0xBF7FB10E
	.4byte 0xBEDAE881
	.4byte 0x3F187FC0
	.4byte 0x3F7D3AAC
	.4byte 0x3EAC7CD5
	.4byte 0xBF2BEB4A
	.4byte 0xBF7853F9
	.4byte 0xBE78CFCD
	.4byte 0x3F3DAEF9
	.4byte 0x3F710909
	.4byte 0x3E164085
	.4byte 0xBF4D9F02
	.4byte 0xBF676BD8
	.4byte 0xBD48FB2E
	.4byte 0x3F5B941A
	.4byte 0xBF61C598
	.4byte 0xBDC8BD36
	.4byte 0x3F45E402
	.4byte 0x3F74FA0C
	.4byte 0x3E94A032
	.4byte 0xBF226799
	.4byte 0xBF7EC46D
	.4byte 0xBEF15AE9
	.4byte 0x3EF15AE9
	.4byte 0x3F7EC46D
	.4byte 0x3F226799
	.4byte 0xBE94A032
	.4byte 0xBF74FA0C
	.4byte 0xBF45E402
	.4byte 0x3DC8BD36
	.4byte 0x3F61C598
	.4byte 0x3F61C598
	.4byte 0x3DC8BD36
	.4byte 0xBF45E402
	.4byte 0xBF74FA0C
	.4byte 0xBE94A032
	.4byte 0x3F226799
	.4byte 0x3F7EC46D
	.4byte 0x3EF15AE9
	.4byte 0xBEF15AE9
	.4byte 0xBF7EC46D
	.4byte 0xBF226799
	.4byte 0x3E94A032
	.4byte 0x3F74FA0C
	.4byte 0x3F45E402
	.4byte 0xBDC8BD36
	.4byte 0xBF61C598
	.4byte 0xBF676BD8
	.4byte 0xBE78CFCD
	.4byte 0x3F187FC0
	.4byte 0x3F7FB10E
	.4byte 0x3F2BEB4A
	.4byte 0xBE164085
	.4byte 0xBF5B941A
	.4byte 0xBF710909
	.4byte 0xBEAC7CD5
	.4byte 0x3F039C3E
	.4byte 0x3F7D3AAC
	.4byte 0x3F3DAEF9
	.4byte 0xBD48FB2E
	.4byte 0xBF4D9F02
	.4byte 0xBF7853F9
	.4byte 0xBEDAE881
	.4byte 0x3EDAE881
	.4byte 0x3F7853F9
	.4byte 0x3F4D9F02
	.4byte 0x3D48FB2E
	.4byte 0xBF3DAEF9
	.4byte 0xBF7D3AAC
	.4byte 0xBF039C3E
	.4byte 0x3EAC7CD5
	.4byte 0x3F710909
	.4byte 0x3F5B941A
	.4byte 0x3E164085
	.4byte 0xBF2BEB4A
	.4byte 0xBF7FB10E
	.4byte 0xBF187FC0
	.4byte 0x3E78CFCD
	.4byte 0x3F676BD8
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF710909
	.4byte 0xBF039C3E
	.4byte 0x3E164085
	.4byte 0x3F3DAEF9
	.4byte 0x3F7FB10E
	.4byte 0x3F4D9F02
	.4byte 0x3E78CFCD
	.4byte 0xBEDAE881
	.4byte 0xBF676BD8
	.4byte 0xBF7853F9
	.4byte 0xBF187FC0
	.4byte 0x3D48FB2E
	.4byte 0x3F2BEB4A
	.4byte 0x3F7D3AAC
	.4byte 0x3F5B941A
	.4byte 0x3EAC7CD5
	.4byte 0xBEAC7CD5
	.4byte 0xBF5B941A
	.4byte 0xBF7D3AAC
	.4byte 0xBF2BEB4A
	.4byte 0xBD48FB2E
	.4byte 0x3F187FC0
	.4byte 0x3F7853F9
	.4byte 0x3F676BD8
	.4byte 0x3EDAE881
	.4byte 0xBE78CFCD
	.4byte 0xBF4D9F02
	.4byte 0xBF7FB10E
	.4byte 0xBF3DAEF9
	.4byte 0xBE164085
	.4byte 0x3F039C3E
	.4byte 0x3F710909
	.4byte 0xBF74FA0C
	.4byte 0xBF226799
	.4byte 0xBDC8BD36
	.4byte 0x3EF15AE9
	.4byte 0x3F61C598
	.4byte 0x3F7EC46D
	.4byte 0x3F45E402
	.4byte 0x3E94A032
	.4byte 0xBE94A032
	.4byte 0xBF45E402
	.4byte 0xBF7EC46D
	.4byte 0xBF61C598
	.4byte 0xBEF15AE9
	.4byte 0x3DC8BD36
	.4byte 0x3F226799
	.4byte 0x3F74FA0C
	.4byte 0x3F74FA0C
	.4byte 0x3F226799
	.4byte 0x3DC8BD36
	.4byte 0xBEF15AE9
	.4byte 0xBF61C598
	.4byte 0xBF7EC46D
	.4byte 0xBF45E402
	.4byte 0xBE94A032
	.4byte 0x3E94A032
	.4byte 0x3F45E402
	.4byte 0x3F7EC46D
	.4byte 0x3F61C598
	.4byte 0x3EF15AE9
	.4byte 0xBDC8BD36
	.4byte 0xBF226799
	.4byte 0xBF74FA0C
	.4byte 0xBF7853F9
	.4byte 0xBF3DAEF9
	.4byte 0xBEAC7CD5
	.4byte 0x3E164085
	.4byte 0x3F187FC0
	.4byte 0x3F676BD8
	.4byte 0x3F7FB10E
	.4byte 0x3F5B941A
	.4byte 0x3F039C3E
	.4byte 0x3D48FB2E
	.4byte 0xBEDAE881
	.4byte 0xBF4D9F02
	.4byte 0xBF7D3AAC
	.4byte 0xBF710909
	.4byte 0xBF2BEB4A
	.4byte 0xBE78CFCD
	.4byte 0x3E78CFCD
	.4byte 0x3F2BEB4A
	.4byte 0x3F710909
	.4byte 0x3F7D3AAC
	.4byte 0x3F4D9F02
	.4byte 0x3EDAE881
	.4byte 0xBD48FB2E
	.4byte 0xBF039C3E
	.4byte 0xBF5B941A
	.4byte 0xBF7FB10E
	.4byte 0xBF676BD8
	.4byte 0xBF187FC0
	.4byte 0xBE164085
	.4byte 0x3EAC7CD5
	.4byte 0x3F3DAEF9
	.4byte 0x3F7853F9
	.4byte 0xBF7B14BF
	.4byte 0xBF54DB31
	.4byte 0xBF0E39D9
	.4byte 0xBE47C5C0
	.4byte 0x3E47C5C0
	.4byte 0x3F0E39D9
	.4byte 0x3F54DB31
	.4byte 0x3F7B14BF
	.4byte 0x3F7B14BF
	.4byte 0x3F54DB31
	.4byte 0x3F0E39D9
	.4byte 0x3E47C5C0
	.4byte 0xBE47C5C0
	.4byte 0xBF0E39D9
	.4byte 0xBF54DB31
	.4byte 0xBF7B14BF
	.4byte 0xBF7B14BF
	.4byte 0xBF54DB31
	.4byte 0xBF0E39D9
	.4byte 0xBE47C5C0
	.4byte 0x3E47C5C0
	.4byte 0x3F0E39D9
	.4byte 0x3F54DB31
	.4byte 0x3F7B14BF
	.4byte 0x3F7B14BF
	.4byte 0x3F54DB31
	.4byte 0x3F0E39D9
	.4byte 0x3E47C5C0
	.4byte 0xBE47C5C0
	.4byte 0xBF0E39D9
	.4byte 0xBF54DB31
	.4byte 0xBF7B14BF
	.4byte 0xBF7D3AAC
	.4byte 0xBF676BD8
	.4byte 0xBF3DAEF9
	.4byte 0xBF039C3E
	.4byte 0xBE78CFCD
	.4byte 0x3D48FB2E
	.4byte 0x3EAC7CD5
	.4byte 0x3F187FC0
	.4byte 0x3F4D9F02
	.4byte 0x3F710909
	.4byte 0x3F7FB10E
	.4byte 0x3F7853F9
	.4byte 0x3F5B941A
	.4byte 0x3F2BEB4A
	.4byte 0x3EDAE881
	.4byte 0x3E164085
	.4byte 0xBE164085
	.4byte 0xBEDAE881
	.4byte 0xBF2BEB4A
	.4byte 0xBF5B941A
	.4byte 0xBF7853F9
	.4byte 0xBF7FB10E
	.4byte 0xBF710909
	.4byte 0xBF4D9F02
	.4byte 0xBF187FC0
	.4byte 0xBEAC7CD5
	.4byte 0xBD48FB2E
	.4byte 0x3E78CFCD
	.4byte 0x3F039C3E
	.4byte 0x3F3DAEF9
	.4byte 0x3F676BD8
	.4byte 0x3F7D3AAC
	.4byte 0xBF7EC46D
	.4byte 0xBF74FA0C
	.4byte 0xBF61C598
	.4byte 0xBF45E402
	.4byte 0xBF226799
	.4byte 0xBEF15AE9
	.4byte 0xBE94A032
	.4byte 0xBDC8BD36
	.4byte 0x3DC8BD36
	.4byte 0x3E94A032
	.4byte 0x3EF15AE9
	.4byte 0x3F226799
	.4byte 0x3F45E402
	.4byte 0x3F61C598
	.4byte 0x3F74FA0C
	.4byte 0x3F7EC46D
	.4byte 0x3F7EC46D
	.4byte 0x3F74FA0C
	.4byte 0x3F61C598
	.4byte 0x3F45E402
	.4byte 0x3F226799
	.4byte 0x3EF15AE9
	.4byte 0x3E94A032
	.4byte 0x3DC8BD36
	.4byte 0xBDC8BD36
	.4byte 0xBE94A032
	.4byte 0xBEF15AE9
	.4byte 0xBF226799
	.4byte 0xBF45E402
	.4byte 0xBF61C598
	.4byte 0xBF74FA0C
	.4byte 0xBF7EC46D
	.4byte 0xBF7FB10E
	.4byte 0xBF7D3AAC
	.4byte 0xBF7853F9
	.4byte 0xBF710909
	.4byte 0xBF676BD8
	.4byte 0xBF5B941A
	.4byte 0xBF4D9F02
	.4byte 0xBF3DAEF9
	.4byte 0xBF2BEB4A
	.4byte 0xBF187FC0
	.4byte 0xBF039C3E
	.4byte 0xBEDAE881
	.4byte 0xBEAC7CD5
	.4byte 0xBE78CFCD
	.4byte 0xBE164085
	.4byte 0xBD48FB2E
	.4byte 0x3D48FB2E
	.4byte 0x3E164085
	.4byte 0x3E78CFCD
	.4byte 0x3EAC7CD5
	.4byte 0x3EDAE881
	.4byte 0x3F039C3E
	.4byte 0x3F187FC0
	.4byte 0x3F2BEB4A
	.4byte 0x3F3DAEF9
	.4byte 0x3F4D9F02
	.4byte 0x3F5B941A
	.4byte 0x3F676BD8
	.4byte 0x3F710909
	.4byte 0x3F7853F9
	.4byte 0x3F7D3AAC
	.4byte 0x3F7FB10E
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0
	.4byte 0xBF7FB10E
	.4byte 0xBF7D3AAC
	.4byte 0xBF7853F9
	.4byte 0xBF710909
	.4byte 0xBF676BD8
	.4byte 0xBF5B941A
	.4byte 0xBF4D9F02
	.4byte 0xBF3DAEF9
	.4byte 0xBF2BEB4A
	.4byte 0xBF187FC0
	.4byte 0xBF039C3E
	.4byte 0xBEDAE881
	.4byte 0xBEAC7CD5
	.4byte 0xBE78CFCD
	.4byte 0xBE164085
	.4byte 0xBD48FB2E
	.4byte 0x3D48FB2E
	.4byte 0x3E164085
	.4byte 0x3E78CFCD
	.4byte 0x3EAC7CD5
	.4byte 0x3EDAE881
	.4byte 0x3F039C3E
	.4byte 0x3F187FC0
	.4byte 0x3F2BEB4A
	.4byte 0x3F3DAEF9
	.4byte 0x3F4D9F02
	.4byte 0x3F5B941A
	.4byte 0x3F676BD8
	.4byte 0x3F710909
	.4byte 0x3F7853F9
	.4byte 0x3F7D3AAC
	.4byte 0x3F7FB10E
	.4byte 0xBF7EC46D
	.4byte 0xBF74FA0C
	.4byte 0xBF61C598
	.4byte 0xBF45E402
	.4byte 0xBF226799
	.4byte 0xBEF15AE9
	.4byte 0xBE94A032
	.4byte 0xBDC8BD36
	.4byte 0x3DC8BD36
	.4byte 0x3E94A032
	.4byte 0x3EF15AE9
	.4byte 0x3F226799
	.4byte 0x3F45E402
	.4byte 0x3F61C598
	.4byte 0x3F74FA0C
	.4byte 0x3F7EC46D
	.4byte 0x3F7EC46D
	.4byte 0x3F74FA0C
	.4byte 0x3F61C598
	.4byte 0x3F45E402
	.4byte 0x3F226799
	.4byte 0x3EF15AE9
	.4byte 0x3E94A032
	.4byte 0x3DC8BD36
	.4byte 0xBDC8BD36
	.4byte 0xBE94A032
	.4byte 0xBEF15AE9
	.4byte 0xBF226799
	.4byte 0xBF45E402
	.4byte 0xBF61C598
	.4byte 0xBF74FA0C
	.4byte 0xBF7EC46D
	.4byte 0xBF7D3AAC
	.4byte 0xBF676BD8
	.4byte 0xBF3DAEF9
	.4byte 0xBF039C3E
	.4byte 0xBE78CFCD
	.4byte 0x3D48FB2E
	.4byte 0x3EAC7CD5
	.4byte 0x3F187FC0
	.4byte 0x3F4D9F02
	.4byte 0x3F710909
	.4byte 0x3F7FB10E
	.4byte 0x3F7853F9
	.4byte 0x3F5B941A
	.4byte 0x3F2BEB4A
	.4byte 0x3EDAE881
	.4byte 0x3E164085
	.4byte 0xBE164085
	.4byte 0xBEDAE881
	.4byte 0xBF2BEB4A
	.4byte 0xBF5B941A
	.4byte 0xBF7853F9
	.4byte 0xBF7FB10E
	.4byte 0xBF710909
	.4byte 0xBF4D9F02
	.4byte 0xBF187FC0
	.4byte 0xBEAC7CD5
	.4byte 0xBD48FB2E
	.4byte 0x3E78CFCD
	.4byte 0x3F039C3E
	.4byte 0x3F3DAEF9
	.4byte 0x3F676BD8
	.4byte 0x3F7D3AAC
	.4byte 0xBF7B14BF
	.4byte 0xBF54DB31
	.4byte 0xBF0E39D9
	.4byte 0xBE47C5C0
	.4byte 0x3E47C5C0
	.4byte 0x3F0E39D9
	.4byte 0x3F54DB31
	.4byte 0x3F7B14BF
	.4byte 0x3F7B14BF
	.4byte 0x3F54DB31
	.4byte 0x3F0E39D9
	.4byte 0x3E47C5C0
	.4byte 0xBE47C5C0
	.4byte 0xBF0E39D9
	.4byte 0xBF54DB31
	.4byte 0xBF7B14BF
	.4byte 0xBF7B14BF
	.4byte 0xBF54DB31
	.4byte 0xBF0E39D9
	.4byte 0xBE47C5C0
	.4byte 0x3E47C5C0
	.4byte 0x3F0E39D9
	.4byte 0x3F54DB31
	.4byte 0x3F7B14BF
	.4byte 0x3F7B14BF
	.4byte 0x3F54DB31
	.4byte 0x3F0E39D9
	.4byte 0x3E47C5C0
	.4byte 0xBE47C5C0
	.4byte 0xBF0E39D9
	.4byte 0xBF54DB31
	.4byte 0xBF7B14BF
	.4byte 0xBF7853F9
	.4byte 0xBF3DAEF9
	.4byte 0xBEAC7CD5
	.4byte 0x3E164085
	.4byte 0x3F187FC0
	.4byte 0x3F676BD8
	.4byte 0x3F7FB10E
	.4byte 0x3F5B941A
	.4byte 0x3F039C3E
	.4byte 0x3D48FB2E
	.4byte 0xBEDAE881
	.4byte 0xBF4D9F02
	.4byte 0xBF7D3AAC
	.4byte 0xBF710909
	.4byte 0xBF2BEB4A
	.4byte 0xBE78CFCD
	.4byte 0x3E78CFCD
	.4byte 0x3F2BEB4A
	.4byte 0x3F710909
	.4byte 0x3F7D3AAC
	.4byte 0x3F4D9F02
	.4byte 0x3EDAE881
	.4byte 0xBD48FB2E
	.4byte 0xBF039C3E
	.4byte 0xBF5B941A
	.4byte 0xBF7FB10E
	.4byte 0xBF676BD8
	.4byte 0xBF187FC0
	.4byte 0xBE164085
	.4byte 0x3EAC7CD5
	.4byte 0x3F3DAEF9
	.4byte 0x3F7853F9
	.4byte 0xBF74FA0C
	.4byte 0xBF226799
	.4byte 0xBDC8BD36
	.4byte 0x3EF15AE9
	.4byte 0x3F61C598
	.4byte 0x3F7EC46D
	.4byte 0x3F45E402
	.4byte 0x3E94A032
	.4byte 0xBE94A032
	.4byte 0xBF45E402
	.4byte 0xBF7EC46D
	.4byte 0xBF61C598
	.4byte 0xBEF15AE9
	.4byte 0x3DC8BD36
	.4byte 0x3F226799
	.4byte 0x3F74FA0C
	.4byte 0x3F74FA0C
	.4byte 0x3F226799
	.4byte 0x3DC8BD36
	.4byte 0xBEF15AE9
	.4byte 0xBF61C598
	.4byte 0xBF7EC46D
	.4byte 0xBF45E402
	.4byte 0xBE94A032
	.4byte 0x3E94A032
	.4byte 0x3F45E402
	.4byte 0x3F7EC46D
	.4byte 0x3F61C598
	.4byte 0x3EF15AE9
	.4byte 0xBDC8BD36
	.4byte 0xBF226799
	.4byte 0xBF74FA0C
	.4byte 0xBF710909
	.4byte 0xBF039C3E
	.4byte 0x3E164085
	.4byte 0x3F3DAEF9
	.4byte 0x3F7FB10E
	.4byte 0x3F4D9F02
	.4byte 0x3E78CFCD
	.4byte 0xBEDAE881
	.4byte 0xBF676BD8
	.4byte 0xBF7853F9
	.4byte 0xBF187FC0
	.4byte 0x3D48FB2E
	.4byte 0x3F2BEB4A
	.4byte 0x3F7D3AAC
	.4byte 0x3F5B941A
	.4byte 0x3EAC7CD5
	.4byte 0xBEAC7CD5
	.4byte 0xBF5B941A
	.4byte 0xBF7D3AAC
	.4byte 0xBF2BEB4A
	.4byte 0xBD48FB2E
	.4byte 0x3F187FC0
	.4byte 0x3F7853F9
	.4byte 0x3F676BD8
	.4byte 0x3EDAE881
	.4byte 0xBE78CFCD
	.4byte 0xBF4D9F02
	.4byte 0xBF7FB10E
	.4byte 0xBF3DAEF9
	.4byte 0xBE164085
	.4byte 0x3F039C3E
	.4byte 0x3F710909
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF6C835E
	.4byte 0xBEC3EF14
	.4byte 0x3EC3EF14
	.4byte 0x3F6C835E
	.4byte 0x3F6C835E
	.4byte 0x3EC3EF14
	.4byte 0xBEC3EF14
	.4byte 0xBF6C835E
	.4byte 0xBF676BD8
	.4byte 0xBE78CFCD
	.4byte 0x3F187FC0
	.4byte 0x3F7FB10E
	.4byte 0x3F2BEB4A
	.4byte 0xBE164085
	.4byte 0xBF5B941A
	.4byte 0xBF710909
	.4byte 0xBEAC7CD5
	.4byte 0x3F039C3E
	.4byte 0x3F7D3AAC
	.4byte 0x3F3DAEF9
	.4byte 0xBD48FB2E
	.4byte 0xBF4D9F02
	.4byte 0xBF7853F9
	.4byte 0xBEDAE881
	.4byte 0x3EDAE881
	.4byte 0x3F7853F9
	.4byte 0x3F4D9F02
	.4byte 0x3D48FB2E
	.4byte 0xBF3DAEF9
	.4byte 0xBF7D3AAC
	.4byte 0xBF039C3E
	.4byte 0x3EAC7CD5
	.4byte 0x3F710909
	.4byte 0x3F5B941A
	.4byte 0x3E164085
	.4byte 0xBF2BEB4A
	.4byte 0xBF7FB10E
	.4byte 0xBF187FC0
	.4byte 0x3E78CFCD
	.4byte 0x3F676BD8
	.4byte 0xBF61C598
	.4byte 0xBDC8BD36
	.4byte 0x3F45E402
	.4byte 0x3F74FA0C
	.4byte 0x3E94A032
	.4byte 0xBF226799
	.4byte 0xBF7EC46D
	.4byte 0xBEF15AE9
	.4byte 0x3EF15AE9
	.4byte 0x3F7EC46D
	.4byte 0x3F226799
	.4byte 0xBE94A032
	.4byte 0xBF74FA0C
	.4byte 0xBF45E402
	.4byte 0x3DC8BD36
	.4byte 0x3F61C598
	.4byte 0x3F61C598
	.4byte 0x3DC8BD36
	.4byte 0xBF45E402
	.4byte 0xBF74FA0C
	.4byte 0xBE94A032
	.4byte 0x3F226799
	.4byte 0x3F7EC46D
	.4byte 0x3EF15AE9
	.4byte 0xBEF15AE9
	.4byte 0xBF7EC46D
	.4byte 0xBF226799
	.4byte 0x3E94A032
	.4byte 0x3F74FA0C
	.4byte 0x3F45E402
	.4byte 0xBDC8BD36
	.4byte 0xBF61C598
	.4byte 0xBF5B941A
	.4byte 0x3D48FB2E
	.4byte 0x3F676BD8
	.4byte 0x3F4D9F02
	.4byte 0xBE164085
	.4byte 0xBF710909
	.4byte 0xBF3DAEF9
	.4byte 0x3E78CFCD
	.4byte 0x3F7853F9
	.4byte 0x3F2BEB4A
	.4byte 0xBEAC7CD5
	.4byte 0xBF7D3AAC
	.4byte 0xBF187FC0
	.4byte 0x3EDAE881
	.4byte 0x3F7FB10E
	.4byte 0x3F039C3E
	.4byte 0xBF039C3E
	.4byte 0xBF7FB10E
	.4byte 0xBEDAE881
	.4byte 0x3F187FC0
	.4byte 0x3F7D3AAC
	.4byte 0x3EAC7CD5
	.4byte 0xBF2BEB4A
	.4byte 0xBF7853F9
	.4byte 0xBE78CFCD
	.4byte 0x3F3DAEF9
	.4byte 0x3F710909
	.4byte 0x3E164085
	.4byte 0xBF4D9F02
	.4byte 0xBF676BD8
	.4byte 0xBD48FB2E
	.4byte 0x3F5B941A
	.4byte 0xBF54DB31
	.4byte 0x3E47C5C0
	.4byte 0x3F7B14BF
	.4byte 0x3F0E39D9
	.4byte 0xBF0E39D9
	.4byte 0xBF7B14BF
	.4byte 0xBE47C5C0
	.4byte 0x3F54DB31
	.4byte 0x3F54DB31
	.4byte 0xBE47C5C0
	.4byte 0xBF7B14BF
	.4byte 0xBF0E39D9
	.4byte 0x3F0E39D9
	.4byte 0x3F7B14BF
	.4byte 0x3E47C5C0
	.4byte 0xBF54DB31
	.4byte 0xBF54DB31
	.4byte 0x3E47C5C0
	.4byte 0x3F7B14BF
	.4byte 0x3F0E39D9
	.4byte 0xBF0E39D9
	.4byte 0xBF7B14BF
	.4byte 0xBE47C5C0
	.4byte 0x3F54DB31
	.4byte 0x3F54DB31
	.4byte 0xBE47C5C0
	.4byte 0xBF7B14BF
	.4byte 0xBF0E39D9
	.4byte 0x3F0E39D9
	.4byte 0x3F7B14BF
	.4byte 0x3E47C5C0
	.4byte 0xBF54DB31
	.4byte 0xBF4D9F02
	.4byte 0x3EAC7CD5
	.4byte 0x3F7FB10E
	.4byte 0x3E78CFCD
	.4byte 0xBF5B941A
	.4byte 0xBF3DAEF9
	.4byte 0x3EDAE881
	.4byte 0x3F7D3AAC
	.4byte 0x3E164085
	.4byte 0xBF676BD8
	.4byte 0xBF2BEB4A
	.4byte 0x3F039C3E
	.4byte 0x3F7853F9
	.4byte 0x3D48FB2E
	.4byte 0xBF710909
	.4byte 0xBF187FC0
	.4byte 0x3F187FC0
	.4byte 0x3F710909
	.4byte 0xBD48FB2E
	.4byte 0xBF7853F9
	.4byte 0xBF039C3E
	.4byte 0x3F2BEB4A
	.4byte 0x3F676BD8
	.4byte 0xBE164085
	.4byte 0xBF7D3AAC
	.4byte 0xBEDAE881
	.4byte 0x3F3DAEF9
	.4byte 0x3F5B941A
	.4byte 0xBE78CFCD
	.4byte 0xBF7FB10E
	.4byte 0xBEAC7CD5
	.4byte 0x3F4D9F02
	.4byte 0xBF45E402
	.4byte 0x3EF15AE9
	.4byte 0x3F74FA0C
	.4byte 0xBDC8BD36
	.4byte 0xBF7EC46D
	.4byte 0xBE94A032
	.4byte 0x3F61C598
	.4byte 0x3F226799
	.4byte 0xBF226799
	.4byte 0xBF61C598
	.4byte 0x3E94A032
	.4byte 0x3F7EC46D
	.4byte 0x3DC8BD36
	.4byte 0xBF74FA0C
	.4byte 0xBEF15AE9
	.4byte 0x3F45E402
	.4byte 0x3F45E402
	.4byte 0xBEF15AE9
	.4byte 0xBF74FA0C
	.4byte 0x3DC8BD36
	.4byte 0x3F7EC46D
	.4byte 0x3E94A032
	.4byte 0xBF61C598
	.4byte 0xBF226799
	.4byte 0x3F226799
	.4byte 0x3F61C598
	.4byte 0xBE94A032
	.4byte 0xBF7EC46D
	.4byte 0xBDC8BD36
	.4byte 0x3F74FA0C
	.4byte 0x3EF15AE9
	.4byte 0xBF45E402
	.4byte 0xBF3DAEF9
	.4byte 0x3F187FC0
	.4byte 0x3F5B941A
	.4byte 0xBEDAE881
	.4byte 0xBF710909
	.4byte 0x3E78CFCD
	.4byte 0x3F7D3AAC
	.4byte 0xBD48FB2E
	.4byte 0xBF7FB10E
	.4byte 0xBE164085
	.4byte 0x3F7853F9
	.4byte 0x3EAC7CD5
	.4byte 0xBF676BD8
	.4byte 0xBF039C3E
	.4byte 0x3F4D9F02
	.4byte 0x3F2BEB4A
	.4byte 0xBF2BEB4A
	.4byte 0xBF4D9F02
	.4byte 0x3F039C3E
	.4byte 0x3F676BD8
	.4byte 0xBEAC7CD5
	.4byte 0xBF7853F9
	.4byte 0x3E164085
	.4byte 0x3F7FB10E
	.4byte 0x3D48FB2E
	.4byte 0xBF7D3AAC
	.4byte 0xBE78CFCD
	.4byte 0x3F710909
	.4byte 0x3EDAE881
	.4byte 0xBF5B941A
	.4byte 0xBF187FC0
	.4byte 0x3F3DAEF9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_805657B0
lbl_805657B0:
	# ROM: 0x5618B0
	.4byte lbl_80563730


.global lbl_805657B4
lbl_805657B4:
	# ROM: 0x5618B4
	.4byte 0x00002080


.global lbl_805657B8
lbl_805657B8:
	# ROM: 0x5618B8
	.4byte func_8038AEA8
	.4byte func_8038AFF4
	.4byte func_8038B140
	.4byte func_8038B28C
	.4byte func_8038B3D8
	.4byte func_8038B524
	.4byte func_8038B670
	.4byte func_8038B7BC
	.4byte func_8038B908
	.4byte func_8038BA54
	.4byte func_8038BBA0
	.4byte func_8038BCEC
	.4byte func_8038BE38
	.4byte func_8038BF84
	.4byte func_8038C0D0
	.4byte func_8038C21C

.global lbl_805657F8
lbl_805657F8:
	.4byte 0
	.4byte 0xB9E80004
	.4byte 0x3B550000
	.4byte 0xBBE58000
	.4byte 0x3CFE9FFE
	.4byte 0xBDA10800
	.4byte 0x3DCD7003
	.4byte 0xBF1270FF
	.4byte 0x3F928F00
	.4byte 0x3F1270FF
	.4byte 0x3DCD7003
	.4byte 0x3DA10800
	.4byte 0x3CFE9FFE
	.4byte 0x3BE58000
	.4byte 0x3B550000
	.4byte 0x39E80004
	.4byte 0xB7800074
	.4byte 0xB9F7FFF0
	.4byte 0x3B5A0000
	.4byte 0xBC01C001
	.4byte 0x3CFA0001
	.4byte 0xBDAC6800
	.4byte 0x3DBA37FF
	.4byte 0xBF19A800
	.4byte 0x3F9277FF
	.4byte 0x3F0B37FF
	.4byte 0x3DDEF000
	.4byte 0x3D95A000
	.4byte 0x3D00F000
	.4byte 0x3BC87FFF
	.4byte 0x3B4FFFFF
	.4byte 0x39D00011
	.4byte 0xB7800074
	.4byte 0xBA0C0007
	.4byte 0x3B5DFFFF
	.4byte 0xBC114000
	.4byte 0x3CF40002
	.4byte 0xBDB7B800
	.4byte 0x3DA54000
	.4byte 0xBF20D800
	.4byte 0x3F923401
	.4byte 0x3F03FEFF
	.4byte 0x3DEEBFF9
	.4byte 0x3D8A4800
	.4byte 0x3D020000
	.4byte 0x3BAD8000
	.4byte 0x3B49FFFE
	.4byte 0x39C00002
	.4byte 0xB7800074
	.4byte 0xBA180000
	.4byte 0x3B610002
	.4byte 0xBC214000
	.4byte 0x3CECA001
	.4byte 0xBDC2E800
	.4byte 0x3D8E8800
	.4byte 0xBF27FE00
	.4byte 0x3F91C2FC
	.4byte 0x3EF995FF
	.4byte 0x3DFCDFFD
	.4byte 0x3D7DF000
	.4byte 0x3D026FFF
	.4byte 0x3B930000
	.4byte 0x3B440001
	.4byte 0x39A8000F
	.4byte 0xB7800074
	.4byte 0xBA23FFFA
	.4byte 0x3B62FFFF
	.4byte 0xBC31C001
	.4byte 0x3CE3BFFE
	.4byte 0xBDCDE805
	.4byte 0x3D6C0001
	.4byte 0xBF2F1500
	.4byte 0x3F91247D
	.4byte 0x3EEB4001
	.4byte 0x3E04AFFE
	.4byte 0x3D678FFF
	.4byte 0x3D025001
	.4byte 0x3B740002
	.4byte 0x3B3E0000
	.4byte 0x39980000
	.4byte 0xB7800074
	.4byte 0xBA340008
	.4byte 0x3B640000
	.4byte 0xBC42C004
	.4byte 0x3CD95FFE
	.4byte 0xBDD8B800
	.4byte 0x3D377001
	.4byte 0xBF361901
	.4byte 0x3F905A04
	.4byte 0x3EDD0201
	.4byte 0x3E0A2000
	.4byte 0x3D516FFF
	.4byte 0x3D01B001
	.4byte 0x3B44FFFE
	.4byte 0x3B36FFFE
	.4byte 0x3987FFF2
	.4byte 0xB7800074
	.4byte 0xBA440006
	.4byte 0x3B640000
	.4byte 0xBC53FFFD
	.4byte 0x3CCD8000
	.4byte 0xBDE33806
	.4byte 0x3CFE9FFE
	.4byte 0xBF3D0600
	.4byte 0x3F8F6380
	.4byte 0x3ECEE402
	.4byte 0x3E0ECC02
	.4byte 0x3D3BBFFF
	.4byte 0x3D009000
	.4byte 0x3B190001
	.4byte 0x3B300001
	.4byte 0x3980000D
	.4byte 0xB8000074
	.4byte 0xBA540003
	.4byte 0x3B62FFFF
	.4byte 0xBC65C003
	.4byte 0x3CBFDFFF
	.4byte 0xBDED67FD
	.4byte 0x3C874000
	.4byte 0xBF43D900
	.4byte 0x3F8E4181
	.4byte 0x3EC0EBFF
	.4byte 0x3E12B402
	.4byte 0x3D267001
	.4byte 0x3CFE0000
	.4byte 0x3ADE0004
	.4byte 0x3B28FFFE
	.4byte 0x395FFFFD
	.4byte 0xB8000074
	.4byte 0xBA680004
	.4byte 0x3B600001
	.4byte 0xBC77C000
	.4byte 0x3CB0C001
	.4byte 0xBDF72FFD
	.4byte 0x3A8BFFFE
	.4byte 0xBF4A8D00
	.4byte 0x3F8CF484
	.4byte 0x3EB32201
	.4byte 0x3E15E000
	.4byte 0x3D11A000
	.4byte 0x3CFA2002
	.4byte 0x3A900002
	.4byte 0x3B210000
	.4byte 0x394FFFEE
	.4byte 0xB8000074
	.4byte 0xBA7C0005
	.4byte 0x3B5CFFFE
	.4byte 0xBC84FFFF
	.4byte 0x3CA00000
	.4byte 0xBE004400
	.4byte 0xBC797FFE
	.4byte 0xBF511E00
	.4byte 0x3F8B7E02
	.4byte 0x3EA58A01
	.4byte 0x3E185800
	.4byte 0x3CFAC000
	.4byte 0x3CF53FFE
	.4byte 0x3A0FFFF9
	.4byte 0x3B1A0002
	.4byte 0x39300016
	.4byte 0xB8000074
	.4byte 0xBA880003
	.4byte 0x3B570002
	.4byte 0xBC8E1FFE
	.4byte 0x3C8D6000
	.4byte 0xBE04AC01
	.4byte 0xBD04A000
	.4byte 0xBF578A01
	.4byte 0x3F89DF01
	.4byte 0x3E982C00
	.4byte 0x3E1A1BFE
	.4byte 0x3CD37FFF
	.4byte 0x3CEFE002
	.4byte 0x38000074
	.4byte 0x3B130000
	.4byte 0x39200008
	.4byte 0xB83FFF9B
	.4byte 0xBA920003
	.4byte 0x3B4FFFFF
	.4byte 0xBC973FFD
	.4byte 0x3C728005
	.4byte 0xBE08CC00
	.4byte 0xBD4E3FFF
	.4byte 0xBF5DCA00
	.4byte 0x3F88177F
	.4byte 0x3E8B0E00
	.4byte 0x3E1B3C02
	.4byte 0x3CAD8000
	.4byte 0x3CE9C002
	.4byte 0xB9E80004
	.4byte 0x3B0B0001
	.4byte 0x390FFFF9
	.4byte 0xB83FFF9B
	.4byte 0xBA9DFFFD
	.4byte 0x3B480001
	.4byte 0xBCA06002
	.4byte 0x3C468002
	.4byte 0xBE0C9801
	.4byte 0xBD8DA800
	.4byte 0xBF63DCFF
	.4byte 0x3F862A02
	.4byte 0x3E7C6BFD
	.4byte 0x3E1BB801
	.4byte 0x3C88DFFE
	.4byte 0x3CE32000
	.4byte 0xBA640000
	.4byte 0x3B03FFFF
	.4byte 0x38FFFFD5
	.4byte 0xB87FFFD5
	.4byte 0xBAA9FFFF
	.4byte 0x3B3CFFFF
	.4byte 0xBCA98001
	.4byte 0x3C174000
	.4byte 0xBE100C02
	.4byte 0xBDB5CFFF
	.4byte 0xBF69BE00
	.4byte 0x3F841683
	.4byte 0x3E635002
	.4byte 0x3E1B9C01
	.4byte 0x3C4B7FFB
	.4byte 0x3CDBE000
	.4byte 0xBAA5FFFC
	.4byte 0x3AFA0003
	.4byte 0x38E00041
	.4byte 0xB87FFFD5
	.4byte 0xBAB60002
	.4byte 0x3B310001
	.4byte 0xBCB28000
	.4byte 0x3BC90000
	.4byte 0xBE132003
	.4byte 0xBDDF9003
	.4byte 0xBF6F6900
	.4byte 0x3F81DF01
	.4byte 0x3E4AD001
	.4byte 0x3E1AF003
	.4byte 0x3C084000
	.4byte 0x3CD43FFE
	.4byte 0xBAD40003
	.4byte 0x3AE9FFFD
	.4byte 0x38E00041
	.4byte 0xB8A00008
	.4byte 0xBAC20004
	.4byte 0x3B230002
	.4byte 0xBCBB4002
	.4byte 0x3B390000
	.4byte 0xBE15C400
	.4byte 0xBE057003
	.4byte 0xBF74DBFF
	.4byte 0x3F7F09FF
	.4byte 0x3E32FBFE
	.4byte 0x3E19B802
	.4byte 0x3B8FFFFF
	.4byte 0x3CCC3FFF
	.4byte 0xBAFDFFFE
	.4byte 0x3ADE0004
	.4byte 0x38C00025
	.4byte 0xB8A00008
	.4byte 0xBACFFFFF
	.4byte 0x3B11FFFF
	.4byte 0xBCC3DFFF
	.4byte 0xBA340008
	.4byte 0xBE17FBFD
	.4byte 0xBE1BDBFF
	.4byte 0xBF7A1300
	.4byte 0x3F7A1300
	.4byte 0x3E1BDBFF
	.4byte 0x3E17FBFD
	.4byte 0x3A340008
	.4byte 0x3CC3DFFF
	.4byte 0xBB11FFFF
	.4byte 0x3ACFFFFF
	.4byte 0x38A00008
	.4byte 0xB8C00025
	.4byte 0xBADE0004
	.4byte 0x3AFDFFFE
	.4byte 0xBCCC3FFF
	.4byte 0xBB8FFFFF
	.4byte 0xBE19B802
	.4byte 0xBE32FBFE
	.4byte 0xBF7F09FF
	.4byte 0x3F74DBFF
	.4byte 0x3E057003
	.4byte 0x3E15C400
	.4byte 0xBB390000
	.4byte 0x3CBB4002
	.4byte 0xBB230002
	.4byte 0x3AC20004
	.4byte 0x38A00008
	.4byte 0xB8E00041
	.4byte 0xBAE9FFFD
	.4byte 0x3AD40003
	.4byte 0xBCD43FFE
	.4byte 0xBC084000
	.4byte 0xBE1AF003
	.4byte 0xBE4AD001
	.4byte 0xBF81DF01
	.4byte 0x3F6F6900
	.4byte 0x3DDF9003
	.4byte 0x3E132003
	.4byte 0xBBC90000
	.4byte 0x3CB28000
	.4byte 0xBB310001
	.4byte 0x3AB60002
	.4byte 0x387FFFD5
	.4byte 0xB8E00041
	.4byte 0xBAFA0003
	.4byte 0x3AA5FFFC
	.4byte 0xBCDBE000
	.4byte 0xBC4B7FFB
	.4byte 0xBE1B9C01
	.4byte 0xBE635002
	.4byte 0xBF841683
	.4byte 0x3F69BE00
	.4byte 0x3DB5CFFF
	.4byte 0x3E100C02
	.4byte 0xBC174000
	.4byte 0x3CA98001
	.4byte 0xBB3CFFFF
	.4byte 0x3AA9FFFF
	.4byte 0x387FFFD5
	.4byte 0xB8FFFFD5
	.4byte 0xBB03FFFF
	.4byte 0x3A640000
	.4byte 0xBCE32000
	.4byte 0xBC88DFFE
	.4byte 0xBE1BB801
	.4byte 0xBE7C6BFD
	.4byte 0xBF862A02
	.4byte 0x3F63DCFF
	.4byte 0x3D8DA800
	.4byte 0x3E0C9801
	.4byte 0xBC468002
	.4byte 0x3CA06002
	.4byte 0xBB480001
	.4byte 0x3A9DFFFD
	.4byte 0x383FFF9B
	.4byte 0xB90FFFF9
	.4byte 0xBB0B0001
	.4byte 0x39E80004
	.4byte 0xBCE9C002
	.4byte 0xBCAD8000
	.4byte 0xBE1B3C02
	.4byte 0xBE8B0E00
	.4byte 0xBF88177F
	.4byte 0x3F5DCA00
	.4byte 0x3D4E3FFF
	.4byte 0x3E08CC00
	.4byte 0xBC728005
	.4byte 0x3C973FFD
	.4byte 0xBB4FFFFF
	.4byte 0x3A920003
	.4byte 0x383FFF9B
	.4byte 0xB9200008
	.4byte 0xBB130000
	.4byte 0xB8000074
	.4byte 0xBCEFE002
	.4byte 0xBCD37FFF
	.4byte 0xBE1A1BFE
	.4byte 0xBE982C00
	.4byte 0xBF89DF01
	.4byte 0x3F578A01
	.4byte 0x3D04A000
	.4byte 0x3E04AC01
	.4byte 0xBC8D6000
	.4byte 0x3C8E1FFE
	.4byte 0xBB570002
	.4byte 0x3A880003
	.4byte 0x38000074
	.4byte 0xB9300016
	.4byte 0xBB1A0002
	.4byte 0xBA0FFFF9
	.4byte 0xBCF53FFE
	.4byte 0xBCFAC000
	.4byte 0xBE185800
	.4byte 0xBEA58A01
	.4byte 0xBF8B7E02
	.4byte 0x3F511E00
	.4byte 0x3C797FFE
	.4byte 0x3E004400
	.4byte 0xBCA00000
	.4byte 0x3C84FFFF
	.4byte 0xBB5CFFFE
	.4byte 0x3A7C0005
	.4byte 0x38000074
	.4byte 0xB94FFFEE
	.4byte 0xBB210000
	.4byte 0xBA900002
	.4byte 0xBCFA2002
	.4byte 0xBD11A000
	.4byte 0xBE15E000
	.4byte 0xBEB32201
	.4byte 0xBF8CF484
	.4byte 0x3F4A8D00
	.4byte 0xBA8BFFFE
	.4byte 0x3DF72FFD
	.4byte 0xBCB0C001
	.4byte 0x3C77C000
	.4byte 0xBB600001
	.4byte 0x3A680004
	.4byte 0x38000074
	.4byte 0xB95FFFFD
	.4byte 0xBB28FFFE
	.4byte 0xBADE0004
	.4byte 0xBCFE0000
	.4byte 0xBD267001
	.4byte 0xBE12B402
	.4byte 0xBEC0EBFF
	.4byte 0xBF8E4181
	.4byte 0x3F43D900
	.4byte 0xBC874000
	.4byte 0x3DED67FD
	.4byte 0xBCBFDFFF
	.4byte 0x3C65C003
	.4byte 0xBB62FFFF
	.4byte 0x3A540003
	.4byte 0x38000074
	.4byte 0xB980000D
	.4byte 0xBB300001
	.4byte 0xBB190001
	.4byte 0xBD009000
	.4byte 0xBD3BBFFF
	.4byte 0xBE0ECC02
	.4byte 0xBECEE402
	.4byte 0xBF8F6380
	.4byte 0x3F3D0600
	.4byte 0xBCFE9FFE
	.4byte 0x3DE33806
	.4byte 0xBCCD8000
	.4byte 0x3C53FFFD
	.4byte 0xBB640000
	.4byte 0x3A440006
	.4byte 0x37800074
	.4byte 0xB987FFF2
	.4byte 0xBB36FFFE
	.4byte 0xBB44FFFE
	.4byte 0xBD01B001
	.4byte 0xBD516FFF
	.4byte 0xBE0A2000
	.4byte 0xBEDD0201
	.4byte 0xBF905A04
	.4byte 0x3F361901
	.4byte 0xBD377001
	.4byte 0x3DD8B800
	.4byte 0xBCD95FFE
	.4byte 0x3C42C004
	.4byte 0xBB640000
	.4byte 0x3A340008
	.4byte 0x37800074
	.4byte 0xB9980000
	.4byte 0xBB3E0000
	.4byte 0xBB740002
	.4byte 0xBD025001
	.4byte 0xBD678FFF
	.4byte 0xBE04AFFE
	.4byte 0xBEEB4001
	.4byte 0xBF91247D
	.4byte 0x3F2F1500
	.4byte 0xBD6C0001
	.4byte 0x3DCDE805
	.4byte 0xBCE3BFFE
	.4byte 0x3C31C001
	.4byte 0xBB62FFFF
	.4byte 0x3A23FFFA
	.4byte 0x37800074
	.4byte 0xB9A8000F
	.4byte 0xBB440001
	.4byte 0xBB930000
	.4byte 0xBD026FFF
	.4byte 0xBD7DF000
	.4byte 0xBDFCDFFD
	.4byte 0xBEF995FF
	.4byte 0xBF91C2FC
	.4byte 0x3F27FE00
	.4byte 0xBD8E8800
	.4byte 0x3DC2E800
	.4byte 0xBCECA001
	.4byte 0x3C214000
	.4byte 0xBB610002
	.4byte 0x3A180000
	.4byte 0x37800074
	.4byte 0xB9C00002
	.4byte 0xBB49FFFE
	.4byte 0xBBAD8000
	.4byte 0xBD020000
	.4byte 0xBD8A4800
	.4byte 0xBDEEBFF9
	.4byte 0xBF03FEFF
	.4byte 0xBF923401
	.4byte 0x3F20D800
	.4byte 0xBDA54000
	.4byte 0x3DB7B800
	.4byte 0xBCF40002
	.4byte 0x3C114000
	.4byte 0xBB5DFFFF
	.4byte 0x3A0C0007
	.4byte 0x37800074
	.4byte 0xB9D00011
	.4byte 0xBB4FFFFF
	.4byte 0xBBC87FFF
	.4byte 0xBD00F000
	.4byte 0xBD95A000
	.4byte 0xBDDEF000
	.4byte 0xBF0B37FF
	.4byte 0xBF9277FF
	.4byte 0x3F19A800
	.4byte 0xBDBA37FF
	.4byte 0x3DAC6800
	.4byte 0xBCFA0001
	.4byte 0x3C01C001
	.4byte 0xBB5A0000
	.4byte 0x39F7FFF0
	.4byte 0x37800074
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80566078
lbl_80566078:
	# ROM: 0x562178
	.4byte lbl_805657F8


.global lbl_8056607C
lbl_8056607C:
	# ROM: 0x56217C
	.4byte 0x00000880

.global lbl_80566080
lbl_80566080:
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x3A000801
	.4byte 0xBF7FEFFF
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x39000200
	.4byte 0xBF7FFC00
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0
	.4byte 0
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x3A000801
	.4byte 0xBF7FEFFF
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x39000200
	.4byte 0xBF7FFC00
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x3E924925
	.4byte 0xBF5B6DB7
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0x000000FF
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte 0x3C008081
	.4byte 0xBF7EFEFF
	.4byte 0x000001FF
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x00000009
	.4byte 0x3B804020
	.4byte 0xBF7F7FC0
	.4byte 0x000003FF
	.4byte 0x0000000A
	.4byte 0x00000003
	.4byte 0x0000000A
	.4byte 0x3B002008
	.4byte 0xBF7FBFF0
	.4byte 0x000007FF
	.4byte 0x0000000B
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x3A801002
	.4byte 0xBF7FDFFC
	.4byte 0x00000FFF
	.4byte 0x0000000C
	.4byte 0x00000003
	.4byte 0x0000000C
	.4byte 0x3A000801
	.4byte 0xBF7FEFFF
	.4byte 0x00001FFF
	.4byte 0x0000000D
	.4byte 0x00000003
	.4byte 0x0000000D
	.4byte 0x39800400
	.4byte 0xBF7FF800
	.4byte 0x00003FFF
	.4byte 0x0000000E
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x39000200
	.4byte 0xBF7FFC00
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0x0000000F
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x3E088889
	.4byte 0xBF6EEEEF
	.4byte 0x0000001F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x3D842108
	.4byte 0xBF77BDF0
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x3D020821
	.4byte 0xBF7BEFBF
	.4byte 0x0000007F
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x3C810204
	.4byte 0xBF7DFBF8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0
	.4byte 0x3F2AAAAB
	.4byte 0xBF2AAAAA
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x3ECCCCCD
	.4byte 0xBF4CCCCD
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x3E638E39
	.4byte 0xBF638E39
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80569080
lbl_80569080:
	.4byte 0x40000000
	.4byte 0x3FCB2FF5
	.4byte 0x3FA14518
	.float 1.0
	.4byte 0x3F4B2FF5
	.4byte 0x3F214518
	.float 0.5
	.4byte 0x3ECB2FF5
	.4byte 0x3EA14518
	.float 0.25
	.4byte 0x3E4B2FF5
	.4byte 0x3E214518
	.float 0.125
	.4byte 0x3DCB2FF5
	.4byte 0x3DA14518
	.4byte 0x3D800000
	.4byte 0x3D4B2FF5
	.4byte 0x3D214518
	.4byte 0x3D000000
	.4byte 0x3CCB2FF5
	.4byte 0x3CA14518
	.4byte 0x3C800000
	.4byte 0x3C4B2FF5
	.4byte 0x3C214518
	.4byte 0x3C000000
	.4byte 0x3BCB2FF5
	.4byte 0x3BA14518
	.4byte 0x3B800000
	.4byte 0x3B4B2FF5
	.4byte 0x3B214518
	.4byte 0x3B000000
	.4byte 0x3ACB2FF5
	.4byte 0x3AA14518
	.4byte 0x3A800000
	.4byte 0x3A4B2FF5
	.4byte 0x3A214518
	.4byte 0x3A000000
	.4byte 0x39CB2FF5
	.4byte 0x39A14518
	.4byte 0x39800000
	.4byte 0x394B2FF5
	.4byte 0x39214518
	.4byte 0x39000000
	.4byte 0x38CB2FF5
	.4byte 0x38A14518
	.4byte 0x38800000
	.4byte 0x384B2FF5
	.4byte 0x38214518
	.4byte 0x38000000
	.4byte 0x37CB2FF5
	.4byte 0x37A14518
	.4byte 0x37800000
	.4byte 0x374B2FF5
	.4byte 0x37214518
	.4byte 0x37000000
	.4byte 0x36CB2FF5
	.4byte 0x36A14518
	.4byte 0x36800000
	.4byte 0x364B2FF5
	.4byte 0x36214518
	.4byte 0x36000000
	.4byte 0x35CB2FF5
	.4byte 0x35A14518
	.4byte 0x1E3CE508


.global lbl_80569180
lbl_80569180:
	# ROM: 0x565280
	.4byte lbl_80566080


.global lbl_80569184
lbl_80569184:
	# ROM: 0x565284
	.4byte 0x00003000


.global lbl_80569188
lbl_80569188:
	# ROM: 0x565288
	.4byte lbl_80569080


.global lbl_8056918C
lbl_8056918C:
	# ROM: 0x56528C
	.4byte 0x00000100


.global lbl_80569190
lbl_80569190:
	# ROM: 0x565290
	.4byte 0x00005622
	.4byte 0x00005DC0
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x0000AC44
	.4byte 0x0000BB80
	.4byte 0x00007D00
	.4byte 0


.global lbl_805691B0
lbl_805691B0:
	# ROM: 0x5652B0
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000010


.global lbl_805691E0
lbl_805691E0:
	# ROM: 0x5652E0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x0000003F
	.4byte 0x0000007F
	.4byte 0x000000FF
	.4byte 0


.global lbl_80569208
lbl_80569208:
	# ROM: 0x565308
	.4byte func_80390B40
	.4byte func_80390B9C
	.4byte func_80390BB0
	.4byte 0
	.4byte func_80390D10
	.4byte func_80390F30
	.4byte func_80390F84
	.4byte func_80391048
	.4byte func_803910A8
	.4byte 0
	.4byte func_803913D8
	.4byte func_80391588
	.4byte func_803915EC
	.4byte func_8039164C
	.4byte func_80391710
	.4byte 0
	.4byte func_80391770
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global mfci_vtbl
mfci_vtbl:
	# ROM: 0x565370
	.4byte func_803928A4
	.4byte mfCiEntryErrFunc
	.4byte func_803928BC
	.4byte 0
	.4byte mfCiOpen
	.4byte mfCiClose
	.4byte mfCiSeek
	.4byte mfCiTell
	.4byte mfCiReqRd
	.4byte 0
	.4byte mfCiStopTr
	.4byte mfCiGetStat
	.4byte mfCiGetSctLen
	.4byte mfCiSetSctLen
	.4byte mfCiGetNumTr
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte mfCiOptFn1
	.4byte 0


.global lbl_805692D8
lbl_805692D8:
	# ROM: 0x5653D8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_80393758
	.4byte func_80393824
	.4byte func_803939BC
	.4byte func_80393BC0
	.4byte func_80393EB0
	.4byte func_80393D5C
	.4byte func_80393A80
	.4byte func_80394094
	.4byte func_803938E8


.global lbl_80569308
lbl_80569308:
	# ROM: 0x565408
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_8039453C
	.4byte func_80394608
	.4byte func_803947A0
	.4byte func_803949E8
	.4byte func_80394EB8
	.4byte func_80394C7C
	.4byte func_803948A8
	.4byte func_80395158
	.4byte func_803946CC


.global lbl_80569338
lbl_80569338:
	# ROM: 0x565438
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_803958C0
	.4byte func_8039598C
	.4byte func_80395B24
	.4byte func_80395DD4
	.4byte func_803961D0
	.4byte func_80395FD8
	.4byte func_80395C74
	.4byte func_803963BC
	.4byte func_80395A50


.global lbl_80569368
lbl_80569368:
	# ROM: 0x565468
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569528
lbl_80569528:
	# ROM: 0x565628
	.4byte 0x82848684
	.4byte 0x8A848E84
	.4byte 0x92849684
	.4byte 0x9A849E84
	.4byte 0xA284A684
	.4byte 0xAA84AE84
	.4byte 0xB284B684
	.4byte 0xBA84BE84
	.4byte 0xC184C384
	.4byte 0xC584C784
	.4byte 0xC984CB84
	.4byte 0xCD84CF84
	.4byte 0xD184D384
	.4byte 0xD584D784
	.4byte 0xD984DB84
	.4byte 0xDD84DF84
	.4byte 0xE104E204
	.4byte 0xE304E404
	.4byte 0xE504E604
	.4byte 0xE704E804
	.4byte 0xE904EA04
	.4byte 0xEB04EC04
	.4byte 0xED04EE04
	.4byte 0xEF04F004
	.4byte 0xF0C4F144
	.4byte 0xF1C4F244
	.4byte 0xF2C4F344
	.4byte 0xF3C4F444
	.4byte 0xF4C4F544
	.4byte 0xF5C4F644
	.4byte 0xF6C4F744
	.4byte 0xF7C4F844
	.4byte 0xF8A4F8E4
	.4byte 0xF924F964
	.4byte 0xF9A4F9E4
	.4byte 0xFA24FA64
	.4byte 0xFAA4FAE4
	.4byte 0xFB24FB64
	.4byte 0xFBA4FBE4
	.4byte 0xFC24FC64
	.4byte 0xFC94FCB4
	.4byte 0xFCD4FCF4
	.4byte 0xFD14FD34
	.4byte 0xFD54FD74
	.4byte 0xFD94FDB4
	.4byte 0xFDD4FDF4
	.4byte 0xFE14FE34
	.4byte 0xFE54FE74
	.4byte 0xFE8CFE9C
	.4byte 0xFEACFEBC
	.4byte 0xFECCFEDC
	.4byte 0xFEECFEFC
	.4byte 0xFF0CFF1C
	.4byte 0xFF2CFF3C
	.4byte 0xFF4CFF5C
	.4byte 0xFF6CFF7C
	.4byte 0xFF88FF90
	.4byte 0xFF98FFA0
	.4byte 0xFFA8FFB0
	.4byte 0xFFB8FFC0
	.4byte 0xFFC8FFD0
	.4byte 0xFFD8FFE0
	.4byte 0xFFE8FFF0
	.4byte 0xFFF80000
	.4byte 0x7D7C797C
	.4byte 0x757C717C
	.4byte 0x6D7C697C
	.4byte 0x657C617C
	.4byte 0x5D7C597C
	.4byte 0x557C517C
	.4byte 0x4D7C497C
	.4byte 0x457C417C
	.4byte 0x3E7C3C7C
	.4byte 0x3A7C387C
	.4byte 0x367C347C
	.4byte 0x327C307C
	.4byte 0x2E7C2C7C
	.4byte 0x2A7C287C
	.4byte 0x267C247C
	.4byte 0x227C207C
	.4byte 0x1EFC1DFC
	.4byte 0x1CFC1BFC
	.4byte 0x1AFC19FC
	.4byte 0x18FC17FC
	.4byte 0x16FC15FC
	.4byte 0x14FC13FC
	.4byte 0x12FC11FC
	.4byte 0x10FC0FFC
	.4byte 0x0F3C0EBC
	.4byte 0x0E3C0DBC
	.4byte 0x0D3C0CBC
	.4byte 0x0C3C0BBC
	.4byte 0x0B3C0ABC
	.4byte 0x0A3C09BC
	.4byte 0x093C08BC
	.4byte 0x083C07BC
	.4byte 0x075C071C
	.4byte 0x06DC069C
	.4byte 0x065C061C
	.4byte 0x05DC059C
	.4byte 0x055C051C
	.4byte 0x04DC049C
	.4byte 0x045C041C
	.4byte 0x03DC039C
	.4byte 0x036C034C
	.4byte 0x032C030C
	.4byte 0x02EC02CC
	.4byte 0x02AC028C
	.4byte 0x026C024C
	.4byte 0x022C020C
	.4byte 0x01EC01CC
	.4byte 0x01AC018C
	.4byte 0x01740164
	.4byte 0x01540144
	.4byte 0x01340124
	.4byte 0x01140104
	.4byte 0x00F400E4
	.4byte 0x00D400C4
	.4byte 0x00B400A4
	.4byte 0x00940084
	.4byte 0x00780070
	.4byte 0x00680060
	.4byte 0x00580050
	.4byte 0x00480040
	.4byte 0x00380030
	.4byte 0x00280020
	.4byte 0x00180010
	.4byte 0x00080000


.global lbl_80569728
lbl_80569728:
	# ROM: 0x565828
	.4byte 0x00000001


.global lbl_8056972C
lbl_8056972C:
	# ROM: 0x56582C
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x00000014
	.4byte 0x00000018
	.4byte 0x0000001C
	.4byte 0x00000021
	.4byte 0x00000025
	.4byte 0x00000029
	.4byte 0x0000002D
	.4byte 0x00000031
	.4byte 0x00000035
	.4byte 0x00000039
	.4byte 0x00000040
	.4byte 0x00000044
	.4byte 0x00000048
	.4byte 0x0000004C
	.4byte 0x00000051
	.4byte 0x00000055
	.4byte 0x00000059
	.4byte 0x0000005D
	.4byte 0x00000062
	.4byte 0x00000066
	.4byte 0x0000006A
	.4byte 0x0000006E
	.4byte 0x00000073
	.4byte 0x00000077
	.4byte 0x0000007B
	.4byte 0x0000007F


.global lbl_805697A8
lbl_805697A8:
	# ROM: 0x5658A8
	.4byte lbl_8039C878
	.4byte lbl_8039C860
	.4byte lbl_8039C878
	.4byte lbl_8039C868
	.4byte lbl_8039C878
	.4byte lbl_8039C878
	.4byte lbl_8039C870
	.4byte lbl_8039C878
	.4byte lbl_8039C878
	.4byte 0


.global lbl_805697D0
lbl_805697D0:
	# ROM: 0x5658D0
	.4byte lbl_8051DA00
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00050800
	.4byte 0x00012000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000800
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte lbl_8051DA24
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00050800
	.4byte 0x00012000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000800
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte lbl_8051DA48
	.4byte 0
	.4byte 0x00010000
	.4byte 0x00050800
	.4byte 0x00012000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000800
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0x000000C0
	.4byte 0x000000F0
	.4byte 0x00000160
	.4byte 0x000001E0
	.4byte 0
	.4byte 0x00000160
	.4byte 0x000001E0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00005DCC
	.4byte 0x00000120
	.4byte 0
	.4byte 0x00000002
	.4byte 0x0000BB80
	.4byte 0x0000C1C0
	.4byte 0
	.4byte 0x00000800

.global lbl_805698F8
lbl_805698F8:
	# ROM: 0x5659F8
	.4byte lbl_8039F84C
	.4byte lbl_8039F84C
	.4byte lbl_8039F844
	.4byte lbl_8039F844
	.4byte lbl_8039F84C
	.4byte lbl_8039F84C
	.4byte lbl_8039F844
	.4byte lbl_8039F844
	.4byte lbl_8039F844
	.4byte lbl_8039F84C
	.4byte lbl_8039F844
	.4byte lbl_8039F84C


.global lbl_80569928
lbl_80569928:
	# ROM: 0x565A28
	.4byte lbl_8039F70C
	.4byte lbl_8039F70C
	.4byte lbl_8039F704
	.4byte lbl_8039F704
	.4byte lbl_8039F70C
	.4byte lbl_8039F70C
	.4byte lbl_8039F704
	.4byte lbl_8039F704
	.4byte lbl_8039F704
	.4byte lbl_8039F70C
	.4byte lbl_8039F704
	.4byte lbl_8039F70C


.global lbl_80569958
lbl_80569958:
	# ROM: 0x565A58
	.4byte lbl_8051E17C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569A2C
lbl_80569A2C:
	# ROM: 0x565B2C
	.4byte lbl_8051E1A0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_8051E1B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569B00
lbl_80569B00:
	# ROM: 0x565C00
	.4byte lbl_8051E1CC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569BD4
lbl_80569BD4:
	# ROM: 0x565CD4
	.4byte lbl_8051E1E0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_8051E1F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569CA8
lbl_80569CA8:
	# ROM: 0x565DA8
	.4byte lbl_8051E274
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_8051E1F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569D7C
lbl_80569D7C:
	# ROM: 0x565E7C
	.4byte lbl_8051E288
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569E50
lbl_80569E50:
	# ROM: 0x565F50
	.4byte lbl_8051E2C0
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_8051E1F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569F24
lbl_80569F24:
	# ROM: 0x566024
	.4byte lbl_8051E2D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80569FF8
lbl_80569FF8:
	# ROM: 0x5660F8
	.4byte lbl_8051E2E4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A0CC
lbl_8056A0CC:
	# ROM: 0x5661CC
	.4byte lbl_8051E2FC
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051E310
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A1A0
lbl_8056A1A0:
	# ROM: 0x5662A0
	.4byte lbl_8051E318
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A274
lbl_8056A274:
	# ROM: 0x566374
	.4byte lbl_8051E338
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_8051E348
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A348
lbl_8056A348:
	# ROM: 0x566448
	.4byte lbl_8051E350
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A41C
lbl_8056A41C:
	# ROM: 0x56651C
	.4byte lbl_8051E368
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051E380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A4F0
lbl_8056A4F0:
	# ROM: 0x5665F0
	.4byte lbl_8051E394
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051E380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A5C4
lbl_8056A5C4:
	# ROM: 0x5666C4
	.4byte lbl_8051E3AC
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051E380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A698
lbl_8056A698:
	# ROM: 0x566798
	.4byte lbl_8051E3C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051E380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A76C
lbl_8056A76C:
	# ROM: 0x56686C
	.4byte lbl_8051E3DC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_8051E1C4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051E380
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056A840
lbl_8056A840:
	# ROM: 0x566940
	.4byte lbl_8051E3F0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8056A918
lbl_8056A918:
	# ROM: 0x566A18
	.4byte lbl_803A8A64
	.4byte lbl_803A8C70
	.4byte lbl_803A8B44
	.4byte lbl_803A8DB4
	.4byte lbl_803A8AB4
	.4byte lbl_803A8C70
	.4byte lbl_803A8B44
	.4byte lbl_803A8DB4


.global lbl_8056A938
lbl_8056A938:
	# ROM: 0x566A38
	.4byte lbl_803ADEB4
	.4byte lbl_803AE3B4
	.4byte lbl_803AE2E4
	.4byte lbl_803AE42C
	.4byte lbl_803AE0C8
	.4byte lbl_803AE3B4
	.4byte lbl_803AE2E4
	.4byte lbl_803AE42C

.global lbl_8056A958
lbl_8056A958:
	.4byte lbl_803B1B44
	.4byte lbl_803B1A80
	.4byte lbl_803B19BC
	.4byte lbl_803B19BC
	.4byte lbl_803B18D0
	.4byte lbl_803B18D0
	.4byte lbl_803B18D0
	.4byte lbl_803B18D0
	.4byte lbl_803B185C
	.4byte lbl_803B17E4
	.4byte lbl_803B1770
	.4byte lbl_803B16F8
	.4byte lbl_803B1684
	.4byte lbl_803B160C
	.4byte lbl_803B1598
	.4byte lbl_803B1520
	.4byte lbl_803B14AC
	.4byte lbl_803B14AC
	.4byte lbl_803B1434
	.4byte lbl_803B1434
	.4byte lbl_803B13C0
	.4byte lbl_803B13C0
	.4byte lbl_803B1348
	.4byte lbl_803B1348
	.4byte lbl_803B12D4
	.4byte lbl_803B12D4
	.4byte lbl_803B125C
	.4byte lbl_803B125C
	.4byte lbl_803B11E8
	.4byte lbl_803B11E8
	.4byte lbl_803B1170
	.4byte lbl_803B1170
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B103C
	.4byte lbl_803B0FC8
	.4byte lbl_803B0FC8
	.4byte lbl_803B25A8
	.4byte lbl_803B0FC8
	.4byte lbl_803B0F50
	.4byte lbl_803B0F50
	.4byte lbl_803B2530
	.4byte lbl_803B0F50
	.4byte lbl_803B0EDC
	.4byte lbl_803B0EDC
	.4byte lbl_803B24BC
	.4byte lbl_803B0EDC
	.4byte lbl_803B0E64
	.4byte lbl_803B0E64
	.4byte lbl_803B2444
	.4byte lbl_803B0E64
	.4byte lbl_803B0DF0
	.4byte lbl_803B0DF0
	.4byte lbl_803B23D0
	.4byte lbl_803B0DF0
	.4byte lbl_803B0D78
	.4byte lbl_803B0D78
	.4byte lbl_803B2358
	.4byte lbl_803B0D78
	.4byte lbl_803B0D04
	.4byte lbl_803B0D04
	.4byte lbl_803B0D04
	.4byte lbl_803B0D04
	.4byte lbl_803B22E4
	.4byte lbl_803B22E4
	.4byte lbl_803B0C44
	.4byte lbl_803B0B80
	.4byte lbl_803B0B08
	.4byte lbl_803B0B08
	.4byte lbl_803B0B08
	.4byte lbl_803B0B08
	.4byte lbl_803B226C
	.4byte lbl_803B226C
	.4byte lbl_803B0A44
	.4byte lbl_803B097C
	.4byte lbl_803B0908
	.4byte lbl_803B0908
	.4byte lbl_803B0908
	.4byte lbl_803B0908
	.4byte lbl_803B21F8
	.4byte lbl_803B21F8
	.4byte lbl_803B0848
	.4byte lbl_803B0784
	.4byte lbl_803B070C
	.4byte lbl_803B070C
	.4byte lbl_803B070C
	.4byte lbl_803B070C
	.4byte lbl_803B2180
	.4byte lbl_803B2180
	.4byte lbl_803B0648
	.4byte lbl_803B0580
	.4byte lbl_803B050C
	.4byte lbl_803B050C
	.4byte lbl_803B050C
	.4byte lbl_803B050C
	.4byte lbl_803B050C
	.4byte lbl_803B050C
	.4byte lbl_803B044C
	.4byte lbl_803B0388
	.4byte lbl_803B210C
	.4byte lbl_803B210C
	.4byte lbl_803B210C
	.4byte lbl_803B210C
	.4byte lbl_803B02C8
	.4byte lbl_803B02C8
	.4byte lbl_803B0204
	.4byte lbl_803B0204
	.4byte lbl_803B018C
	.4byte lbl_803B018C
	.4byte lbl_803B018C
	.4byte lbl_803B018C
	.4byte lbl_803B018C
	.4byte lbl_803B018C
	.4byte lbl_803B00C8
	.4byte lbl_803B0000
	.4byte lbl_803B2094
	.4byte lbl_803B2094
	.4byte lbl_803B2094
	.4byte lbl_803B2094
	.4byte lbl_803AFF3C
	.4byte lbl_803AFF3C
	.4byte lbl_803AFE74
	.4byte lbl_803AFE74
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803B206C
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFE00
	.4byte lbl_803AFD40
	.4byte lbl_803AFC7C
	.4byte lbl_803AFBBC
	.4byte lbl_803AFAF8
	.4byte lbl_803AFA38
	.4byte lbl_803AFA38
	.4byte lbl_803AF974
	.4byte lbl_803AF974
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803B1FF8
	.4byte lbl_803AF8B4
	.4byte lbl_803AF8B4
	.4byte lbl_803B1F38
	.4byte lbl_803AF8B4
	.4byte lbl_803AF7F0
	.4byte lbl_803AF7F0
	.4byte lbl_803B1E74
	.4byte lbl_803AF7F0
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF778
	.4byte lbl_803AF6B4
	.4byte lbl_803AF5EC
	.4byte lbl_803AF528
	.4byte lbl_803AF460
	.4byte lbl_803AF39C
	.4byte lbl_803AF39C
	.4byte lbl_803AF2D4
	.4byte lbl_803AF2D4
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803B1DFC
	.4byte lbl_803AF210
	.4byte lbl_803AF210
	.4byte lbl_803B1D38
	.4byte lbl_803AF210
	.4byte lbl_803AF148
	.4byte lbl_803AF148
	.4byte lbl_803B1C70
	.4byte lbl_803AF148
.global lbl_8056AD58
lbl_8056AD58:
	.4byte lbl_803B5164
	.4byte lbl_803B50A0
	.4byte lbl_803B4FDC
	.4byte lbl_803B4FDC
	.4byte lbl_803B4EF0
	.4byte lbl_803B4EF0
	.4byte lbl_803B4EF0
	.4byte lbl_803B4EF0
	.4byte lbl_803B4E7C
	.4byte lbl_803B4E04
	.4byte lbl_803B4D90
	.4byte lbl_803B4D18
	.4byte lbl_803B4CA4
	.4byte lbl_803B4C2C
	.4byte lbl_803B4BB8
	.4byte lbl_803B4B40
	.4byte lbl_803B4ACC
	.4byte lbl_803B4ACC
	.4byte lbl_803B4A54
	.4byte lbl_803B4A54
	.4byte lbl_803B49E0
	.4byte lbl_803B49E0
	.4byte lbl_803B4968
	.4byte lbl_803B4968
	.4byte lbl_803B48F4
	.4byte lbl_803B48F4
	.4byte lbl_803B487C
	.4byte lbl_803B487C
	.4byte lbl_803B4808
	.4byte lbl_803B4808
	.4byte lbl_803B4790
	.4byte lbl_803B4790
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B465C
	.4byte lbl_803B45E8
	.4byte lbl_803B45E8
	.4byte lbl_803B5BC8
	.4byte lbl_803B45E8
	.4byte lbl_803B4570
	.4byte lbl_803B4570
	.4byte lbl_803B5B50
	.4byte lbl_803B4570
	.4byte lbl_803B44FC
	.4byte lbl_803B44FC
	.4byte lbl_803B5ADC
	.4byte lbl_803B44FC
	.4byte lbl_803B4484
	.4byte lbl_803B4484
	.4byte lbl_803B5A64
	.4byte lbl_803B4484
	.4byte lbl_803B4410
	.4byte lbl_803B4410
	.4byte lbl_803B59F0
	.4byte lbl_803B4410
	.4byte lbl_803B4398
	.4byte lbl_803B4398
	.4byte lbl_803B5978
	.4byte lbl_803B4398
	.4byte lbl_803B4324
	.4byte lbl_803B4324
	.4byte lbl_803B4324
	.4byte lbl_803B4324
	.4byte lbl_803B5904
	.4byte lbl_803B5904
	.4byte lbl_803B4264
	.4byte lbl_803B41A0
	.4byte lbl_803B4128
	.4byte lbl_803B4128
	.4byte lbl_803B4128
	.4byte lbl_803B4128
	.4byte lbl_803B588C
	.4byte lbl_803B588C
	.4byte lbl_803B4064
	.4byte lbl_803B3F9C
	.4byte lbl_803B3F28
	.4byte lbl_803B3F28
	.4byte lbl_803B3F28
	.4byte lbl_803B3F28
	.4byte lbl_803B5818
	.4byte lbl_803B5818
	.4byte lbl_803B3E68
	.4byte lbl_803B3DA4
	.4byte lbl_803B3D2C
	.4byte lbl_803B3D2C
	.4byte lbl_803B3D2C
	.4byte lbl_803B3D2C
	.4byte lbl_803B57A0
	.4byte lbl_803B57A0
	.4byte lbl_803B3C68
	.4byte lbl_803B3BA0
	.4byte lbl_803B3B2C
	.4byte lbl_803B3B2C
	.4byte lbl_803B3B2C
	.4byte lbl_803B3B2C
	.4byte lbl_803B3B2C
	.4byte lbl_803B3B2C
	.4byte lbl_803B3A6C
	.4byte lbl_803B39A8
	.4byte lbl_803B572C
	.4byte lbl_803B572C
	.4byte lbl_803B572C
	.4byte lbl_803B572C
	.4byte lbl_803B38E8
	.4byte lbl_803B38E8
	.4byte lbl_803B3824
	.4byte lbl_803B3824
	.4byte lbl_803B37AC
	.4byte lbl_803B37AC
	.4byte lbl_803B37AC
	.4byte lbl_803B37AC
	.4byte lbl_803B37AC
	.4byte lbl_803B37AC
	.4byte lbl_803B36E8
	.4byte lbl_803B3620
	.4byte lbl_803B56B4
	.4byte lbl_803B56B4
	.4byte lbl_803B56B4
	.4byte lbl_803B56B4
	.4byte lbl_803B355C
	.4byte lbl_803B355C
	.4byte lbl_803B3494
	.4byte lbl_803B3494
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B568C
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3420
	.4byte lbl_803B3360
	.4byte lbl_803B329C
	.4byte lbl_803B31DC
	.4byte lbl_803B3118
	.4byte lbl_803B3058
	.4byte lbl_803B3058
	.4byte lbl_803B2F94
	.4byte lbl_803B2F94
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B5618
	.4byte lbl_803B2ED4
	.4byte lbl_803B2ED4
	.4byte lbl_803B5558
	.4byte lbl_803B2ED4
	.4byte lbl_803B2E10
	.4byte lbl_803B2E10
	.4byte lbl_803B5494
	.4byte lbl_803B2E10
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2D98
	.4byte lbl_803B2CD4
	.4byte lbl_803B2C0C
	.4byte lbl_803B2B48
	.4byte lbl_803B2A80
	.4byte lbl_803B29BC
	.4byte lbl_803B29BC
	.4byte lbl_803B28F4
	.4byte lbl_803B28F4
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B541C
	.4byte lbl_803B2830
	.4byte lbl_803B2830
	.4byte lbl_803B5358
	.4byte lbl_803B2830
	.4byte lbl_803B2768
	.4byte lbl_803B2768
	.4byte lbl_803B5290
	.4byte lbl_803B2768
.global lbl_8056B158
lbl_8056B158:
	.4byte lbl_803B8B8C
	.4byte lbl_803B8AC4
	.4byte lbl_803B89FC
	.4byte lbl_803B89FC
	.4byte lbl_803B890C
	.4byte lbl_803B890C
	.4byte lbl_803B890C
	.4byte lbl_803B890C
	.4byte lbl_803B8894
	.4byte lbl_803B8818
	.4byte lbl_803B87A0
	.4byte lbl_803B8724
	.4byte lbl_803B86AC
	.4byte lbl_803B8630
	.4byte lbl_803B85B8
	.4byte lbl_803B853C
	.4byte lbl_803B84C4
	.4byte lbl_803B84C4
	.4byte lbl_803B8448
	.4byte lbl_803B8448
	.4byte lbl_803B83D0
	.4byte lbl_803B83D0
	.4byte lbl_803B8354
	.4byte lbl_803B8354
	.4byte lbl_803B82DC
	.4byte lbl_803B82DC
	.4byte lbl_803B8260
	.4byte lbl_803B8260
	.4byte lbl_803B81E8
	.4byte lbl_803B81E8
	.4byte lbl_803B816C
	.4byte lbl_803B816C
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B8034
	.4byte lbl_803B7FBC
	.4byte lbl_803B7FBC
	.4byte lbl_803B9648
	.4byte lbl_803B7FBC
	.4byte lbl_803B7F40
	.4byte lbl_803B7F40
	.4byte lbl_803B95CC
	.4byte lbl_803B7F40
	.4byte lbl_803B7EC8
	.4byte lbl_803B7EC8
	.4byte lbl_803B9554
	.4byte lbl_803B7EC8
	.4byte lbl_803B7E4C
	.4byte lbl_803B7E4C
	.4byte lbl_803B94D8
	.4byte lbl_803B7E4C
	.4byte lbl_803B7DD4
	.4byte lbl_803B7DD4
	.4byte lbl_803B9460
	.4byte lbl_803B7DD4
	.4byte lbl_803B7D58
	.4byte lbl_803B7D58
	.4byte lbl_803B93E4
	.4byte lbl_803B7D58
	.4byte lbl_803B7CE0
	.4byte lbl_803B7CE0
	.4byte lbl_803B7CE0
	.4byte lbl_803B7CE0
	.4byte lbl_803B936C
	.4byte lbl_803B936C
	.4byte lbl_803B7C18
	.4byte lbl_803B7B4C
	.4byte lbl_803B7AD0
	.4byte lbl_803B7AD0
	.4byte lbl_803B7AD0
	.4byte lbl_803B7AD0
	.4byte lbl_803B92F0
	.4byte lbl_803B92F0
	.4byte lbl_803B7A04
	.4byte lbl_803B7934
	.4byte lbl_803B78BC
	.4byte lbl_803B78BC
	.4byte lbl_803B78BC
	.4byte lbl_803B78BC
	.4byte lbl_803B9278
	.4byte lbl_803B9278
	.4byte lbl_803B77F4
	.4byte lbl_803B7728
	.4byte lbl_803B76AC
	.4byte lbl_803B76AC
	.4byte lbl_803B76AC
	.4byte lbl_803B76AC
	.4byte lbl_803B91FC
	.4byte lbl_803B91FC
	.4byte lbl_803B75E0
	.4byte lbl_803B7510
	.4byte lbl_803B7498
	.4byte lbl_803B7498
	.4byte lbl_803B7498
	.4byte lbl_803B7498
	.4byte lbl_803B7498
	.4byte lbl_803B7498
	.4byte lbl_803B73D0
	.4byte lbl_803B7304
	.4byte lbl_803B9184
	.4byte lbl_803B9184
	.4byte lbl_803B9184
	.4byte lbl_803B9184
	.4byte lbl_803B723C
	.4byte lbl_803B723C
	.4byte lbl_803B7170
	.4byte lbl_803B7170
	.4byte lbl_803B70F4
	.4byte lbl_803B70F4
	.4byte lbl_803B70F4
	.4byte lbl_803B70F4
	.4byte lbl_803B70F4
	.4byte lbl_803B70F4
	.4byte lbl_803B7028
	.4byte lbl_803B6F58
	.4byte lbl_803B9108
	.4byte lbl_803B9108
	.4byte lbl_803B9108
	.4byte lbl_803B9108
	.4byte lbl_803B6E8C
	.4byte lbl_803B6E8C
	.4byte lbl_803B6DBC
	.4byte lbl_803B6DBC
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B90E0
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6D44
	.4byte lbl_803B6C7C
	.4byte lbl_803B6BB0
	.4byte lbl_803B6AE8
	.4byte lbl_803B6A1C
	.4byte lbl_803B6954
	.4byte lbl_803B6954
	.4byte lbl_803B6888
	.4byte lbl_803B6888
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B9068
	.4byte lbl_803B67C0
	.4byte lbl_803B67C0
	.4byte lbl_803B8FA0
	.4byte lbl_803B67C0
	.4byte lbl_803B66F4
	.4byte lbl_803B66F4
	.4byte lbl_803B8ED4
	.4byte lbl_803B66F4
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B6678
	.4byte lbl_803B65AC
	.4byte lbl_803B64DC
	.4byte lbl_803B6410
	.4byte lbl_803B6340
	.4byte lbl_803B6274
	.4byte lbl_803B6274
	.4byte lbl_803B61A4
	.4byte lbl_803B61A4
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B8E58
	.4byte lbl_803B60D8
	.4byte lbl_803B60D8
	.4byte lbl_803B8D8C
	.4byte lbl_803B60D8
	.4byte lbl_803B6008
	.4byte lbl_803B6008
	.4byte lbl_803B8CBC
	.4byte lbl_803B6008
.global lbl_8056B558
lbl_8056B558:
	.4byte lbl_803BA770
	.4byte lbl_803BA7B4
	.4byte lbl_803BA7EC
	.4byte lbl_803BA828
	.4byte lbl_803BA858
	.4byte lbl_803BA890
	.4byte lbl_803BA8B8
	.4byte lbl_803BA8E8
	.4byte lbl_803BA908
	.4byte lbl_803BA948
	.4byte lbl_803BA97C
	.4byte lbl_803BA99C
	.4byte lbl_803BA9B4
	.4byte lbl_803BA9E8
	.4byte lbl_803BAA08
	.4byte lbl_803BAA40
.global lbl_8056B598
lbl_8056B598:
	.4byte lbl_803BA51C
	.4byte lbl_803BA550
	.4byte lbl_803BA580
	.4byte lbl_803BA5BC
	.4byte lbl_803BA5F8
	.4byte lbl_803BA648
	.4byte lbl_803BA69C
	.4byte lbl_803BA6F8


.global lbl_8056B5B8
lbl_8056B5B8:
	# ROM: 0x5676B8
	.4byte lbl_8051FFD8
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8051FFE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000005
	.4byte lbl_8051FFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B68C
lbl_8056B68C:
	# ROM: 0x56778C
	.4byte lbl_8051FFFC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_80520008
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B760
lbl_8056B760:
	# ROM: 0x567860
	.4byte lbl_80520020
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B834
lbl_8056B834:
	# ROM: 0x567934
	.4byte lbl_8052002C
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B908
lbl_8056B908:
	# ROM: 0x567A08
	.4byte lbl_80520038
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056B9DC
lbl_8056B9DC:
	# ROM: 0x567ADC
	.4byte lbl_80520048
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BAB0
lbl_8056BAB0:
	# ROM: 0x567BB0
	.4byte lbl_80520058
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BB84
lbl_8056BB84:
	# ROM: 0x567C84
	.4byte lbl_80520068
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520074
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052007C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520084
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BC58
lbl_8056BC58:
	# ROM: 0x567D58
	.4byte lbl_8052008C
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520074
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BD2C
lbl_8056BD2C:
	# ROM: 0x567E2C
	.4byte lbl_80520098
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BE00
lbl_8056BE00:
	# ROM: 0x567F00
	.4byte lbl_805200A4
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000005
	.4byte lbl_8051FFF0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BED4
lbl_8056BED4:
	# ROM: 0x567FD4
	.4byte lbl_805200B4
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200C8
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200D4
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056BFA8
lbl_8056BFA8:
	# ROM: 0x5680A8
	.4byte lbl_805200EC
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200C8
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200D4
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C07C
lbl_8056C07C:
	# ROM: 0x56817C
	.4byte lbl_80520100
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200C8
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200D4
	.4byte 0
	.4byte 0x00000006
	.4byte lbl_805200E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C150
lbl_8056C150:
	# ROM: 0x568250
	.4byte lbl_80520114
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520128
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520130
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520138
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520140
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C224
lbl_8056C224:
	# ROM: 0x568324
	.4byte lbl_80520150
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520128
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520084
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520160
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052016C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520138
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520180
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520188
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520190
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C2F8
lbl_8056C2F8:
	# ROM: 0x5683F8
	.4byte lbl_8052019C
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520084
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520160
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052016C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201B4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C364
lbl_8056C364:
	# ROM: 0x568464
	.4byte lbl_805201C4
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201D8
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201E0
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201E8
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_805201F4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C3D0
lbl_8056C3D0:
	# ROM: 0x5684D0
	.4byte lbl_805201FC
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x0000000A
	.4byte lbl_80520208
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C43C
lbl_8056C43C:
	# ROM: 0x56853C
	.4byte lbl_80520210
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C4A8
lbl_8056C4A8:
	# ROM: 0x5685A8
	.4byte lbl_80520220
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C514
lbl_8056C514:
	# ROM: 0x568614
	.4byte lbl_80520230
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520240
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052024C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520258
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520264
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C580
lbl_8056C580:
	# ROM: 0x568680
	.4byte lbl_80520278
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0x0000000B
	.4byte lbl_80520018
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_8052028C
	.4byte 0
	.4byte 0x00000004
	.4byte lbl_80520294
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C5F0
lbl_8056C5F0:
	# ROM: 0x5686F0
	.4byte lbl_803C95C8
	.4byte lbl_803C923C
	.4byte lbl_803C9268
	.4byte lbl_803C9274
	.4byte lbl_803C9348
	.4byte lbl_803C95C8
	.4byte lbl_803C95C8
	.4byte 0


.global lbl_8056C610
lbl_8056C610:
	.asciz "tst, help_time_sec, help_time_msec, help_time_64, help_time, mt_max, master_time, out_time,  mt_ot, mtmax_ot,  diff_l_max, diff_l_min, diff_a_max, tst->diff_a_min, pastat, adjmode, resethist, excesserr, adj_limit, adj_front, adj_rear,  movave_1st, movave_2nd,  adxt_stat \n\n"
	.balign 4
	.4byte 0


.global lbl_8056C728
lbl_8056C728:
	# ROM: 0x568828
	.4byte lbl_803D1D7C
	.4byte lbl_803D1D84
	.4byte lbl_803D1D8C
	.4byte lbl_803D1D94
	.4byte lbl_803D1D9C
	.4byte lbl_803D1DA4
	.4byte lbl_803D1DAC


.global lbl_8056C744
lbl_8056C744:
	# ROM: 0x568844
	.4byte lbl_803D2D04
	.4byte lbl_803D2CB8
	.4byte lbl_803D2CC0
	.4byte lbl_803D2CC8
	.4byte lbl_803D2CD0
	.4byte lbl_803D2CD8
	.4byte lbl_803D2CE0
	.4byte lbl_803D2CEC
	.4byte lbl_803D2CF8


.global lbl_8056C768
lbl_8056C768:
	# ROM: 0x568868
	.4byte lbl_803D3A9C
	.4byte lbl_803D3AA4
	.4byte lbl_803D3AAC
	.4byte lbl_803D3AB4
	.4byte lbl_803D3ABC
	.4byte lbl_803D3AC4
	.4byte lbl_803D3ACC


.global lbl_8056C784
lbl_8056C784:
	# ROM: 0x568884
	.4byte lbl_803D3D48
	.4byte lbl_803D3D50
	.4byte lbl_803D3D58
	.4byte lbl_803D3D80
	.4byte lbl_803D3D80
	.4byte lbl_803D3D80
	.4byte lbl_803D3D60
	.4byte lbl_803D3D68
	.4byte lbl_803D3D70
	.4byte lbl_803D3D78
	.4byte 0

.global lbl_8056C7B0
lbl_8056C7B0:
	.asciz "-------------------------------- TRACE\n"
	.asciz "Address:   BackChain   LR save\n"
	.asciz "%08X:  %08X    %08X "
	.balign 4


.global lbl_8056C810
lbl_8056C810:
	.asciz "%s:%d Panic:"
	.balign 4


.global lbl_8056C820
lbl_8056C820:
	.asciz "%s:%d Warning:"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C840
lbl_8056C840:
	# ROM: 0x568940
	.4byte 0x0000000E
	.asciz "3DModels(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C860
lbl_8056C860:
	# ROM: 0x568960
	.4byte 0x0000000E
	.asciz "Palettes(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C880
lbl_8056C880:
	# ROM: 0x568980
	.4byte 0x0000000E
	.asciz "Textures(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C8A0
lbl_8056C8A0:
	# ROM: 0x5689A0
	.4byte 0x0000000C
	.asciz "AnmChr(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0

#unused
	.4byte 0x0000000C
	.asciz "AnmVis(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C8E0
lbl_8056C8E0:
	# ROM: 0x5689E0
	.4byte 0x0000000C
	.asciz "AnmClr(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C900
lbl_8056C900:
	# ROM: 0x568A00
	.4byte 0x0000000F
	.asciz "AnmTexPat(NW4R)"
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C920
lbl_8056C920:
	# ROM: 0x568A20
	.4byte 0x0000000F
	.asciz "AnmTexSrt(NW4R)"
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C940
lbl_8056C940:
	# ROM: 0x568A40
	.4byte 0x0000000C
	.asciz "AnmShp(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C960
lbl_8056C960:
	# ROM: 0x568A60
	.4byte 0x0000000C
	.asciz "AnmScn(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000008
	.asciz "External"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C9A0
lbl_8056C9A0:
	# ROM: 0x568AA0
	.4byte 0x00010001
	.4byte 0x00010705
	.4byte 0x06000000
	.4byte 0x00000007
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C9C0
lbl_8056C9C0:
	# ROM: 0x568AC0
	.4byte 0x0000000E
	.asciz "LightSet(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056C9E0
lbl_8056C9E0:
	# ROM: 0x568AE0
	.4byte 0x0000000F
	.asciz "AmbLights(NW4R)"
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056CA00
lbl_8056CA00:
	# ROM: 0x568B00
	.4byte 0x0000000C
	.asciz "Lights(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056CA20
lbl_8056CA20:
	# ROM: 0x568B20
	.4byte 0x0000000A
	.asciz "Fogs(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056CA40
lbl_8056CA40:
	# ROM: 0x568B40
	.4byte 0x0000000D
	.asciz "Cameras(NW4R)"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056CA60
lbl_8056CA60:
	# ROM: 0x568B60
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d15AnmObjMatClrResCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d15AnmObjMatClrResFUlUlPv
	.4byte __dt__Q34nw4r3g3d15AnmObjMatClrResFv
	.4byte GetTypeObj__Q34nw4r3g3d15AnmObjMatClrResCFv
	.4byte GetTypeName__Q34nw4r3g3d15AnmObjMatClrResCFv
	.4byte SetFrame__Q34nw4r3g3d15AnmObjMatClrResFf
	.4byte GetFrame__Q34nw4r3g3d15AnmObjMatClrResCFv
	.4byte UpdateFrame__Q34nw4r3g3d15AnmObjMatClrResFv
	.4byte SetUpdateRate__Q34nw4r3g3d15AnmObjMatClrResFf
	.4byte GetUpdateRate__Q34nw4r3g3d15AnmObjMatClrResCFv
	.4byte Bind__Q34nw4r3g3d15AnmObjMatClrResFQ34nw4r3g3d6ResMdl
	.4byte Release__Q34nw4r3g3d12AnmObjMatClrFv
	.4byte GetResult__Q34nw4r3g3d15AnmObjMatClrResFPQ34nw4r3g3d12ClrAnmResultUl
	.4byte Attach__Q34nw4r3g3d12AnmObjMatClrFiPQ34nw4r3g3d15AnmObjMatClrRes
	.4byte Detach__Q34nw4r3g3d12AnmObjMatClrFi
	.4byte DetachAll__Q34nw4r3g3d12AnmObjMatClrFv


.global lbl_8056CAA8
lbl_8056CAA8:
	# ROM: 0x568BA8
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12AnmObjMatClrCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d12AnmObjMatClrFv
	.4byte GetTypeObj__Q34nw4r3g3d12AnmObjMatClrCFv
	.4byte GetTypeName__Q34nw4r3g3d12AnmObjMatClrCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte Release__Q34nw4r3g3d12AnmObjMatClrFv
	.4byte 0
	.4byte Attach__Q34nw4r3g3d12AnmObjMatClrFiPQ34nw4r3g3d15AnmObjMatClrRes
	.4byte Detach__Q34nw4r3g3d12AnmObjMatClrFi
	.4byte DetachAll__Q34nw4r3g3d12AnmObjMatClrFv


.global lbl_8056CAF0
lbl_8056CAF0:
	# ROM: 0x568BF0
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d15AnmObjTexPatResCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d15AnmObjTexPatResFUlUlPv
	.4byte __dt__Q34nw4r3g3d15AnmObjTexPatResFv
	.4byte GetTypeObj__Q34nw4r3g3d15AnmObjTexPatResCFv
	.4byte GetTypeName__Q34nw4r3g3d15AnmObjTexPatResCFv
	.4byte SetFrame__Q34nw4r3g3d15AnmObjTexPatResFf
	.4byte GetFrame__Q34nw4r3g3d15AnmObjTexPatResCFv
	.4byte UpdateFrame__Q34nw4r3g3d15AnmObjTexPatResFv
	.4byte SetUpdateRate__Q34nw4r3g3d15AnmObjTexPatResFf
	.4byte GetUpdateRate__Q34nw4r3g3d15AnmObjTexPatResCFv
	.4byte Bind__Q34nw4r3g3d15AnmObjTexPatResFQ34nw4r3g3d6ResMdl
	.4byte Release__Q34nw4r3g3d12AnmObjTexPatFv
	.4byte GetResult__Q34nw4r3g3d15AnmObjTexPatResFPQ34nw4r3g3d15TexPatAnmResultUl
	.4byte Attach__Q34nw4r3g3d12AnmObjTexPatFiPQ34nw4r3g3d15AnmObjTexPatRes
	.4byte Detach__Q34nw4r3g3d12AnmObjTexPatFi
	.4byte DetachAll__Q34nw4r3g3d12AnmObjTexPatFv


.global lbl_8056CB38
lbl_8056CB38:
	# ROM: 0x568C38
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12AnmObjTexPatCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d12AnmObjTexPatFv
	.4byte GetTypeObj__Q34nw4r3g3d12AnmObjTexPatCFv
	.4byte GetTypeName__Q34nw4r3g3d12AnmObjTexPatCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte Release__Q34nw4r3g3d12AnmObjTexPatFv
	.4byte 0
	.4byte Attach__Q34nw4r3g3d12AnmObjTexPatFiPQ34nw4r3g3d15AnmObjTexPatRes
	.4byte Detach__Q34nw4r3g3d12AnmObjTexPatFi
	.4byte DetachAll__Q34nw4r3g3d12AnmObjTexPatFv


.global lbl_8056CB80
lbl_8056CB80:
	# ROM: 0x568C80
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d15AnmObjTexSrtResCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d15AnmObjTexSrtResFUlUlPv
	.4byte __dt__Q34nw4r3g3d15AnmObjTexSrtResFv
	.4byte GetTypeObj__Q34nw4r3g3d15AnmObjTexSrtResCFv
	.4byte GetTypeName__Q34nw4r3g3d15AnmObjTexSrtResCFv
	.4byte SetFrame__Q34nw4r3g3d15AnmObjTexSrtResFf
	.4byte GetFrame__Q34nw4r3g3d15AnmObjTexSrtResCFv
	.4byte UpdateFrame__Q34nw4r3g3d15AnmObjTexSrtResFv
	.4byte SetUpdateRate__Q34nw4r3g3d15AnmObjTexSrtResFf
	.4byte GetUpdateRate__Q34nw4r3g3d15AnmObjTexSrtResCFv
	.4byte Bind__Q34nw4r3g3d15AnmObjTexSrtResFQ34nw4r3g3d6ResMdl
	.4byte Release__Q34nw4r3g3d12AnmObjTexSrtFv
	.4byte GetResult__Q34nw4r3g3d15AnmObjTexSrtResFPQ34nw4r3g3d15TexSrtAnmResultUl
	.4byte Attach__Q34nw4r3g3d12AnmObjTexSrtFiPQ34nw4r3g3d15AnmObjTexSrtRes
	.4byte Detach__Q34nw4r3g3d12AnmObjTexSrtFi
	.4byte DetachAll__Q34nw4r3g3d12AnmObjTexSrtFv


.global lbl_8056CBC8
lbl_8056CBC8:
	# ROM: 0x568CC8
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12AnmObjTexSrtCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d12AnmObjTexSrtFv
	.4byte GetTypeObj__Q34nw4r3g3d20AnmObjTexSrtOverrideCFv
	.4byte GetTypeName__Q34nw4r3g3d20AnmObjTexSrtOverrideCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte Release__Q34nw4r3g3d12AnmObjTexSrtFv
	.4byte 0
	.4byte Attach__Q34nw4r3g3d12AnmObjTexSrtFiPQ34nw4r3g3d15AnmObjTexSrtRes
	.4byte Detach__Q34nw4r3g3d12AnmObjTexSrtFi
	.4byte DetachAll__Q34nw4r3g3d12AnmObjTexSrtFv


.global lbl_8056CC10
lbl_8056CC10:
	# ROM: 0x568D10
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12AnmObjChrResCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d12AnmObjChrResFUlUlPv
	.4byte __dt__Q34nw4r3g3d12AnmObjChrResFv
	.4byte GetTypeObj__Q34nw4r3g3d12AnmObjChrResCFv
	.4byte GetTypeName__Q34nw4r3g3d12AnmObjChrResCFv
	.4byte SetFrame__Q34nw4r3g3d12AnmObjChrResFf
	.4byte GetFrame__Q34nw4r3g3d12AnmObjChrResCFv
	.4byte UpdateFrame__Q34nw4r3g3d12AnmObjChrResFv
	.4byte SetUpdateRate__Q34nw4r3g3d12AnmObjChrResFf
	.4byte GetUpdateRate__Q34nw4r3g3d12AnmObjChrResCFv
	.4byte Bind__Q34nw4r3g3d12AnmObjChrResFQ34nw4r3g3d6ResMdl
	.4byte Release__Q34nw4r3g3d9AnmObjChrFv
	.4byte GetResult__Q34nw4r3g3d12AnmObjChrResFPQ34nw4r3g3d12ChrAnmResultUl
	.4byte Attach__Q34nw4r3g3d9AnmObjChrFiPQ34nw4r3g3d12AnmObjChrRes
	.4byte Detach__Q34nw4r3g3d9AnmObjChrFi
	.4byte DetachAll__Q34nw4r3g3d9AnmObjChrFv
	.4byte SetWeight__Q34nw4r3g3d9AnmObjChrFif
	.4byte GetWeight__Q34nw4r3g3d9AnmObjChrCFi
	.4byte Bind__Q34nw4r3g3d15AnmObjTexSrtResFQ34nw4r3g3d6ResMdlUlQ44nw4r3g3d9AnmObjChr10BindOption
	.4byte Release__Q34nw4r3g3d12AnmObjChrResFQ34nw4r3g3d6ResMdlUlQ44nw4r3g3d9AnmObjChr10BindOption


.global lbl_8056CC68
lbl_8056CC68:
	# ROM: 0x568D68
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d14AnmObjChrBlendCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d13AnmObjChrNodeFUlUlPv
	.4byte __dt__Q34nw4r3g3d14AnmObjChrBlendFv
	.4byte GetTypeObj__Q34nw4r3g3d14AnmObjChrBlendCFv
	.4byte GetTypeName__Q34nw4r3g3d14AnmObjChrBlendCFv
	.4byte SetFrame__Q34nw4r3g3d13AnmObjChrNodeFf
	.4byte GetFrame__Q34nw4r3g3d13AnmObjChrNodeCFv
	.4byte UpdateFrame__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte SetUpdateRate__Q34nw4r3g3d13AnmObjChrNodeFf
	.4byte GetUpdateRate__Q34nw4r3g3d13AnmObjChrNodeCFv
	.4byte Bind__Q34nw4r3g3d13AnmObjChrNodeFQ34nw4r3g3d6ResMdl
	.4byte Release__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte GetResult__Q34nw4r3g3d14AnmObjChrBlendFPQ34nw4r3g3d12ChrAnmResultUl
	.4byte Attach__Q34nw4r3g3d13AnmObjChrNodeFiPQ34nw4r3g3d12AnmObjChrRes
	.4byte Detach__Q34nw4r3g3d13AnmObjChrNodeFi
	.4byte DetachAll__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte SetWeight__Q34nw4r3g3d14AnmObjChrBlendFif
	.4byte GetWeight__Q34nw4r3g3d14AnmObjChrBlendCFi
	.4byte Bind__Q34nw4r3g3d13AnmObjChrNodeFQ34nw4r3g3d6ResMdlUlQ44nw4r3g3d9AnmObjChr10BindOption
	.4byte Release__Q34nw4r3g3d13AnmObjChrNodeFQ34nw4r3g3d6ResMdlUlQ44nw4r3g3d9AnmObjChr10BindOption


.global lbl_8056CCC0
lbl_8056CCC0:
	# ROM: 0x568DC0
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d13AnmObjChrNodeCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d13AnmObjChrNodeFUlUlPv
	.4byte __dt__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte GetTypeObj__Q34nw4r3g3d13AnmObjChrNodeCFv
	.4byte GetTypeName__Q34nw4r3g3d13AnmObjChrNodeCFv
	.4byte SetFrame__Q34nw4r3g3d13AnmObjChrNodeFf
	.4byte GetFrame__Q34nw4r3g3d13AnmObjChrNodeCFv
	.4byte UpdateFrame__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte SetUpdateRate__Q34nw4r3g3d13AnmObjChrNodeFf
	.4byte GetUpdateRate__Q34nw4r3g3d13AnmObjChrNodeCFv
	.4byte Bind__Q34nw4r3g3d13AnmObjChrNodeFQ34nw4r3g3d6ResMdl
	.4byte Release__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte 0
	.4byte Attach__Q34nw4r3g3d13AnmObjChrNodeFiPQ34nw4r3g3d12AnmObjChrRes
	.4byte Detach__Q34nw4r3g3d13AnmObjChrNodeFi
	.4byte DetachAll__Q34nw4r3g3d13AnmObjChrNodeFv
	.4byte SetWeight__Q34nw4r3g3d9AnmObjChrFif
	.4byte GetWeight__Q34nw4r3g3d9AnmObjChrCFi
	.4byte Bind__Q34nw4r3g3d13AnmObjChrNodeFQ34nw4r3g3d6ResMdlUlQ44nw4r3g3d9AnmObjChr10BindOption
	.4byte Release__Q34nw4r3g3d13AnmObjChrNodeFQ34nw4r3g3d6ResMdlUlQ44nw4r3g3d9AnmObjChr10BindOption


.global lbl_8056CD18
lbl_8056CD18:
	# ROM: 0x568E18
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d9AnmObjChrCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d9AnmObjChrFv
	.4byte GetTypeObj__Q34nw4r3g3d9AnmObjChrCFv
	.4byte GetTypeName__Q34nw4r3g3d9AnmObjChrCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte Release__Q34nw4r3g3d9AnmObjChrFv
	.4byte 0
	.4byte Attach__Q34nw4r3g3d9AnmObjChrFiPQ34nw4r3g3d12AnmObjChrRes
	.4byte Detach__Q34nw4r3g3d9AnmObjChrFi
	.4byte DetachAll__Q34nw4r3g3d9AnmObjChrFv
	.4byte SetWeight__Q34nw4r3g3d9AnmObjChrFif
	.4byte GetWeight__Q34nw4r3g3d9AnmObjChrCFi
	.4byte 0
	.4byte 0


.global lbl_8056CD70
lbl_8056CD70:
	# ROM: 0x568E70
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d9AnmScnResCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d9AnmScnResFUlUlPv
	.4byte __dt__Q34nw4r3g3d9AnmScnResFv
	.4byte GetTypeObj__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetTypeName__Q34nw4r3g3d9AnmScnResCFv
	.4byte SetFrame__Q34nw4r3g3d9AnmScnResFf
	.4byte GetFrame__Q34nw4r3g3d9AnmScnResCFv
	.4byte SetUpdateRate__Q34nw4r3g3d9AnmScnResFf
	.4byte GetUpdateRate__Q34nw4r3g3d9AnmScnResCFv
	.4byte UpdateFrame__Q34nw4r3g3d9AnmScnResFv
	.4byte Attach__Q34nw4r3g3d6AnmScnFiPQ34nw4r3g3d9AnmScnRes
	.4byte Detach__Q34nw4r3g3d6AnmScnFi
	.4byte GetNumLightSet__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetNumAmbLight__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetNumDiffuseLight__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetNumSpecularLight__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetNumFog__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetNumCamera__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetLightSetMaxRefNumber__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetAmbLightMaxRefNumber__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetDiffuseLightMaxRefNumber__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetFogMaxRefNumber__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetCameraMaxRefNumber__Q34nw4r3g3d9AnmScnResCFv
	.4byte GetLightSet__Q34nw4r3g3d9AnmScnResFQ34nw4r3g3d8LightSetUl
	.4byte GetAmbLightColor__Q34nw4r3g3d9AnmScnResFUl
	.4byte GetLight__Q34nw4r3g3d9AnmScnResFPQ34nw4r3g3d8LightObjPQ34nw4r3g3d8LightObjUl
	.4byte GetFog__Q34nw4r3g3d9AnmScnResFQ34nw4r3g3d3FogUl
	.4byte GetCamera__Q34nw4r3g3d9AnmScnResFQ34nw4r3g3d6CameraUl
	.4byte GetSpecularLightID__Q34nw4r3g3d9AnmScnResCFUl
	.4byte HasSpecularLight__Q34nw4r3g3d9AnmScnResCFUl
	.4byte GetAmbLightResult__Q34nw4r3g3d9AnmScnResFPQ34nw4r3g3d17AmbLightAnmResultUl
	.4byte GetLightResult__Q34nw4r3g3d9AnmScnResFPQ34nw4r3g3d14LightAnmResultUl
	.4byte GetFogResult__Q34nw4r3g3d9AnmScnResFPQ34nw4r3g3d12FogAnmResultUl
	.4byte GetCameraResult__Q34nw4r3g3d9AnmScnResFPQ34nw4r3g3d15CameraAnmResultUl


.global lbl_8056CE00
lbl_8056CE00:
	# ROM: 0x568F00
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d6AnmScnCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d6AnmScnFv
	.4byte GetTypeObj__Q34nw4r3g3d6AnmScnCFv
	.4byte GetTypeName__Q34nw4r3g3d6AnmScnCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte Attach__Q34nw4r3g3d6AnmScnFiPQ34nw4r3g3d9AnmScnRes
	.4byte Detach__Q34nw4r3g3d6AnmScnFi
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056CE90
lbl_8056CE90:
	# ROM: 0x568F90
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d6G3dObjCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d6G3dObjFv
	.4byte GetTypeObj__Q34nw4r3g3d6G3dObjCFv
	.4byte GetTypeName__Q34nw4r3g3d6G3dObjCFv
	.4byte 0


.global lbl_8056CEB0
lbl_8056CEB0:
	# ROM: 0x568FB0
	.4byte 0
	.4byte 0
	.4byte __cl__Q44nw4r3g3d8G3DState11IndMtxOpStdFPQ44nw4r3g3d8G3DState13IndTexMtxInfo
	.4byte __dt__Q44nw4r3g3d8G3DState11IndMtxOpStdFv
	.4byte Reset__Q44nw4r3g3d8G3DState11IndMtxOpStdFv
	.4byte SetNrmMapMtx__Q44nw4r3g3d8G3DState11IndMtxOpStdF14_GXIndTexMtxIDPCQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34Q44nw4r3g3d14ResMatMiscData14IndirectMethod


.global lbl_8056CEC8
lbl_8056CEC8:
	.asciz "NodeTree"
	.balign 4
	.4byte 0


.global lbl_8056CED8
lbl_8056CED8:
	# ROM: 0x568FD8
	.4byte lbl_803F4800
	.4byte lbl_803F4698
	.4byte lbl_803F46C0
	.4byte lbl_803F46E8
	.4byte lbl_803F4710
	.4byte lbl_803F4738
	.4byte lbl_803F4760
	.4byte lbl_803F4788
	.4byte lbl_803F47B0
	.4byte lbl_803F47D8


.global lbl_8056CF00
lbl_8056CF00:
	# ROM: 0x569000
	.4byte lbl_803F48D0
	.4byte lbl_803F4840
	.4byte lbl_803F4850
	.4byte lbl_803F4860
	.4byte lbl_803F4870
	.4byte lbl_803F4880
	.4byte lbl_803F4890
	.4byte lbl_803F48A0
	.4byte lbl_803F48B0
	.4byte lbl_803F48C0


.global lbl_8056CF28
lbl_8056CF28:
	# ROM: 0x569028
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d8ScnGroupCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d8ScnGroupFUlUlPv
	.4byte __dt__Q34nw4r3g3d8ScnGroupFv
	.4byte GetTypeObj__Q34nw4r3g3d8ScnGroupCFv
	.4byte GetTypeName__Q34nw4r3g3d8ScnGroupCFv
	.4byte ForEach__Q34nw4r3g3d8ScnGroupFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d6ScnObjFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d6ScnObjCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d6ScnObjFPCQ34nw4r4math5MTX34PUl
	.4byte Insert__Q34nw4r3g3d8ScnGroupFUlPQ34nw4r3g3d6ScnObj
	.4byte Remove__Q34nw4r3g3d8ScnGroupFUl
	.4byte Remove__Q34nw4r3g3d8ScnGroupFPQ34nw4r3g3d6ScnObj


.global lbl_8056CF68
lbl_8056CF68:
	# ROM: 0x569068
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d6ScnObjCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte 0
	.4byte __dt__Q34nw4r3g3d6ScnObjFv
	.4byte GetTypeObj__Q34nw4r3g3d6ScnObjCFv
	.4byte GetTypeName__Q34nw4r3g3d6ScnObjCFv
	.4byte 0
	.4byte SetScnObjOption__Q34nw4r3g3d6ScnObjFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d6ScnObjCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d6ScnObjFPCQ34nw4r4math5MTX34PUl
	.4byte 0


.global lbl_8056CFA0
lbl_8056CFA0:
	# ROM: 0x5690A0
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3g3d12ScnObjGatherFv
	.4byte Add__Q34nw4r3g3d12ScnObjGatherFPQ34nw4r3g3d6ScnObjbb
	.4byte Clear__Q34nw4r3g3d12ScnObjGatherFv
	.4byte ZSort__Q34nw4r3g3d12ScnObjGatherFv
	.4byte Sort__Q34nw4r3g3d12ScnObjGatherFv
	.4byte Sort__Q34nw4r3g3d12ScnObjGatherFPFPCQ34nw4r3g3d6ScnObjPCQ34nw4r3g3d6ScnObj_bPFPCQ34nw4r3g3d6ScnObjPCQ34nw4r3g3d6ScnObj_b
	.4byte DrawOpa__Q34nw4r3g3d12ScnObjGatherFPQ34nw4r3g3d14ResMdlDrawMode
	.4byte DrawXlu__Q34nw4r3g3d12ScnObjGatherFPQ34nw4r3g3d14ResMdlDrawMode
	.4byte CheckScnObj__Q34nw4r3g3d12ScnObjGatherFPQ34nw4r3g3d6ScnObj
	.4byte 0


.global lbl_8056CFD0
lbl_8056CFD0:
	# ROM: 0x5690D0
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d7ScnRootCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d7ScnRootFUlUlPv
	.4byte __dt__Q34nw4r3g3d7ScnRootFv
	.4byte GetTypeObj__Q34nw4r3g3d7ScnRootCFv
	.4byte GetTypeName__Q34nw4r3g3d7ScnRootCFv
	.4byte ForEach__Q34nw4r3g3d8ScnGroupFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d6ScnObjFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d6ScnObjCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d6ScnObjFPCQ34nw4r4math5MTX34PUl
	.4byte Insert__Q34nw4r3g3d8ScnGroupFUlPQ34nw4r3g3d6ScnObj
	.4byte Remove__Q34nw4r3g3d8ScnGroupFUl
	.4byte Remove__Q34nw4r3g3d8ScnGroupFPQ34nw4r3g3d6ScnObj


.global lbl_8056D010
lbl_8056D010:
	# ROM: 0x569110
	.4byte lbl_803F8690
	.4byte lbl_803F86E8
	.4byte lbl_803F8740
	.4byte lbl_803F8798
	.4byte lbl_803F87F0
	.4byte lbl_803F89F4
	.4byte lbl_803F8844


.global lbl_8056D02C
lbl_8056D02C:
	.asciz "NodeTree"
	.balign 4


.global lbl_8056D038
lbl_8056D038:
	# ROM: 0x569138
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12ScnMdlSimpleCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d12ScnMdlSimpleFUlUlPv
	.4byte __dt__Q34nw4r3g3d12ScnMdlSimpleFv
	.4byte GetTypeObj__Q34nw4r3g3d12ScnMdlSimpleCFv
	.4byte GetTypeName__Q34nw4r3g3d12ScnMdlSimpleCFv
	.4byte ForEach__Q34nw4r3g3d7ScnLeafFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d12ScnMdlSimpleFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d12ScnMdlSimpleCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d7ScnLeafFPCQ34nw4r4math5MTX34PUl
	.4byte SetAnmObj__Q34nw4r3g3d12ScnMdlSimpleFPQ34nw4r3g3d6AnmObjQ44nw4r3g3d12ScnMdlSimple10AnmObjType
	.4byte RemoveAnmObj__Q34nw4r3g3d12ScnMdlSimpleFPQ34nw4r3g3d6AnmObj
	.4byte RemoveAnmObj__Q34nw4r3g3d12ScnMdlSimpleFQ44nw4r3g3d12ScnMdlSimple10AnmObjType
	.4byte GetAnmObj__Q34nw4r3g3d12ScnMdlSimpleFQ44nw4r3g3d12ScnMdlSimple10AnmObjType
	.4byte GetAnmObj__Q34nw4r3g3d12ScnMdlSimpleCFQ44nw4r3g3d12ScnMdlSimple10AnmObjType


.global lbl_8056D080
lbl_8056D080:
	# ROM: 0x569180
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d6ScnMdlCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d6ScnMdlFUlUlPv
	.4byte __dt__Q34nw4r3g3d6ScnMdlFv
	.4byte GetTypeObj__Q34nw4r3g3d6ScnMdlCFv
	.4byte GetTypeName__Q34nw4r3g3d6ScnMdlCFv
	.4byte ForEach__Q34nw4r3g3d7ScnLeafFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d6ScnMdlFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d6ScnMdlCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d7ScnLeafFPCQ34nw4r4math5MTX34PUl
	.4byte SetAnmObj__Q34nw4r3g3d6ScnMdlFPQ34nw4r3g3d6AnmObjQ44nw4r3g3d12ScnMdlSimple10AnmObjType
	.4byte RemoveAnmObj__Q34nw4r3g3d6ScnMdlFPQ34nw4r3g3d6AnmObj
	.4byte RemoveAnmObj__Q34nw4r3g3d6ScnMdlFQ44nw4r3g3d12ScnMdlSimple10AnmObjType
	.4byte GetAnmObj__Q34nw4r3g3d6ScnMdlFQ44nw4r3g3d12ScnMdlSimple10AnmObjType
	.4byte GetAnmObj__Q34nw4r3g3d6ScnMdlCFQ44nw4r3g3d12ScnMdlSimple10AnmObjType


.global lbl_8056D0C8
lbl_8056D0C8:
	# ROM: 0x5691C8
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d12ScnMdlExpandCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d12ScnMdlExpandFUlUlPv
	.4byte __dt__Q34nw4r3g3d12ScnMdlExpandFv
	.4byte GetTypeObj__Q34nw4r3g3d12ScnMdlExpandCFv
	.4byte GetTypeName__Q34nw4r3g3d12ScnMdlExpandCFv
	.4byte ForEach__Q34nw4r3g3d8ScnGroupFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d6ScnObjFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d6ScnObjCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d6ScnObjFPCQ34nw4r4math5MTX34PUl
	.4byte func_803FC21C
	.4byte Remove__Q34nw4r3g3d12ScnMdlExpandFUl
	.4byte Remove__Q34nw4r3g3d12ScnMdlExpandFPQ34nw4r3g3d6ScnObj

.global lbl_8056D108
lbl_8056D108:
	.asciz "<< NW4R    - G3D \tfinal   build: Nov 20 2008 03:23:14 (0x4199_60831) >>"


.global lbl_8056D150
lbl_8056D150:
	# ROM: 0x569250
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d7ScnProcCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d7ScnProcFUlUlPv
	.4byte __dt__Q34nw4r3g3d7ScnProcFv
	.4byte GetTypeObj__Q34nw4r3g3d7ScnProcCFv
	.4byte GetTypeName__Q34nw4r3g3d7ScnProcCFv
	.4byte ForEach__Q34nw4r3g3d7ScnLeafFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d7ScnLeafFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d7ScnLeafCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d7ScnLeafFPCQ34nw4r4math5MTX34PUl
	.4byte 0

.global lbl_8056D188
lbl_8056D188:
	.asciz "<< NW4R    - LYT \tfinal   build: Aug 21 2008 05:21:58 (0x4199_60831) >>"


.global lbl_8056D1D0
lbl_8056D1D0:
	# ROM: 0x5692D0
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt4PaneFv
	.4byte GetRuntimeTypeInfo__Q34nw4r3lyt4PaneCFv
	.4byte CalculateMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte DrawSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt4PaneFUl
	.4byte AnimateSelf__Q34nw4r3lyt4PaneFUl
	.4byte GetVtxColor__Q34nw4r3lyt4PaneCFUl
	.4byte SetVtxColor__Q34nw4r3lyt4PaneFUlQ34nw4r2ut5Color
	.4byte GetColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetVtxColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte FindPaneByName__Q34nw4r3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q34nw4r3lyt4PaneFPCcb
	.4byte BindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte UnbindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q34nw4r3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResourcebb
	.4byte GetMaterialNum__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFUl
	.4byte LoadMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte 0


.global lbl_8056D248
lbl_8056D248:
	# ROM: 0x569348
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt5GroupFv
	.4byte 0


.global lbl_8056D258
lbl_8056D258:
	# ROM: 0x569358
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt6LayoutFv
	.4byte Build__Q34nw4r3lyt6LayoutFPCvPQ34nw4r3lyt16ResourceAccessor
	.4byte CreateAnimTransform__Q34nw4r3lyt6LayoutFv
	.4byte CreateAnimTransform__Q34nw4r3lyt6LayoutFPCvPQ34nw4r3lyt16ResourceAccessor
	.4byte CreateAnimTransform__Q34nw4r3lyt6LayoutFRCQ34nw4r3lyt12AnimResourcePQ34nw4r3lyt16ResourceAccessor
	.4byte BindAnimation__Q34nw4r3lyt6LayoutFPQ34nw4r3lyt13AnimTransform
	.4byte UnbindAnimation__Q34nw4r3lyt6LayoutFPQ34nw4r3lyt13AnimTransform
	.4byte UnbindAllAnimation__Q34nw4r3lyt6LayoutFv
	.4byte BindAnimationAuto__Q34nw4r3lyt6LayoutFRCQ34nw4r3lyt12AnimResourcePQ34nw4r3lyt16ResourceAccessor
	.4byte SetAnimationEnable__Q34nw4r3lyt6LayoutFPQ34nw4r3lyt13AnimTransformb
	.4byte CalculateMtx__Q34nw4r3lyt6LayoutFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt6LayoutFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt6LayoutFUl
	.4byte SetTagProcessor__Q34nw4r3lyt6LayoutFPQ34nw4r2ut19TagProcessorBase_w


.global lbl_8056D298
lbl_8056D298:
	# ROM: 0x569398
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt7PictureFv
	.4byte GetRuntimeTypeInfo__Q34nw4r3lyt7PictureCFv
	.4byte CalculateMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte DrawSelf__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt4PaneFUl
	.4byte AnimateSelf__Q34nw4r3lyt4PaneFUl
	.4byte GetVtxColor__Q34nw4r3lyt7PictureCFUl
	.4byte SetVtxColor__Q34nw4r3lyt7PictureFUlQ34nw4r2ut5Color
	.4byte GetColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q34nw4r3lyt7PictureCFUl
	.4byte SetVtxColorElement__Q34nw4r3lyt7PictureFUlUc
	.4byte FindPaneByName__Q34nw4r3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q34nw4r3lyt4PaneFPCcb
	.4byte BindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte UnbindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q34nw4r3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResourcebb
	.4byte GetMaterialNum__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFUl
	.4byte LoadMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Append__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt6TexMap


.global lbl_8056D310
lbl_8056D310:
	# ROM: 0x569410
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt7TextBoxFv
	.4byte GetRuntimeTypeInfo__Q34nw4r3lyt7TextBoxCFv
	.4byte CalculateMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte DrawSelf__Q34nw4r3lyt7TextBoxFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt4PaneFUl
	.4byte AnimateSelf__Q34nw4r3lyt4PaneFUl
	.4byte GetTextColor__Q34nw4r3lyt7TextBoxCFUl
	.4byte SetVtxColor__Q34nw4r3lyt7TextBoxFUlQ34nw4r2ut5Color
	.4byte GetColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q34nw4r3lyt7TextBoxCFUl
	.4byte SetVtxColorElement__Q34nw4r3lyt7TextBoxFUlUc
	.4byte FindPaneByName__Q34nw4r3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q34nw4r3lyt4PaneFPCcb
	.4byte BindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte UnbindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q34nw4r3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResourcebb
	.4byte GetMaterialNum__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFUl
	.4byte LoadMtx__Q34nw4r3lyt7TextBoxFRCQ34nw4r3lyt8DrawInfo
	.4byte AllocStringBuffer__Q34nw4r3lyt7TextBoxFUs
	.4byte FreeStringBuffer__Q34nw4r3lyt7TextBoxFv
	.4byte SetString__Q34nw4r3lyt7TextBoxFPCwUs
	.4byte SetString__Q34nw4r3lyt7TextBoxFPCwUsUs
	.4byte 0


.global lbl_8056D398
lbl_8056D398:
	# ROM: 0x569498
	.4byte 0x00000100
	.4byte 0x00010101
	.4byte 0x00010100
	.4byte 0x00000101
	.4byte 0x00010001
	.4byte 0x00010101
	.4byte 0x00000100
	.4byte 0x00010001
	.4byte 0x00000101
	.4byte 0x01000100
	.4byte 0x01010001
	.4byte 0x01000000
	.4byte 0x00010100
	.4byte 0x01010000
	.4byte 0x00010100


.global lbl_8056D3D4
lbl_8056D3D4:
	# ROM: 0x5694D4
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt6WindowFv
	.4byte GetRuntimeTypeInfo__Q34nw4r3lyt6WindowCFv
	.4byte CalculateMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte DrawSelf__Q34nw4r3lyt6WindowFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt4PaneFUl
	.4byte AnimateSelf__Q34nw4r3lyt6WindowFUl
	.4byte GetVtxColor__Q34nw4r3lyt6WindowCFUl
	.4byte SetVtxColor__Q34nw4r3lyt6WindowFUlQ34nw4r2ut5Color
	.4byte GetColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q34nw4r3lyt6WindowCFUl
	.4byte SetVtxColorElement__Q34nw4r3lyt6WindowFUlUc
	.4byte FindPaneByName__Q34nw4r3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q34nw4r3lyt6WindowFPCcb
	.4byte BindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte UnbindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q34nw4r3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q34nw4r3lyt6WindowFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResourcebb
	.4byte GetMaterialNum__Q34nw4r3lyt6WindowCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt6WindowCFUl
	.4byte LoadMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte GetContentMaterial__Q34nw4r3lyt6WindowCFv
	.4byte GetFrameMaterial__Q34nw4r3lyt6WindowCFUl
	.4byte DrawContent__Q34nw4r3lyt6WindowFRCQ34nw4r4math4VEC2RCQ34nw4r3lyt15WindowFrameSizeUc
	.4byte DrawFrame__Q34nw4r3lyt6WindowFRCQ34nw4r4math4VEC2RCQ44nw4r3lyt6Window5FrameRCQ34nw4r3lyt15WindowFrameSizeUc
	.4byte DrawFrame4__Q34nw4r3lyt6WindowFRCQ34nw4r4math4VEC2PCQ44nw4r3lyt6Window5FrameRCQ34nw4r3lyt15WindowFrameSizeUc
	.4byte DrawFrame8__Q34nw4r3lyt6WindowFRCQ34nw4r4math4VEC2PCQ44nw4r3lyt6Window5FrameRCQ34nw4r3lyt15WindowFrameSizeUc


.global lbl_8056D460
lbl_8056D460:
	# ROM: 0x569560
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt8BoundingFv
	.4byte GetRuntimeTypeInfo__Q34nw4r3lyt8BoundingCFv
	.4byte CalculateMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte DrawSelf__Q34nw4r3lyt8BoundingFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt4PaneFUl
	.4byte AnimateSelf__Q34nw4r3lyt4PaneFUl
	.4byte GetVtxColor__Q34nw4r3lyt4PaneCFUl
	.4byte SetVtxColor__Q34nw4r3lyt4PaneFUlQ34nw4r2ut5Color
	.4byte GetColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetVtxColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte FindPaneByName__Q34nw4r3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q34nw4r3lyt4PaneFPCcb
	.4byte BindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte UnbindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q34nw4r3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResourcebb
	.4byte GetMaterialNum__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFUl
	.4byte LoadMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte 0


.global lbl_8056D4D8
lbl_8056D4D8:
	# ROM: 0x5695D8
	.4byte 0x0000001F
	.4byte 0x0000001B
	.4byte 0x00000017
	.4byte 0x00000013
	.4byte 0x0000001E
	.4byte 0x0000001A
	.4byte 0x00000016
	.4byte 0x00000012


.global lbl_8056D4F8
lbl_8056D4F8:
	# ROM: 0x5695F8
	.4byte 0x0000001F
	.4byte 0x0000001B
	.4byte 0x00000017
	.4byte 0x00000013
	.4byte 0x0000001E
	.4byte 0x0000001A
	.4byte 0x00000016
	.4byte 0x00000012

.global lbl_8056D518
lbl_8056D518:
	# ROM: 0x569618
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt8MaterialFv
	.4byte SetupGX__Q34nw4r3lyt8MaterialFbUc
	.4byte BindAnimation__Q34nw4r3lyt8MaterialFPQ34nw4r3lyt13AnimTransform
	.4byte UnbindAnimation__Q34nw4r3lyt8MaterialFPQ34nw4r3lyt13AnimTransform
	.4byte UnbindAllAnimation__Q34nw4r3lyt8MaterialFv
	.4byte Animate__Q34nw4r3lyt8MaterialFv
	.4byte FindAnimationLink__Q34nw4r3lyt8MaterialFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLink__Q34nw4r3lyt8MaterialFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt8MaterialFPQ34nw4r3lyt13AnimTransformb
	.4byte SetAnimationEnable__Q34nw4r3lyt8MaterialFRCQ34nw4r3lyt12AnimResourceb


.global lbl_8056D548
lbl_8056D548:
	# ROM: 0x569648
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
	.4byte 0


.global lbl_8056D558
lbl_8056D558:
	# ROM: 0x569658
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt18AnimTransformBasicFv
	.4byte SetResource__Q34nw4r3lyt18AnimTransformBasicFPCQ44nw4r3lyt3res14AnimationBlockPQ34nw4r3lyt16ResourceAccessor
	.4byte SetResource__Q34nw4r3lyt18AnimTransformBasicFPCQ44nw4r3lyt3res14AnimationBlockPQ34nw4r3lyt16ResourceAccessorUs
	.4byte Bind__Q34nw4r3lyt18AnimTransformBasicFPQ34nw4r3lyt4Panebb
	.4byte Bind__Q34nw4r3lyt18AnimTransformBasicFPQ34nw4r3lyt8Materialb
	.4byte Animate__Q34nw4r3lyt18AnimTransformBasicFUlPQ34nw4r3lyt4Pane
	.4byte Animate__Q34nw4r3lyt18AnimTransformBasicFUlPQ34nw4r3lyt8Material
	.4byte 0


.global lbl_8056D580
lbl_8056D580:
	# ROM: 0x569680
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3lyt16ResourceAccessorFv
	.4byte 0
	.4byte GetFont__Q34nw4r3lyt16ResourceAccessorFPCc
	.4byte 0


.global lbl_8056D598
lbl_8056D598:
	# ROM: 0x569698
	.4byte 0
	.4byte 0
	.4byte func_8003997C
	.4byte GetResource__Q34nw4r3lyt19ArcResourceAccessorFUlPCcPUl
	.4byte GetFont__Q34nw4r3lyt19ArcResourceAccessorFPCc
	.4byte 0


.global lbl_8056D5B0
lbl_8056D5B0:
	# ROM: 0x5696B0
	.float 0.5
	.4byte 0x3CB5586D
	.4byte 0x3F05AAC3
	.4byte 0x3CBD5FCF
	.4byte 0x3F0B95C2
	.4byte 0x3CC5C232
	.4byte 0x3F11C3D3
	.4byte 0x3CCE839C
	.4byte 0x3F1837F0
	.4byte 0x3CD7A842
	.4byte 0x3F1EF532
	.4byte 0x3CE13489
	.4byte 0x3F25FED7
	.4byte 0x3CEB2D08
	.4byte 0x3F2D583F
	.4byte 0x3CF59689
	.float 0.70710678
	.4byte 0x3D003B07
	.4byte 0x3F3D08A4
	.4byte 0x3D05E867
	.4byte 0x3F45672A
	.4byte 0x3D0BD620
	.4byte 0x3F4E248C
	.4byte 0x3D12070B
	.4byte 0x3F5744FD
	.4byte 0x3D187E22
	.4byte 0x3F60CCDF
	.4byte 0x3D1F3E80
	.4byte 0x3F6AC0C7
	.4byte 0x3D264B63
	.4byte 0x3F75257D
	.4byte 0x3D2DA82F
	.float 1.0
	.4byte 0x3D35586D
	.4byte 0x3F85AAC3
	.4byte 0x3D3D5FCF
	.4byte 0x3F8B95C2
	.4byte 0x3D45C232
	.4byte 0x3F91C3D3
	.4byte 0x3D4E839C
	.4byte 0x3F9837F0
	.4byte 0x3D57A842
	.4byte 0x3F9EF532
	.4byte 0x3D613489
	.4byte 0x3FA5FED7
	.4byte 0x3D6B2D08
	.4byte 0x3FAD583F
	.4byte 0x3D759689
	.float 1.4142135
	.4byte 0x3D803B07
	.4byte 0x3FBD08A4
	.4byte 0x3D85E867
	.4byte 0x3FC5672A
	.4byte 0x3D8BD620
	.4byte 0x3FCE248C
	.4byte 0x3D92070B
	.4byte 0x3FD744FD
	.4byte 0x3D987E22
	.4byte 0x3FE0CCDF
	.4byte 0x3D9F3E80
	.4byte 0x3FEAC0C7
	.4byte 0x3DA64B63
	.4byte 0x3FF5257D
	.4byte 0x3DADA82F
	.4byte 0x40000000
	.4byte 0x3DB5586D


.global lbl_8056D6B8
lbl_8056D6B8:
	# ROM: 0x5697B8
	.4byte 0
	.4byte 0x3B7F8053
	.4byte 0x3B7F8053
	.4byte 0x3B7E8251
	.4byte 0x3BFF0152
	.4byte 0x3B7D8646
	.4byte 0x3C3EE23B
	.4byte 0x3B7C8C29
	.4byte 0x3C7E0546
	.4byte 0x3B7B93F9
	.4byte 0x3C9E7522
	.4byte 0x3B7A9DAF
	.4byte 0x3CBDC8D8
	.4byte 0x3B79A946
	.4byte 0x3CDCFE01
	.4byte 0x3B78B6BA
	.4byte 0x3CFC14D9
	.4byte 0x3B77C602
	.4byte 0x3D0D86CC
	.4byte 0x3B76D719
	.4byte 0x3D1CF43E
	.4byte 0x3B75E9FD
	.4byte 0x3D2C52DE
	.4byte 0x3B74FEA3
	.4byte 0x3D3BA2C8
	.4byte 0x3B74150C
	.4byte 0x3D4AE418
	.4byte 0x3B732D2F
	.4byte 0x3D5A16EC
	.4byte 0x3B72470D
	.4byte 0x3D693B5C
	.4byte 0x3B716299
	.4byte 0x3D785186
	.4byte 0x3B707FD6
	.4byte 0x3D83ACC2
	.4byte 0x3B6F9EB8
	.4byte 0x3D8B29B7
	.4byte 0x3B6EBF3F
	.4byte 0x3D929FB1
	.4byte 0x3B6DE167
	.4byte 0x3D9A0EBD
	.4byte 0x3B6D0527
	.4byte 0x3DA176E6
	.4byte 0x3B6C2A83
	.4byte 0x3DA8D83A
	.4byte 0x3B6B516A
	.4byte 0x3DB032C5
	.4byte 0x3B6A79E0
	.4byte 0x3DB78694
	.4byte 0x3B69A3E2
	.4byte 0x3DBED3B3
	.4byte 0x3B68CF6A
	.4byte 0x3DC61A2F
	.4byte 0x3B67FC71
	.4byte 0x3DCD5A12
	.4byte 0x3B672AF6
	.4byte 0x3DD4936A
	.4byte 0x3B665AF1
	.4byte 0x3DDBC641
	.4byte 0x3B658C66
	.4byte 0x3DE2F2A4
	.4byte 0x3B64BF47
	.4byte 0x3DEA189F
	.4byte 0x3B63F396
	.4byte 0x3DF1383B
	.4byte 0x3B632952
	.4byte 0x3DF85186
	.4byte 0x3B626072
	.4byte 0x3DFF648A
	.4byte 0x3B6198F3
	.4byte 0x3E0338A9
	.4byte 0x3B60D2D4
	.4byte 0x3E06BBF4
	.4byte 0x3B600E10
	.4byte 0x3E0A3C2C
	.4byte 0x3B5F4AA0
	.4byte 0x3E0DB957
	.4byte 0x3B5E8888
	.4byte 0x3E113379
	.4byte 0x3B5DC7BE
	.4byte 0x3E14AA98
	.4byte 0x3B5D083F
	.4byte 0x3E181EB9
	.4byte 0x3B5C4A10
	.4byte 0x3E1B8FE1
	.4byte 0x3B5B8D22
	.4byte 0x3E1EFE16
	.4byte 0x3B5AD177
	.4byte 0x3E22695B
	.4byte 0x3B5A170D
	.4byte 0x3E25D1B8
	.4byte 0x3B595DE2
	.4byte 0x3E29372F
	.4byte 0x3B58A5EB
	.4byte 0x3E2C99C7
	.4byte 0x3B57EF2F
	.4byte 0x3E2FF984
	.4byte 0x3B5739A3
	.4byte 0x3E33566A
	.4byte 0x3B568548
	.4byte 0x3E36B07F
	.4byte 0x3B55D21E
	.4byte 0x3E3A07C8
	.4byte 0x3B552018
	.4byte 0x3E3D5C48
	.4byte 0x3B546F3F
	.4byte 0x3E40AE05
	.4byte 0x3B53BF8A
	.4byte 0x3E43FD03
	.4byte 0x3B5310F4
	.4byte 0x3E474947
	.4byte 0x3B52637E
	.4byte 0x3E4A92D5
	.4byte 0x3B51B724
	.4byte 0x3E4DD9B1
	.4byte 0x3B510BE1
	.4byte 0x3E511DE1
	.4byte 0x3B5061BA
	.4byte 0x3E545F68
	.4byte 0x3B4FB8A5
	.4byte 0x3E579E4A
	.4byte 0x3B4F109F
	.4byte 0x3E5ADA8D
	.4byte 0x3B4E69AC
	.4byte 0x3E5E1434
	.4byte 0x3B4DC3C3
	.4byte 0x3E614B43
	.4byte 0x3B4D1EE4
	.4byte 0x3E647FBE
	.4byte 0x3B4C7B0B
	.4byte 0x3E67B1AA
	.4byte 0x3B4BD839
	.4byte 0x3E6AE10B
	.4byte 0x3B4B366C
	.4byte 0x3E6E0DE5
	.4byte 0x3B4A959D
	.4byte 0x3E71383B
	.4byte 0x3B49F5CB
	.4byte 0x3E746013
	.4byte 0x3B4956F2
	.4byte 0x3E77856E
	.4byte 0x3B48B917
	.4byte 0x3E7AA853
	.4byte 0x3B481C2C
	.4byte 0x3E7DC8C3
	.4byte 0x3B47803A
	.4byte 0x3E807362
	.4byte 0x3B46E53D
	.4byte 0x3E82012D
	.4byte 0x3B464B2D
	.4byte 0x3E838DC3
	.4byte 0x3B45B20D
	.4byte 0x3E851927
	.4byte 0x3B4519D4
	.4byte 0x3E86A35B
	.4byte 0x3B448288
	.4byte 0x3E882C60
	.4byte 0x3B43EC24
	.4byte 0x3E89B438
	.4byte 0x3B4356A4
	.4byte 0x3E8B3AE5
	.4byte 0x3B42C207
	.4byte 0x3E8CC069
	.4byte 0x3B422E4E
	.4byte 0x3E8E44C6
	.4byte 0x3B419B74
	.4byte 0x3E8FC7FD
	.4byte 0x3B410975
	.4byte 0x3E914A10
	.4byte 0x3B407856
	.4byte 0x3E92CB01
	.4byte 0x3B3FE80D
	.4byte 0x3E944AD1
	.4byte 0x3B3F589B
	.4byte 0x3E95C982
	.4byte 0x3B3ECA00
	.4byte 0x3E974716
	.4byte 0x3B3E3C3B
	.4byte 0x3E98C38E
	.4byte 0x3B3DAF45
	.4byte 0x3E9A3EED
	.4byte 0x3B3D2321
	.4byte 0x3E9BB933
	.4byte 0x3B3C97CB
	.4byte 0x3E9D3263
	.4byte 0x3B3C0D40
	.4byte 0x3E9EAA7D
	.4byte 0x3B3B8382
	.4byte 0x3EA02184
	.4byte 0x3B3AFA8E
	.4byte 0x3EA19779
	.4byte 0x3B3A7260
	.4byte 0x3EA30C5E
	.4byte 0x3B39EAF7
	.4byte 0x3EA48034
	.4byte 0x3B396454
	.4byte 0x3EA5F2FD
	.4byte 0x3B38DE72
	.4byte 0x3EA764BA
	.4byte 0x3B385952
	.4byte 0x3EA8D56C
	.4byte 0x3B37D4F2
	.4byte 0x3EAA4516
	.4byte 0x3B375150
	.4byte 0x3EABB3B9
	.4byte 0x3B36CE66
	.4byte 0x3EAD2156
	.4byte 0x3B364C3A
	.4byte 0x3EAE8DEE
	.4byte 0x3B35CAC6
	.4byte 0x3EAFF984
	.4byte 0x3B354A06
	.4byte 0x3EB16418
	.4byte 0x3B34C9FF
	.4byte 0x3EB2CDAC
	.4byte 0x3B344AAD
	.4byte 0x3EB43641
	.4byte 0x3B33CC0F
	.4byte 0x3EB59DD9
	.4byte 0x3B334E21
	.4byte 0x3EB70475
	.4byte 0x3B32D0E3
	.4byte 0x3EB86A17
	.4byte 0x3B325451
	.4byte 0x3EB9CEC0
	.4byte 0x3B31D86F
	.4byte 0x3EBB3271
	.4byte 0x3B315D38
	.4byte 0x3EBC952B
	.4byte 0x3B30E2AA
	.4byte 0x3EBDF6F0
	.4byte 0x3B3068C7
	.4byte 0x3EBF57C2
	.4byte 0x3B2FEF87
	.4byte 0x3EC0B7A1
	.4byte 0x3B2F76F3
	.4byte 0x3EC2168F
	.4byte 0x3B2EFF02
	.4byte 0x3EC3748D
	.4byte 0x3B2E87B0
	.4byte 0x3EC4D19C
	.4byte 0x3B2E1106
	.4byte 0x3EC62DBE
	.4byte 0x3B2D9AFB
	.4byte 0x3EC788F4
	.4byte 0x3B2D258E
	.4byte 0x3EC8E33F
	.4byte 0x3B2CB0C5
	.4byte 0x3ECA3CA1
	.4byte 0x3B2C3C92
	.4byte 0x3ECB951A
	.4byte 0x3B2BC8FE
	.4byte 0x3ECCECAC
	.4byte 0x3B2B5609
	.4byte 0x3ECE4358
	.4byte 0x3B2AE3A6
	.4byte 0x3ECF991F
	.4byte 0x3B2A71E2
	.4byte 0x3ED0EE03
	.4byte 0x3B2A00AF
	.4byte 0x3ED24205
	.4byte 0x3B299018
	.4byte 0x3ED39525
	.4byte 0x3B292012
	.4byte 0x3ED4E765
	.4byte 0x3B28B09F
	.4byte 0x3ED638C6
	.4byte 0x3B2841C2
	.4byte 0x3ED7894A
	.4byte 0x3B27D372
	.4byte 0x3ED8D8F0
	.4byte 0x3B2765B5
	.4byte 0x3EDA27BC
	.4byte 0x3B26F885
	.4byte 0x3EDB75AD
	.4byte 0x3B268BE4
	.4byte 0x3EDCC2C5
	.4byte 0x3B261FD4
	.4byte 0x3EDE0F04
	.4byte 0x3B25B449
	.4byte 0x3EDF5A6D
	.4byte 0x3B25494C
	.4byte 0x3EE0A500
	.4byte 0x3B24DEDD
	.4byte 0x3EE1EEBD
	.4byte 0x3B2474F2
	.4byte 0x3EE337A7
	.4byte 0x3B240B8D
	.4byte 0x3EE47FBE
	.4byte 0x3B23A2B2
	.4byte 0x3EE5C704
	.4byte 0x3B233A5C
	.4byte 0x3EE70D78
	.4byte 0x3B22D28A
	.4byte 0x3EE8531D
	.4byte 0x3B226B3E
	.4byte 0x3EE997F4
	.4byte 0x3B220473
	.4byte 0x3EEADBFD
	.4byte 0x3B219E28
	.4byte 0x3EEC1F39
	.4byte 0x3B213863
	.4byte 0x3EED61AA
	.4byte 0x3B20D31A
	.4byte 0x3EEEA350
	.4byte 0x3B206E53
	.4byte 0x3EEFE42D
	.4byte 0x3B200A07
	.4byte 0x3EF12441
	.4byte 0x3B1FA639
	.4byte 0x3EF2638D
	.4byte 0x3B1F42E6
	.4byte 0x3EF3A213
	.4byte 0x3B1EE011
	.4byte 0x3EF4DFD3
	.4byte 0x3B1E7DB3
	.4byte 0x3EF61CCF
	.4byte 0x3B1E1BCE
	.4byte 0x3EF75906
	.4byte 0x3B1DBA66
	.4byte 0x3EF8947B
	.4byte 0x3B1D5975
	.4byte 0x3EF9CF2E
	.4byte 0x3B1CF8F9
	.4byte 0x3EFB0920
	.4byte 0x3B1C98F1
	.4byte 0x3EFC4252
	.4byte 0x3B1C3960
	.4byte 0x3EFD7AC4
	.4byte 0x3B1BDA44
	.4byte 0x3EFEB279
	.4byte 0x3B1B7B9C
	.4byte 0x3EFFE970
	.4byte 0x3B1B1D68
	.4byte 0x3F008FD6
	.4byte 0x3B1ABFA3
	.4byte 0x3F012A95
	.4byte 0x3B1A6253
	.4byte 0x3F01C4F7
	.4byte 0x3B1A056D
	.4byte 0x3F025EFD
	.4byte 0x3B19A8FC
	.4byte 0x3F02F8A6
	.4byte 0x3B194CF6
	.4byte 0x3F0391F3
	.4byte 0x3B18F160
	.4byte 0x3F042AE4
	.4byte 0x3B189639
	.4byte 0x3F04C37A
	.4byte 0x3B183B7A
	.4byte 0x3F055BB6
	.4byte 0x3B17E12A
	.4byte 0x3F05F397
	.4byte 0x3B178746
	.4byte 0x3F068B1E
	.4byte 0x3B172DC8
	.4byte 0x3F07224C
	.4byte 0x3B16D4B6
	.4byte 0x3F07B921
	.4byte 0x3B167C0B
	.4byte 0x3F084F9D
	.4byte 0x3B1623CC
	.4byte 0x3F08E5C1
	.4byte 0x3B15CBEF
	.4byte 0x3F097B8D
	.4byte 0x3B15747E
	.4byte 0x3F0A1101
	.4byte 0x3B151D6F
	.4byte 0x3F0AA61F
	.4byte 0x3B14C6C8
	.4byte 0x3F0B3AE5
	.4byte 0x3B147083
	.4byte 0x3F0BCF56
	.4byte 0x3B141AA1
	.4byte 0x3F0C6371
	.4byte 0x3B13C522
	.4byte 0x3F0CF736
	.4byte 0x3B13700A
	.4byte 0x3F0D8AA6
	.4byte 0x3B131B50
	.4byte 0x3F0E1DC1
	.4byte 0x3B12C6F9
	.4byte 0x3F0EB088
	.4byte 0x3B127301
	.4byte 0x3F0F42FB
	.4byte 0x3B121F67
	.4byte 0x3F0FD51A
	.4byte 0x3B11CC30
	.4byte 0x3F1066E7
	.4byte 0x3B117958
	.4byte 0x3F10F860
	.4byte 0x3B1126D9
	.4byte 0x3F118987
	.4byte 0x3B10D4BE
	.4byte 0x3F121A5B
	.4byte 0x3B1082FC
	.4byte 0x3F12AADE
	.4byte 0x3B103195
	.4byte 0x3F133B10
	.4byte 0x3B0FE08D
	.4byte 0x3F13CAF1
	.4byte 0x3B0F8FDA
	.4byte 0x3F145A80
	.4byte 0x3B0F3F85
	.4byte 0x3F14E9C0
	.4byte 0x3B0EEF8B
	.4byte 0x3F1578B0
	.4byte 0x3B0E9FE7
	.4byte 0x3F16074F
	.4byte 0x3B0E50A1
	.4byte 0x3F1695A0
	.4byte 0x3B0E01AD
	.4byte 0x3F1723A2
	.4byte 0x3B0DB313
	.4byte 0x3F17B155
	.4byte 0x3B0D64CF
	.4byte 0x3F183EBA
	.4byte 0x3B0D16E1
	.4byte 0x3F18CBD0
	.4byte 0x3B0CC94D
	.4byte 0x3F19589A
	.4byte 0x3B0C7C0B
	.4byte 0x3F19E516
	.4byte 0x3B0C2F1A
	.4byte 0x3F1A7145
	.4byte 0x3B0BE284
	.4byte 0x3F1AFD27
	.4byte 0x3B0B963B
	.4byte 0x3F1B88BE
	.4byte 0x3B0B4A47
	.4byte 0x3F1C1408
	.4byte 0x3B0AFEAA
	.4byte 0x3F1C9F07
	.4byte 0x3B0AB35A
	.4byte 0x3F1D29BA
	.4byte 0x3B0A685B
	.4byte 0x3F1DB422
	.4byte 0x3B0A1DAE
	.4byte 0x3F1E3E40
	.4byte 0x3B09D353
	.4byte 0x3F1EC813
	.4byte 0x3B098949
	.4byte 0x3F1F519D
	.4byte 0x3B093F8D
	.4byte 0x3F1FDADC
	.4byte 0x3B08F61E
	.4byte 0x3F2063D2
	.4byte 0x3B08ACFC
	.4byte 0x3F20EC7F
	.4byte 0x3B08642C
	.4byte 0x3F2174E3
	.4byte 0x3B081BA9
	.4byte 0x3F21FCFF
	.4byte 0x3B07D374
	.4byte 0x3F2284D3
	.4byte 0x3B078B87
	.4byte 0x3F230C5E
	.4byte 0x3B0743E8
	.4byte 0x3F2393A2
	.4byte 0x3B06FC96
	.4byte 0x3F241A9F
	.4byte 0x3B06B58D
	.4byte 0x3F24A154
	.4byte 0x3B066ED1
	.4byte 0x3F2527C3
	.4byte 0x3B06285F
	.4byte 0x3F25ADEB
	.4byte 0x3B05E235
	.4byte 0x3F2633CE
	.4byte 0x3B059C55
	.4byte 0x3F26B96A
	.4byte 0x3B0556BD
	.4byte 0x3F273EC1
	.4byte 0x3B05116F
	.4byte 0x3F27C3D2
	.4byte 0x3B04CC65
	.4byte 0x3F28489E
	.4byte 0x3B0487A4
	.4byte 0x3F28CD26
	.4byte 0x3B04432C
	.4byte 0x3F295169
	.4byte 0x3B03FEF9
	.4byte 0x3F29D568
	.4byte 0x3B03BB0F
	.4byte 0x3F2A5923
	.4byte 0x3B03776A
	.4byte 0x3F2ADC9B
	.4byte 0x3B033409
	.4byte 0x3F2B5FCF
	.4byte 0x3B02F0EE
	.4byte 0x3F2BE2C0
	.4byte 0x3B02AE16
	.4byte 0x3F2C656E
	.4byte 0x3B026B80
	.4byte 0x3F2CE7D9
	.4byte 0x3B022932
	.4byte 0x3F2D6A02
	.4byte 0x3B01E725
	.4byte 0x3F2DEBEA
	.4byte 0x3B01A55C
	.4byte 0x3F2E6D8F
	.4byte 0x3B0163D4
	.4byte 0x3F2EEEF3
	.4byte 0x3B012291
	.4byte 0x3F2F7015
	.4byte 0x3B00E18E
	.4byte 0x3F2FF0F7
	.4byte 0x3B00A0CB
	.4byte 0x3F307198
	.4byte 0x3B006049
	.4byte 0x3F30F1F8
	.4byte 0x3B00200B
	.4byte 0x3F317218
	.4byte 0x3AFFC014


.global lbl_8056DEC0
lbl_8056DEC0:
	# ROM: 0x569FC0
	.4byte 0
	.4byte 0x3FA2EBF1
	.4byte 0x3FA2EBF1
	.4byte 0x3FA29AB1
	.4byte 0x4022C351
	.4byte 0x3FA1F923
	.4byte 0x4073BFE2
	.4byte 0x3FA10925
	.4byte 0x40A2223B
	.4byte 0x3F9FCD71
	.4byte 0x40CA1597
	.4byte 0x3F9E498C
	.4byte 0x40F1A7FA
	.4byte 0x3F9C81AB
	.4byte 0x410C6432
	.4byte 0x3F9A7A9B
	.4byte 0x411FB386
	.4byte 0x3F98399D
	.4byte 0x4132BAB9
	.4byte 0x3F95C44B
	.4byte 0x41457343
	.4byte 0x3F932075
	.4byte 0x4157D751
	.4byte 0x3F905408
	.4byte 0x4169E1D2
	.4byte 0x3F8D64EB
	.4byte 0x417B8E70
	.4byte 0x3F8A58EC
	.4byte 0x41866CC7
	.4byte 0x3F8735A9
	.4byte 0x418EE021
	.4byte 0x3F84007D
	.4byte 0x41972029
	.4byte 0x3F80BE73
	.4byte 0x419F2C10
	.4byte 0x3F7AE877
	.4byte 0x41A70354
	.4byte 0x3F744C4A
	.4byte 0x41AEA5B6
	.4byte 0x3F6DB032
	.4byte 0x41B61338
	.4byte 0x3F671B36
	.4byte 0x41BD4C11
	.4byte 0x3F60938F
	.4byte 0x41C450AE
	.4byte 0x3F5A1EB2
	.4byte 0x41CB21A3
	.4byte 0x3F53C157
	.4byte 0x41D1BFAE
	.4byte 0x3F4D7F84
	.4byte 0x41D82BAA
	.4byte 0x3F475C97
	.4byte 0x41DE668F
	.4byte 0x3F415B59
	.4byte 0x41E4716A
	.4byte 0x3F3B7E02
	.4byte 0x41EA4D5A
	.4byte 0x3F35C652
	.4byte 0x41EFFB8C
	.4byte 0x3F303593
	.4byte 0x41F57D39
	.4byte 0x3F2ACCAE
	.4byte 0x41FAD39E
	.4byte 0x3F258C33
	.4byte 0x42000000
	.4byte 0x3F207467


.global lbl_8056DFC8
lbl_8056DFC8:
	# ROM: 0x56A0C8
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail11BasicPlayerFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056DFF0
lbl_8056DFF0:
	# ROM: 0x56A0F0
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail10BasicSoundCFv
	.4byte __dt__Q44nw4r3snd6detail10BasicSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail10BasicSoundFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte InitParam__Q44nw4r3snd6detail10BasicSoundFv
	.4byte 0
	.4byte 0
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail10BasicSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail10BasicSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail10BasicSoundFv


.global lbl_8056E028
lbl_8056E028:
	# ROM: 0x56A128
	.4byte 0
	.4byte 0
	.4byte func_8040DE80
	.4byte GetCoef__Q44nw4r3snd6detail19BiquadFilterBpf2048CFifPQ44nw4r3snd20BiquadFilterCallback10BiquadCoef


.global lbl_8056E038
lbl_8056E038:
	# ROM: 0x56A138
	.4byte 0
	.4byte 0
	.4byte func_8040DE40
	.4byte GetCoef__Q44nw4r3snd6detail19BiquadFilterBpf1024CFifPQ44nw4r3snd20BiquadFilterCallback10BiquadCoef


.global lbl_8056E048
lbl_8056E048:
	# ROM: 0x56A148
	.4byte 0
	.4byte 0
	.4byte func_8040DE00
	.4byte GetCoef__Q44nw4r3snd6detail18BiquadFilterBpf512CFifPQ44nw4r3snd20BiquadFilterCallback10BiquadCoef


.global lbl_8056E058
lbl_8056E058:
	# ROM: 0x56A158
	.4byte 0
	.4byte 0
	.4byte func_8040DDC0
	.4byte GetCoef__Q44nw4r3snd6detail15BiquadFilterHpfCFifPQ44nw4r3snd20BiquadFilterCallback10BiquadCoef


.global lbl_8056E068
lbl_8056E068:
	# ROM: 0x56A168
	.4byte 0
	.4byte 0
	.4byte func_8040DD80
	.4byte GetCoef__Q44nw4r3snd6detail15BiquadFilterLpfCFifPQ44nw4r3snd20BiquadFilterCallback10BiquadCoef


.global lbl_8056E078
lbl_8056E078:
	# ROM: 0x56A178
	.4byte 0
	.4byte 0
	.4byte func_801C2E34
	.4byte StartUp__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte Shutdown__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd12FxChorusDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte OnChangeOutputMode__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte AssignWorkBuffer__Q34nw4r3snd12FxChorusDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd12FxChorusDpl2Fv
	.4byte 0


.global lbl_8056E0A0
lbl_8056E0A0:
	# ROM: 0x56A1A0
	.4byte 0
	.4byte 0
	.4byte func_801C2EB0
	.4byte StartUp__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte Shutdown__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd11FxDelayDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte OnChangeOutputMode__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte AssignWorkBuffer__Q34nw4r3snd11FxDelayDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd11FxDelayDpl2Fv
	.4byte 0


.global lbl_8056E0C8
lbl_8056E0C8:
	# ROM: 0x56A1C8
	.4byte 0
	.4byte 0
	.4byte func_801C2D78
	.4byte StartUp__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte Shutdown__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte UpdateBuffer__Q34nw4r3snd15FxReverbStdDpl2FiPPvUlQ34nw4r3snd12SampleFormatfQ34nw4r3snd10OutputMode
	.4byte OnChangeOutputMode__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte AssignWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2FPvUl
	.4byte ReleaseWorkBuffer__Q34nw4r3snd15FxReverbStdDpl2Fv
	.4byte 0


.global lbl_8056E0F0
lbl_8056E0F0:
	# ROM: 0x56A1F0
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q34nw4r2ut10FileStreamCFv
	.4byte __dt__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.4byte Close__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFv
	.4byte Read__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFPvUl
	.4byte func_8042BDD0
	.4byte func_8042BDD8
	.4byte func_8042BDE0
	.4byte func_8042BDE8
	.4byte CanAsync__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanRead__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanWrite__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetSizeAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetBufferAlign__Q34nw4r2ut8IOStreamCFv
	.4byte GetSize__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte Seek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamFlUl
	.4byte func_8042BDFC
	.4byte func_8042BE00
	.4byte CanSeek__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte CanCancel__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte Tell__Q44nw4r3snd18MemorySoundArchive16MemoryFileStreamCFv
	.4byte 0


.global lbl_8056E150
lbl_8056E150:
	# ROM: 0x56A250
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3snd18MemorySoundArchiveFv
	.4byte detail_GetFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.4byte detail_GetWaveDataFileAddress__Q34nw4r3snd18MemorySoundArchiveCFUl
	.4byte detail_GetRequiredStreamBufferSize__Q34nw4r3snd18MemorySoundArchiveCFv
	.4byte OpenStream__Q34nw4r3snd18MemorySoundArchiveCFPviUlUl
	.4byte OpenExtStream__Q34nw4r3snd18MemorySoundArchiveCFPviPCcUlUl


.global lbl_8056E170
lbl_8056E170:
	.asciz "#%08x[%d]: printvar %sVAR_%d(%d) = %d\n"
	.balign 4


.global lbl_8056E198
lbl_8056E198:
	# ROM: 0x56A298
	.4byte lbl_80417D48
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_80418168
	.4byte lbl_804181A8
	.4byte lbl_804181B8
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_80417D40
	.4byte lbl_80417F7C
	.4byte lbl_80417FF0
	.4byte lbl_80417DC4
	.4byte lbl_80418070
	.4byte lbl_80418078
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_80417DEC
	.4byte lbl_80417D70
	.4byte lbl_80417DCC
	.4byte lbl_80417DD4
	.4byte lbl_80417DDC
	.4byte lbl_80417DE4
	.4byte lbl_80417EAC
	.4byte lbl_80417EB4
	.4byte lbl_80417FC8
	.4byte lbl_8041801C
	.4byte lbl_80417ED0
	.4byte lbl_80417EF4
	.4byte lbl_80417F18
	.4byte lbl_80417F20
	.4byte lbl_80418034
	.4byte lbl_80417EC8
	.4byte lbl_80417F5C
	.4byte lbl_80417F64
	.4byte lbl_80417F6C
	.4byte lbl_80417F74
	.4byte lbl_80418248
	.4byte lbl_80417DBC
	.4byte lbl_804180BC
	.4byte lbl_80417E54
	.4byte lbl_80418048
	.4byte lbl_8041809C
	.4byte lbl_804180A4
	.4byte lbl_804180B4
	.4byte lbl_80417E48
	.4byte lbl_80417D60
	.4byte lbl_804180AC
	.4byte lbl_80417FA4
	.4byte lbl_80417F28
	.4byte lbl_80417D20
	.4byte lbl_804185BC
	.4byte lbl_80417F38
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_804185BC
	.4byte lbl_80417F88
	.4byte lbl_80418280
	.4byte lbl_804181F8
	.4byte 0


.global lbl_8056E390
lbl_8056E390:
	# ROM: 0x56A490
	.4byte 0
	.4byte 0
	.4byte CommandProc__Q44nw4r3snd6detail9MmlParserCFPQ44nw4r3snd6detail11MmlSeqTrackUlll
	.4byte NoteOnCommandProc__Q44nw4r3snd6detail9MmlParserCFPQ44nw4r3snd6detail11MmlSeqTrackiilb


.global lbl_8056E3A0
lbl_8056E3A0:
	# ROM: 0x56A4A0
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail11MmlSeqTrackFv
	.4byte Parse__Q44nw4r3snd6detail11MmlSeqTrackFb


.global lbl_8056E3B0
lbl_8056E3B0:
	# ROM: 0x56A4B0
	.4byte 0
	.4byte 0
	.4byte func_80418928
	.4byte AllocTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail9SeqPlayer
	.4byte FreeTrack__Q44nw4r3snd6detail20MmlSeqTrackAllocatorFPQ44nw4r3snd6detail8SeqTrack
	.4byte GetAllocatableTrackCount__Q44nw4r3snd6detail20MmlSeqTrackAllocatorCFv


.global lbl_8056E3C8
lbl_8056E3C8:
	# ROM: 0x56A4C8
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail10PlayerHeapFv
	.4byte Alloc__Q44nw4r3snd6detail10PlayerHeapFUl


.global lbl_8056E3D8
lbl_8056E3D8:
	# ROM: 0x56A4D8
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte Start__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte Stop__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte Pause__Q44nw4r3snd6detail9SeqPlayerFb
	.4byte IsActive__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte IsStarted__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte IsPause__Q44nw4r3snd6detail9SeqPlayerCFv
	.4byte 0
	.4byte 0
	.4byte _180___dt__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte _208_InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
	.4byte _208_InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
	.4byte 0
	.4byte 0
	.4byte _192___dt__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte _220_OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv
	.4byte _220_OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte InvalidateData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
	.4byte InvalidateWaveData__Q44nw4r3snd6detail9SeqPlayerFPCvPCv
	.4byte func_8041ABA8
	.4byte OnUpdateFrameSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte OnShutdownSoundThread__Q44nw4r3snd6detail9SeqPlayerFv
	.4byte 0


.global lbl_8056E440
lbl_8056E440:
	# ROM: 0x56A540
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte __dt__Q44nw4r3snd6detail8SeqSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail8SeqSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail8SeqSoundFv
	.4byte InitParam__Q44nw4r3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail8SeqSoundCFv
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail8SeqSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail10BasicSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail10BasicSoundFv


.global lbl_8056E478
lbl_8056E478:
	# ROM: 0x56A578
	.4byte 0
	.4byte 0
	.4byte __dt__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
	.4byte Execute__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
	.4byte Cancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv
	.4byte OnCancel__Q54nw4r3snd6detail8SeqSound11SeqLoadTaskFv


.global lbl_8056E490
lbl_8056E490:
	# ROM: 0x56A590
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail8SeqTrackFv
	.4byte 0


.global lbl_8056E4A0
lbl_8056E4A0:
	# ROM: 0x56A5A0
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3snd12SoundArchiveFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056E4C0
lbl_8056E4C0:
	# ROM: 0x56A5C0
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r3snd18SoundArchivePlayerFv
	.4byte InvalidateData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv
	.4byte InvalidateWaveData__Q34nw4r3snd18SoundArchivePlayerFPCvPCv
	.4byte 0
	.4byte 0
	.4byte _12___dt__Q34nw4r3snd18SoundArchivePlayerFv
	.4byte _12_detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlbPCQ44nw4r3snd14SoundStartable9StartInfo
	.4byte _12_detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc
	.4byte detail_ConvertLabelStringToSoundId__Q34nw4r3snd18SoundArchivePlayerFPCc
	.4byte detail_SetupSound__Q34nw4r3snd18SoundArchivePlayerFPQ34nw4r3snd11SoundHandleUlbPCQ44nw4r3snd14SoundStartable9StartInfo


.global lbl_8056E4F0
lbl_8056E4F0:
	# ROM: 0x56A5F0
	.4byte 0
	.4byte 0
	.4byte func_8041DCFC
	.4byte GetWaveSoundData__Q44nw4r3snd18SoundArchivePlayer11WsdCallbackCFPQ44nw4r3snd6detail13WaveSoundInfoPQ44nw4r3snd6detail17WaveSoundNoteInfoPQ44nw4r3snd6detail8WaveInfoPCviiUl


.global lbl_8056E500
lbl_8056E500:
	# ROM: 0x56A600
	.4byte 0
	.4byte 0
	.4byte func_8041DCBC
	.4byte NoteOn__Q44nw4r3snd18SoundArchivePlayer17SeqNoteOnCallbackFPQ44nw4r3snd6detail9SeqPlayeriRCQ44nw4r3snd6detail10NoteOnInfo


.global lbl_8056E510
lbl_8056E510:
	.asciz "<< NW4R    - SND \tfinal   build: Nov 20 2008 03:40:00 (0x4199_60831) >>"


.global lbl_8056E558
lbl_8056E558:
	# ROM: 0x56A658
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte Start__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte Stop__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte Pause__Q44nw4r3snd6detail10StrmPlayerFb
	.4byte IsActive__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte IsStarted__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte IsPause__Q44nw4r3snd6detail10StrmPlayerCFv
	.4byte 0
	.4byte 0
	.4byte _208___dt__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte _208_OnUpdateFrameSoundThread__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte _208_OnUpdateVoiceSoundThread__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte _208_OnShutdownSoundThread__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte OnUpdateFrameSoundThread__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte OnUpdateVoiceSoundThread__Q44nw4r3snd6detail10StrmPlayerFv
	.4byte OnShutdownSoundThread__Q44nw4r3snd6detail10StrmPlayerFv


.global lbl_8056E5A0
lbl_8056E5A0:
	# ROM: 0x56A6A0
	.4byte 0
	.4byte 0
	.4byte __dt__Q54nw4r3snd6detail10StrmPlayer16StrmDataLoadTaskFv
	.4byte Execute__Q54nw4r3snd6detail10StrmPlayer16StrmDataLoadTaskFv
	.4byte Cancel__Q54nw4r3snd6detail10StrmPlayer16StrmDataLoadTaskFv
	.4byte OnCancel__Q54nw4r3snd6detail10StrmPlayer16StrmDataLoadTaskFv


.global lbl_8056E5B8
lbl_8056E5B8:
	# ROM: 0x56A6B8
	.4byte 0
	.4byte 0
	.4byte __dt__Q54nw4r3snd6detail10StrmPlayer18StrmHeaderLoadTaskFv
	.4byte Execute__Q54nw4r3snd6detail10StrmPlayer18StrmHeaderLoadTaskFv
	.4byte Cancel__Q54nw4r3snd6detail10StrmPlayer18StrmHeaderLoadTaskFv
	.4byte OnCancel__Q54nw4r3snd6detail10StrmPlayer18StrmHeaderLoadTaskFv


.global lbl_8056E5D0
lbl_8056E5D0:
	# ROM: 0x56A6D0
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte __dt__Q44nw4r3snd6detail9StrmSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail9StrmSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail9StrmSoundFv
	.4byte InitParam__Q44nw4r3snd6detail9StrmSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9StrmSoundCFv
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail9StrmSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail9StrmSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail9StrmSoundFv


.global lbl_8056E608
lbl_8056E608:
	# ROM: 0x56A708
	.4byte lbl_80428170
	.4byte lbl_80428178
	.4byte lbl_80428188
	.4byte lbl_8042819C
	.4byte lbl_804281A8
	.4byte lbl_804281B8
	.4byte lbl_804281CC
	.4byte lbl_804281D8
	.4byte lbl_804281EC


.global lbl_8056E62C
lbl_8056E62C:
	# ROM: 0x56A72C
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail5VoiceFv
	.4byte InvalidateData__Q44nw4r3snd6detail5VoiceFPCvPCv
	.4byte InvalidateWaveData__Q44nw4r3snd6detail5VoiceFPCvPCv


.global lbl_8056E640
lbl_8056E640:
	# ROM: 0x56A740
	.4byte lbl_80524BEC
	.4byte lbl_80524FF0
	.4byte lbl_805253F4
	.4byte 0


.global lbl_8056E650
lbl_8056E650:
	# ROM: 0x56A750
	.4byte 0
	.4byte 0
	.4byte GetRuntimeTypeInfo__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte __dt__Q44nw4r3snd6detail9WaveSoundFv
	.4byte Shutdown__Q44nw4r3snd6detail9WaveSoundFv
	.4byte IsPrepared__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte IsAttachedTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
	.4byte DetachTempSpecialHandle__Q44nw4r3snd6detail9WaveSoundFv
	.4byte InitParam__Q44nw4r3snd6detail10BasicSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundFv
	.4byte GetBasicPlayer__Q44nw4r3snd6detail9WaveSoundCFv
	.4byte OnUpdatePlayerPriority__Q44nw4r3snd6detail9WaveSoundFv
	.4byte UpdateMoveValue__Q44nw4r3snd6detail10BasicSoundFv
	.4byte UpdateParam__Q44nw4r3snd6detail10BasicSoundFv


.global lbl_8056E688
lbl_8056E688:
	# ROM: 0x56A788
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte Start__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte Stop__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte Pause__Q44nw4r3snd6detail9WsdPlayerFb
	.4byte IsActive__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte IsStarted__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte IsPause__Q44nw4r3snd6detail9WsdPlayerCFv
	.4byte 0
	.4byte 0
	.4byte _180___dt__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte _180_InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
	.4byte _180_InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
	.4byte 0
	.4byte 0
	.4byte _192___dt__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte _192_OnUpdateFrameSoundThread__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte OnUpdateVoiceSoundThread__Q54nw4r3snd6detail11SoundThread14PlayerCallbackFv
	.4byte _192_OnShutdownSoundThread__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte InvalidateData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
	.4byte InvalidateWaveData__Q44nw4r3snd6detail9WsdPlayerFPCvPCv
	.4byte OnUpdateFrameSoundThread__Q44nw4r3snd6detail9WsdPlayerFv
	.4byte OnShutdownSoundThread__Q44nw4r3snd6detail9WsdPlayerFv


.global lbl_8056E6E8
lbl_8056E6E8:
	# ROM: 0x56A7E8
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut19TagProcessorBase_w_Fv
	.4byte Process__Q34nw4r2ut19TagProcessorBase_w_FUsPQ34nw4r2ut15PrintContext_w
	.4byte CalcRect__Q34nw4r2ut19TagProcessorBase_w_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_w


.global lbl_8056E6FC
lbl_8056E6FC:
	# ROM: 0x56A7FC
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut19TagProcessorBase_c_Fv
	.4byte Process__Q34nw4r2ut19TagProcessorBase_c_FUsPQ34nw4r2ut15PrintContext_c
	.4byte CalcRect__Q34nw4r2ut19TagProcessorBase_c_FPQ34nw4r2ut4RectUsPQ34nw4r2ut15PrintContext_c


.global lbl_8056E710
lbl_8056E710:
	# ROM: 0x56A810
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv


.global lbl_8056E740
lbl_8056E740:
	# ROM: 0x56A840
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut4FontFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8056E7A0
lbl_8056E7A0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv


.global lbl_8056E7AC
lbl_8056E7AC:
	# ROM: 0x56A8AC
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r2ut6detail11ResFontBaseFv
	.4byte GetWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetType__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseFRCQ34nw4r2ut10CharWidths
	.4byte SetAlternateChar__Q44nw4r2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q44nw4r2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetGlyph__Q44nw4r2ut6detail11ResFontBaseCFPQ34nw4r2ut5GlyphUs
	.4byte HasGlyph__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetEncoding__Q44nw4r2ut6detail11ResFontBaseCFv


.global lbl_8056E808
lbl_8056E808:
	# ROM: 0x56A908
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut7ResFontFv
	.4byte GetWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetType__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseFRCQ34nw4r2ut10CharWidths
	.4byte SetAlternateChar__Q44nw4r2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q44nw4r2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetGlyph__Q44nw4r2ut6detail11ResFontBaseCFPQ34nw4r2ut5GlyphUs
	.4byte HasGlyph__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetEncoding__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte 0


.global lbl_8056E868
lbl_8056E868:
	# ROM: 0x56A968
	.4byte 0
	.4byte 0
	.4byte __dt__Q44nw4r2ut6detail15ArchiveFontBaseFv
	.4byte GetWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetType__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseFRCQ34nw4r2ut10CharWidths
	.4byte SetAlternateChar__Q44nw4r2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q44nw4r2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q44nw4r2ut6detail15ArchiveFontBaseCFUs
	.4byte GetGlyph__Q44nw4r2ut6detail11ResFontBaseCFPQ34nw4r2ut5GlyphUs
	.4byte HasGlyph__Q44nw4r2ut6detail15ArchiveFontBaseCFUs
	.4byte GetEncoding__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte 0
.global lbl_8056E8C8
lbl_8056E8C8:
	.4byte lbl_8042DE1C
	.4byte lbl_8042DE30
	.4byte lbl_8042DE44
	.4byte lbl_8042DE5C
	.4byte lbl_8042DE70
	.4byte lbl_8042DE84
	.4byte lbl_8042DED4
	.4byte lbl_8042DF28
	.4byte lbl_8042DEE8
	.4byte lbl_8042DE98
	.4byte lbl_8042DEAC
	.4byte lbl_8042DF38
	.4byte lbl_8042DEC0

.global lbl_8056E8FC
lbl_8056E8FC:
	# ROM: 0x56A9FC
	.4byte 0
	.4byte 0
	.4byte __dt__Q34nw4r2ut10PackedFontFv
	.4byte GetWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetAscent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDescent__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetBaselinePos__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellHeight__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetCellWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetMaxCharWidth__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetType__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetTextureFormat__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetLineFeed__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte GetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseCFv
	.4byte SetDefaultCharWidths__Q44nw4r2ut6detail11ResFontBaseFRCQ34nw4r2ut10CharWidths
	.4byte SetAlternateChar__Q44nw4r2ut6detail11ResFontBaseFUs
	.4byte SetLineFeed__Q44nw4r2ut6detail11ResFontBaseFi
	.4byte GetCharWidth__Q44nw4r2ut6detail11ResFontBaseCFUs
	.4byte GetCharWidths__Q44nw4r2ut6detail15ArchiveFontBaseCFUs
	.4byte GetGlyph__Q34nw4r2ut10PackedFontCFPQ34nw4r2ut5GlyphUs
	.4byte HasGlyph__Q44nw4r2ut6detail15ArchiveFontBaseCFUs
	.4byte GetEncoding__Q44nw4r2ut6detail11ResFontBaseCFv
.global lbl_8056E958
lbl_8056E958:
	.4byte lbl_80438764
	.4byte lbl_80438634
	.4byte lbl_80438644
	.4byte lbl_80438660
	.4byte lbl_80438670
	.4byte lbl_80438680
	.4byte lbl_804386A8
	.4byte lbl_804386D0
	.4byte lbl_804386EC
	.4byte lbl_80438758
	.4byte lbl_80438708
	.4byte lbl_80438730

.global __vt__CWorkThread
__vt__CWorkThread:
	# ROM: 0x56AA88
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte func_80437AC8
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_80438A24
	.4byte func_80039E30

.global __vt__CMsgParam_8
__vt__CMsgParam_8:
	# ROM: 0x56AB28
	.4byte CMsgParam_8_RTTI
	.4byte 0
	.4byte func_80437A70


.global __vt__reslist_CWorkThread
__vt__reslist_CWorkThread:
	# ROM: 0x56AB34
	.4byte reslist_CWorkThread_RTTI
	.4byte 0
	.4byte func_804379B8

.global lbl_8056EA40
lbl_8056EA40:
	.4byte _reslist_base_CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CWorkThread
__vt___reslist_base_CWorkThread:
	# ROM: 0x56AB4C
	.4byte _reslist_base_CWorkThread_RTTI
	.4byte 0
	.4byte func_80437904


.global __vt__CProc
__vt__CProc:
	# ROM: 0x56AB58
	.4byte CProc_RTTI
	.4byte 0
	.4byte func_80438EC8
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804396A0
	.4byte func_804396A4
	.4byte func_80039E30


.global __vt__reslist_unsigned_long
__vt__reslist_unsigned_long:
	# ROM: 0x56ABF8
	.4byte reslist_unsigned_long_RTTI
	.4byte 0
	.4byte func_80438E10

.global lbl_8056EB04
lbl_8056EB04:
	.4byte _reslist_base_unsigned_long_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_unsigned_long
__vt___reslist_base_unsigned_long:
	# ROM: 0x56AC10
	.4byte _reslist_base_unsigned_long_RTTI
	.4byte 0
	.4byte func_80438D5C
	.4byte 0


.global __vt__CProcRoot
__vt__CProcRoot:
	# ROM: 0x56AC20
	.4byte CProcRoot_RTTI
	.4byte 0
	.4byte func_8043974C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804397B4
	.4byte func_80439858
	.4byte func_80039E30

.global lbl_8056EBC0
lbl_8056EBC0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CRsrcData
__vt__CRsrcData:
	# ROM: 0x56ACD8
	.4byte CRsrcData_RTTI
	.4byte 0
	.4byte func_80439D34
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8043A000
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8043A02C
	.4byte func_8043A07C
	.4byte func_80039E30

.global lbl_8056EC78
lbl_8056EC78:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScriptCode
__vt__CScriptCode:
	# ROM: 0x56AD90
	.4byte CScriptCode_RTTI
	.4byte 0
	.4byte func_8043A0E0
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_8043A7C0
	.4byte func_80039E30

.global lbl_8056ED30
lbl_8056ED30:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056ED48
lbl_8056ED48:
	# ROM: 0x56AE48
	.4byte lbl_8066CA88
	.4byte lbl_8066CA90
	.4byte lbl_8066CA94
	.4byte lbl_8066CA98
	.4byte lbl_8066CA9C
	.4byte lbl_8066CAA0
	.4byte lbl_8066CAA4
	.4byte lbl_8066CAA8
	.4byte lbl_8066CAAC
	.4byte lbl_8066CAB0
	.4byte lbl_8066CAB8
	.4byte 0
.global lbl_8056ED78
lbl_8056ED78:
	.4byte lbl_8043B534
	.4byte lbl_8043AD38
	.4byte lbl_8043ADB4
	.4byte lbl_8043AE2C
	.4byte lbl_8043AEA4
	.4byte lbl_8043B534
	.4byte lbl_8043AFA0
	.4byte lbl_8043B0DC
	.4byte lbl_8043B1FC
	.4byte lbl_8043B368
	.4byte lbl_8043B494


.global __vt__CToken
__vt__CToken:
	# ROM: 0x56AEA4
	.4byte CToken_RTTI
	.4byte 0
	.4byte func_8043A9DC


.global __vt___unnamed_CTaskManager_cpp_CRootProc
__vt___unnamed_CTaskManager_cpp_CRootProc:
	# ROM: 0x56AEB0
	.4byte _unnamed_CTaskManager_cpp_CRootProc_RTTI
	.4byte 0
	.4byte func_8043C268
	.4byte func_80446734
	.4byte func_8043C1D4
	.4byte func_8043C1D0
	.4byte func_8043C1CC
	.4byte func_8043C1C8
	.4byte func_80043F20

.global lbl_8056EDD4
lbl_8056EDD4:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_RTTI
	.4byte 0
	.4byte 0


.global __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc
__vt__CTTask_unnamed_CTaskManager_cpp_CRootProc:
	# ROM: 0x56AEF8
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_RTTI
	.4byte 0
	.4byte func_8043BEC0
	.4byte func_80446734
	.4byte 0
	.4byte 0
	.4byte func_8043C1D8
	.4byte func_8043C220
	.4byte func_80043F20

.global lbl_8056EE1C
lbl_8056EE1C:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte 0

.global lbl_8056EE38
lbl_8056EE38:
	# ROM: 0x56AF38
	.4byte lbl_8043D1A8
	.4byte lbl_8043D4D0
	.4byte lbl_8043D710
	.4byte lbl_8043D754
	.4byte lbl_8043D764
	.4byte lbl_8043D774
	.4byte lbl_8043D784
	.4byte lbl_8043D790


.global __vt__CView
__vt__CView:
	# ROM: 0x56AF58
	.4byte CView_RTTI
	.4byte 0
	.4byte func_8043C7E0
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8043EAE0
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8043F8E0
	.4byte func_8043F9E4
	.4byte func_80039E30
	.4byte CView_RTTI
	.4byte 0xFFFFFE3C
	.4byte func_8043FBC4
	.4byte func_8043FB68
	.4byte func_8043EAD8
	.4byte func_8043D9E8
	.4byte func_8043DD20
	.4byte func_8043FB60
	.4byte func_8043FB58
	.4byte func_8043C9B8
	.4byte func_8043EAD0
	.4byte func_8043EAC8

.global lbl_8056EF28
lbl_8056EF28:
	.4byte CFontLayer_RTTI
	.4byte 0x000001C4
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt__CMsgParam_10
__vt__CMsgParam_10:
	# ROM: 0x56B044
	.4byte CMsgParam_10_RTTI
	.4byte 0
	.4byte func_8043C788


.global __vt__reslist_IWorkEvent
__vt__reslist_IWorkEvent:
	# ROM: 0x56B050
	.4byte reslist_IWorkEvent_RTTI
	.4byte 0
	.4byte func_8043C6D0

.global lbl_8056EF5C
lbl_8056EF5C:
	.4byte _reslist_base_IWorkEvent_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_IWorkEvent
__vt___reslist_base_IWorkEvent:
	# ROM: 0x56B068
	.4byte _reslist_base_IWorkEvent_RTTI
	.4byte 0
	.4byte func_8043C61C
	.4byte 0


.global __vt__CViewFrame
__vt__CViewFrame:
	# ROM: 0x56B078
	.4byte CViewFrame_RTTI
	.4byte 0
	.4byte func_8043C5DC
	.4byte 0


.global __vt__CViewRoot
__vt__CViewRoot:
	# ROM: 0x56B088
	.4byte CViewRoot_RTTI
	.4byte 0
	.4byte func_804420D0
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80443214
	.4byte func_80443388
	.4byte func_80039E30

.global lbl_8056F028
lbl_8056F028:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CWorkControl
__vt__CWorkControl:
	# ROM: 0x56B140
	.4byte CWorkControl_RTTI
	.4byte 0
	.4byte func_80443764
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804438D0
	.4byte func_80443904
	.4byte func_80039E30

.global lbl_8056F0E0
lbl_8056F0E0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CWorkFlowSetup
__vt__CWorkFlowSetup:
	# ROM: 0x56B1F8
	.4byte CWorkFlowSetup_RTTI
	.4byte 0
	.4byte func_80443A18
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80443A78
	.4byte func_80443AC8
	.4byte func_80039E30

.global lbl_8056F198
lbl_8056F198:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt___unnamed_CWorkRoot_cpp_CWorkRootThread
__vt___unnamed_CWorkRoot_cpp_CWorkRootThread:
	# ROM: 0x56B2B0
	.4byte _unnamed_CWorkRoot_cpp_CWorkRootThread_RTTI
	.4byte 0
	.4byte func_80443CDC
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_8044438C
	.4byte func_80039E30

.global lbl_8056F250
lbl_8056F250:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CWorkSystem
__vt__CWorkSystem:
	# ROM: 0x56B368
	.4byte CWorkSystem_RTTI
	.4byte 0
	.4byte func_8044447C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80444534
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80444628
	.4byte func_8044476C
	.4byte func_80039E30

.global lbl_8056F308
lbl_8056F308:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CWorkSystemMem
__vt__CWorkSystemMem:
	# ROM: 0x56B420
	.4byte CWorkSystemMem_RTTI
	.4byte 0
	.4byte func_80444918
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8044497C
	.4byte func_80444980
	.4byte func_80039E30

.global lbl_8056F3C0
lbl_8056F3C0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CProcess
__vt__CProcess:
	# ROM: 0x56B4D8
	.4byte CProcess_RTTI
	.4byte 0
	.4byte func_80444B38
	.4byte func_80446734
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_80043F20


.global __vt__TChildListHeader_CProcess
__vt__TChildListHeader_CProcess:
	# ROM: 0x56B4FC
	.4byte TChildListHeader_CProcess_RTTI
	.4byte 0
	.4byte func_80446538


.global __vt__CDoubleListNode
__vt__CDoubleListNode:
	# ROM: 0x56B508
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte func_80444AF8
	.4byte func_804465A0


.global __vt__CChildListNode
__vt__CChildListNode:
	# ROM: 0x56B518
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte func_80444A78
	.4byte func_80446734


.global __vt__TChildListHeader_CChildListNode
__vt__TChildListHeader_CChildListNode:
	# ROM: 0x56B528
	.4byte TChildListHeader_CChildListNode_RTTI
	.4byte 0
	.4byte func_80444AB8
	.4byte 0


.global __vt__CDeviceRemotePad
__vt__CDeviceRemotePad:
	# ROM: 0x56B538
	.4byte CDeviceRemotePad_RTTI
	.4byte 0
	.4byte func_80447958
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80447A34
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80447A40
	.4byte func_80447AE4
	.4byte func_80039E30

.global lbl_8056F4D8
lbl_8056F4D8:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDeviceBase
__vt__CDeviceBase:
	# ROM: 0x56B5F8
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte func_80447900
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_80438A24
	.4byte func_80039E30

.global lbl_8056F598
lbl_8056F598:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0

.global __vt__CDeviceSC
__vt__CDeviceSC:
	# ROM: 0x56B6B0
	.4byte CDeviceSC_RTTI
	.4byte 0
	.4byte func_80447BBC
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80447D08
	.4byte func_80447D80
	.4byte func_80039E30

.global lbl_8056F650
lbl_8056F650:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8056F670
lbl_8056F670:
	# ROM: 0x56B770
	.4byte lbl_8054BA38
	.4byte lbl_8054BAB0
	.4byte lbl_8054BAEC
	.4byte lbl_8054BB28
	.4byte lbl_8054BC90
	.4byte lbl_8054BD08
	.4byte 0
	.4byte 0
	.4byte lbl_8054BD44
	.4byte lbl_8054BDBC
	.4byte lbl_8054BDF8
	.4byte lbl_8054BE34
	.4byte lbl_8054BB64
	.4byte lbl_8054BBDC
	.4byte lbl_8054BC18
	.4byte lbl_8054BC54


.global __vt__CDeviceVI
__vt__CDeviceVI:
	# ROM: 0x56B7B0
	.4byte CDeviceVI_RTTI
	.4byte 0
	.4byte func_80448188
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8044880C
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80448D18
	.4byte func_80448DF4
	.4byte func_80039E30
	.4byte CDeviceVI_RTTI
	.4byte 0xFFFFFE38
	.4byte func_80448F38
	.4byte func_80448F30
	.4byte func_80448E88

.global lbl_8056F764
lbl_8056F764:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_CDeviceVICb
__vt__reslist_CDeviceVICb:
	# ROM: 0x56B880
	.4byte reslist_CDeviceVICb_RTTI
	.4byte 0
	.4byte func_804480D0

.global lbl_8056F78C
lbl_8056F78C:
	.4byte _reslist_base_CDeviceVICb_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CDeviceVICb
__vt___reslist_base_CDeviceVICb:
	# ROM: 0x56B898
	.4byte _reslist_base_CDeviceVICb_RTTI
	.4byte 0
	.4byte func_8044801C
	.4byte 0


.global __vt__CDeviceVICb
__vt__CDeviceVICb:
	# ROM: 0x56B8A8
	.4byte CDeviceVICb_RTTI
	.4byte 0
	.4byte func_80448F7C
	.4byte func_80166630
	.4byte func_8016662C
	.4byte func_80448A40


.global __vt__CFontLayer
__vt__CFontLayer:
	# ROM: 0x56B8C0
	.4byte CFontLayer_RTTI
	.4byte 0
	.4byte func_80449018
	.4byte 0


.global lbl_8056F7D0
lbl_8056F7D0:
	# ROM: 0x56B8D0
	.4byte lbl_80449DB4
	.4byte lbl_80449DCC
	.4byte lbl_80449DE4
	.4byte lbl_80449E70
	.4byte lbl_80449EFC
	.4byte lbl_80449F28
	.4byte lbl_80449F5C
	.4byte lbl_80449F90
	.4byte lbl_80449F9C
	.4byte lbl_80449FA8
	.4byte lbl_8044A2AC
	.4byte lbl_8044A2C4
	.4byte lbl_8044A3A0
	.4byte lbl_80449F0C


.global __vt__CGXCache
__vt__CGXCache:
	# ROM: 0x56B908
	.4byte CGXCache_RTTI
	.4byte 0
	.4byte func_80449D04
	.4byte func_80449D68

.global lbl_8056F818
lbl_8056F818:
	.4byte IStateCache_RTTI
	.4byte 0
	.4byte 0


.global __vt__CMsgParam_32
__vt__CMsgParam_32:
	# ROM: 0x56B924
	.4byte CMsgParam_32_RTTI
	.4byte 0
	.4byte func_80449480


.global __vt__IStateCache
__vt__IStateCache:
	# ROM: 0x56B930
	.4byte IStateCache_RTTI
	.4byte 0
	.4byte func_8044940C
	.4byte 0


.global __vt___unnamed_CDevice_cpp_CDeviceException
__vt___unnamed_CDevice_cpp_CDeviceException:
	# ROM: 0x56B940
	.4byte _unnamed_CDevice_cpp_CDeviceException_RTTI
	.4byte 0
	.4byte func_8044DA7C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_8044DADC
	.4byte func_80039E30

.global lbl_8056F8E0
lbl_8056F8E0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDevice
__vt__CDevice:
	# ROM: 0x56B9F8
	.4byte CDevice_RTTI
	.4byte 0
	.4byte func_8044CFF0
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8044D820
	.4byte func_8044D8C8
	.4byte func_80039E30

.global lbl_8056F998
lbl_8056F998:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDeviceClock
__vt__CDeviceClock:
	# ROM: 0x56BAB0
	.4byte CDeviceClock_RTTI
	.4byte 0
	.4byte func_8044DDF8
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8044E06C
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8044E0A8
	.4byte func_8044E0DC
	.4byte func_80039E30

.global lbl_8056FA50
lbl_8056FA50:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_IDeviceClockFrame
__vt__reslist_IDeviceClockFrame:
	# ROM: 0x56BB6C
	.4byte reslist_IDeviceClockFrame_RTTI
	.4byte 0
	.4byte func_8044DD40

.global lbl_8056FA78
lbl_8056FA78:
	.4byte _reslist_base_IDeviceClockFrame_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_IDeviceClockFrame
__vt___reslist_base_IDeviceClockFrame:
	# ROM: 0x56BB84
	.4byte _reslist_base_IDeviceClockFrame_RTTI
	.4byte 0
	.4byte func_8044DC8C


.global __vt__CDeviceFile
__vt__CDeviceFile:
	# ROM: 0x56BB90
	.4byte CDeviceFile_RTTI
	.4byte 0
	.4byte func_8044E42C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8044F424
	.4byte func_8044F4E8
	.4byte func_80039E30

.global lbl_8056FB30
lbl_8056FB30:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_CFileHandle
__vt__reslist_CFileHandle:
	# ROM: 0x56BC4C
	.4byte reslist_CFileHandle_RTTI
	.4byte 0
	.4byte func_8044E374

.global lbl_8056FB58
lbl_8056FB58:
	.4byte _reslist_base_CFileHandle_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CFileHandle
__vt___reslist_base_CFileHandle:
	# ROM: 0x56BC64
	.4byte _reslist_base_CFileHandle_RTTI
	.4byte 0
	.4byte func_8044E2C0


.global lbl_8056FB70
lbl_8056FB70:
	# ROM: 0x56BC70
	.4byte lbl_80450638
	.4byte lbl_80450780
	.4byte lbl_80450790
	.4byte lbl_8045081C
	.4byte lbl_8045082C
	.4byte lbl_804508A0
	.4byte lbl_80450908
	.4byte lbl_804508AC
	.4byte lbl_80450914


.global __vt__CDeviceFileCri
__vt__CDeviceFileCri:
	# ROM: 0x56BC94
	.4byte CDeviceFileCri_RTTI
	.4byte 0
	.4byte func_8044F69C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_804505F0
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804509B4
	.4byte func_804509B8
	.4byte func_80450A18
	.4byte CDeviceFileCri_RTTI
	.4byte 0xFFFFFE3C
	.4byte func_80450B4C
	.4byte func_80450B44
	.4byte func_80450AB8

.global lbl_8056FC48
lbl_8056FC48:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global lbl_8056FC5C
lbl_8056FC5C:
	# ROM: 0x56BD5C
	.4byte 0x00460041
	.4byte 0x00540041
	.4byte 0x004C0000


.global __vt__CDeviceFileDvd
__vt__CDeviceFileDvd:
	# ROM: 0x56BD68
	.4byte CDeviceFileDvd_RTTI
	.4byte 0
	.4byte func_80450BB4
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80451420
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80451638
	.4byte func_8045166C
	.4byte func_804516CC

.global lbl_8056FD08
lbl_8056FD08:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDeviceFileJob
__vt__CDeviceFileJob:
	# ROM: 0x56BE20
	.4byte CDeviceFileJob_RTTI
	.4byte 0
	.4byte func_80451EC8
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_80438A24
	.4byte func_80039E30
	.4byte func_80451EC0
	.4byte func_80451EB0
	.4byte func_80451EB8

.global lbl_8056FDCC
lbl_8056FDCC:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt__CDeviceFileJobReadDvd
__vt__CDeviceFileJobReadDvd:
	# ROM: 0x56BEE0
	.4byte CDeviceFileJobReadDvd_RTTI
	.4byte 0
	.4byte func_80451F64
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_804520CC
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045219C
	.4byte func_80452210
	.4byte func_80039E30
	.4byte func_80451EC0
	.4byte func_80451FC0
	.4byte func_80452054

.global lbl_8056FE8C
lbl_8056FE8C:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceFileJob_RTTI
	.4byte 0
	.4byte 0


.global __vt__CDeviceFont
__vt__CDeviceFont:
	# ROM: 0x56BFA8
	.4byte CDeviceFont_RTTI
	.4byte 0
	.4byte func_804524EC
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80452E44
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804530C0
	.4byte func_804531B8
	.4byte func_80039E30

.global lbl_8056FF48
lbl_8056FF48:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_IDeviceFontInfo
__vt__reslist_IDeviceFontInfo:
	# ROM: 0x56C064
	.4byte reslist_IDeviceFontInfo_RTTI
	.4byte 0
	.4byte func_80452434

.global lbl_8056FF70
lbl_8056FF70:
	.4byte _reslist_base_IDeviceFontInfo_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_IDeviceFontInfo
__vt___reslist_base_IDeviceFontInfo:
	# ROM: 0x56C07C
	.4byte _reslist_base_IDeviceFontInfo_RTTI
	.4byte 0
	.4byte func_80452380


.global __vt__CDeviceFontInfoExt
__vt__CDeviceFontInfoExt:
	# ROM: 0x56C088
	.4byte CDeviceFontInfoExt_RTTI
	.4byte 0
	.4byte func_804533E0
	.4byte func_80453654
	.4byte func_8045364C
	.4byte func_80453644
	.4byte func_8045363C
	.4byte func_80453634
	.4byte func_80453468
	.4byte func_80453624
	.4byte func_8045362C
	.4byte func_804535C0
	.4byte func_804535DC
	.4byte func_804535F4
	.4byte func_80453608

.global lbl_8056FFC4
lbl_8056FFC4:
	.4byte lbl_80666048
	.4byte 0
	.4byte 0


.global __vt__CDeviceFontInfoRom
__vt__CDeviceFontInfoRom:
	# ROM: 0x56C0D0
	.4byte CDeviceFontInfoRom_RTTI
	.4byte 0
	.4byte func_8045365C
	.4byte func_80453830
	.4byte func_80453824
	.4byte func_80453818
	.4byte func_8045380C
	.4byte func_80453800
	.4byte func_804536DC
	.4byte func_804537F0
	.4byte func_804537F8
	.4byte func_8045378C
	.4byte func_804537A8
	.4byte func_804537C0
	.4byte func_804537D4


.global lbl_8057000C
lbl_8057000C:
	.4byte lbl_80666048
	.4byte 0
	.4byte 0


.global __vt__CDeviceFontLayer
__vt__CDeviceFontLayer:
	# ROM: 0x56C118
	.4byte CDeviceFontLayer_RTTI
	.4byte 0
	.4byte func_80453AD4
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80454DA4
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804389F8
	.4byte func_80454DBC
	.4byte func_80039E30

.global lbl_805700B8
lbl_805700B8:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_const_CDeviceFontLayer_LAYER_QUE
__vt__reslist_const_CDeviceFontLayer_LAYER_QUE:
	# ROM: 0x56C1CC
	.4byte reslist_const_CDeviceFontLayer_LAYER_QUE_RTTI
	.4byte 0
	.4byte func_80453A1C

.global lbl_805700D8
lbl_805700D8:
	.4byte _reslist_base_const_CDeviceFontLayer_LAYER_QUE_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_const_CDeviceFontLayer_LAYER_QUE
__vt___reslist_base_const_CDeviceFontLayer_LAYER_QUE:
	# ROM: 0x56C1E4
	.4byte _reslist_base_const_CDeviceFontLayer_LAYER_QUE_RTTI
	.4byte 0
	.4byte func_80453968


.global __vt__CDeviceFontLoader
__vt__CDeviceFontLoader:
	# ROM: 0x56C1F0
	.4byte CDeviceFontLoader_RTTI
	.4byte 0
	.4byte func_80454ED8
	.4byte func_80039E28
	.4byte func_80455074
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80454F80
	.4byte func_80455010
	.4byte func_80039E30

.global lbl_80570190
lbl_80570190:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDeviceGX
__vt__CDeviceGX:
	# ROM: 0x56C2A8
	.4byte CDeviceGX_RTTI
	.4byte 0
	.4byte func_804551F8
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804557A8
	.4byte func_804558A8
	.4byte func_80039E30
	.4byte CDeviceGX_RTTI
	.4byte 0xFFFFFE38
	.4byte func_804559C4
	.4byte func_80166630
	.4byte func_804559BC
	.4byte func_804559B4
	.4byte func_80455498
	.4byte func_80455544

.global lbl_80570268
lbl_80570268:
	.4byte CDeviceVICb_RTTI
	.4byte 0x000001C8
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CDeviceBase_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt___unnamed_CDesktop_cpp_CDesktopException
__vt___unnamed_CDesktop_cpp_CDesktopException:
	# ROM: 0x56C390
	.4byte _unnamed_CDesktop_cpp_CDesktopException_RTTI
	.4byte 0
	.4byte func_80456054
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804396A0
	.4byte func_804560AC
	.4byte func_80039E30

.global lbl_80570330
lbl_80570330:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CProc_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt___unnamed_CDesktop_cpp_CDesktopBackGround
__vt___unnamed_CDesktop_cpp_CDesktopBackGround:
	# ROM: 0x56C450
	.4byte _unnamed_CDesktop_cpp_CDesktopBackGround_RTTI
	.4byte 0
	.4byte func_80455FFC
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804396A0
	.4byte func_804560F0
	.4byte func_80039E30

.global lbl_805703F0
lbl_805703F0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CProc_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CDesktop
__vt__CDesktop:
	# ROM: 0x56C510
	.4byte CDesktop_RTTI
	.4byte 0
	.4byte func_80455A40
	.4byte func_80039E28
	.4byte func_80455F10
	.4byte func_80455F6C
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80455AD8
	.4byte func_80455AF8
	.4byte func_80455B34
	.4byte func_80455B38
	.4byte func_80455DF4
	.4byte func_80039E30

.global lbl_805704B0
lbl_805704B0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CProc_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_805704D0
lbl_805704D0:
	# ROM: 0x56C5D0
	.4byte lbl_8045676C
	.4byte lbl_8045670C
	.4byte lbl_80456714
	.4byte lbl_80456754
	.4byte lbl_8045673C
	.4byte lbl_80456760
	.4byte lbl_80456744
	.4byte lbl_8045674C
	.4byte lbl_80456768
	.4byte lbl_80456720
	.4byte lbl_8045672C


.global lbl_805704FC
lbl_805704FC:
	# ROM: 0x56C5FC
	.4byte lbl_804566EC
	.4byte lbl_80456628
	.4byte lbl_8045663C
	.4byte lbl_804566B4
	.4byte lbl_80456678
	.4byte lbl_804566C8
	.4byte lbl_8045668C
	.4byte lbl_804566A0
	.4byte lbl_804566DC
	.4byte lbl_80456650
	.4byte lbl_80456664


.global __vt__CException
__vt__CException:
	# ROM: 0x56C628
	.4byte CException_RTTI
	.4byte 0
	.4byte func_80457C24
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80457EFC
	.4byte func_80039E38
	.4byte func_80458ED8
	.4byte func_80459068
	.4byte func_80039E30

.global lbl_805705C8
lbl_805705C8:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CProc_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLib
__vt__CLib:
	# ROM: 0x56C6E8
	.4byte CLib_RTTI
	.4byte 0
	.4byte func_80459390
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80459580
	.4byte func_804596F4
	.4byte func_80039E30

.global lbl_80570688
lbl_80570688:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibCri
__vt__CLibCri:
	# ROM: 0x56C7A0
	.4byte CLibCri_RTTI
	.4byte 0
	.4byte func_804598DC
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80459AD4
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80459AE4
	.4byte func_80459BF0
	.4byte func_80039E30
	.4byte CLibCri_RTTI
	.4byte 0xFFFFFE3C
	.4byte func_80459C80
	.4byte func_80459C78
	.4byte func_8016662C
	.4byte func_80448A40
	.4byte CLibCri_RTTI
	.4byte 0xFFFFFE38
	.4byte func_80459C90
	.4byte func_80459C88
	.4byte func_80459AD8
	.4byte func_80459C74

.global lbl_80570770
lbl_80570770:
	.4byte CDeviceVICb_RTTI
	.4byte 0x000001C4
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibCriMoviePlay
__vt__CLibCriMoviePlay:
	# ROM: 0x56C890
	.4byte CLibCriMoviePlay_RTTI
	.4byte 0
	.4byte func_80459D7C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_8045B250
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8045AB3C
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045AD04
	.4byte func_8045AD5C
	.4byte func_80039E30
	.4byte CLibCriMoviePlay_RTTI
	.4byte 0xFFFFFE3C
	.4byte func_8045B3E4
	.4byte func_8045B3DC
	.4byte func_8045B3D4
	.4byte func_80448A40
	.4byte func_8045AE84
	.4byte func_8045B1DC

.global lbl_80570850
lbl_80570850:
	.4byte CDeviceVICb_RTTI
	.4byte 0x000001C4
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibCriStreamingPlay
__vt__CLibCriStreamingPlay:
	# ROM: 0x56C970
	.4byte CLibCriStreamingPlay_RTTI
	.4byte 0
	.4byte func_8045B508
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_8045C4A0
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8045BECC
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045C3E4
	.4byte func_8045C3E8
	.4byte func_80039E30
	.4byte CLibCriStreamingPlay_RTTI
	.4byte 0xFFFFFE3C
	.4byte func_8045D148
	.4byte func_8045D140
	.4byte func_8045CF30

.global lbl_80570924
lbl_80570924:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt__CLibG3d
__vt__CLibG3d:
	# ROM: 0x56CA38
	.4byte CLibG3d_RTTI
	.4byte 0
	.4byte func_8045D19C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045D2AC
	.4byte func_8045D300
	.4byte func_80039E30

.global lbl_805709D8
lbl_805709D8:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibHbm
__vt__CLibHbm:
	# ROM: 0x56CAF0
	.4byte CLibHbm_RTTI
	.4byte 0
	.4byte func_8045D3F4
	.4byte func_80039E28
	.4byte func_8045DEC0
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8045D83C
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045DE04
	.4byte func_8045DE64
	.4byte func_80039E30

.global lbl_80570A90
lbl_80570A90:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0
.global lbl_80570AA8
lbl_80570AA8:
	.4byte lbl_8045E7C4
	.4byte lbl_8045E778
	.4byte lbl_8045E780
	.4byte lbl_8045E7C4
	.4byte lbl_8045E788
	.4byte lbl_8045E798
	.4byte lbl_8045E7A4
	.4byte lbl_8045E7C4
	.4byte lbl_8045E790
	.4byte lbl_8045E7B0
	.4byte lbl_8045E7BC
	.4byte 0

.global __vt__CLibHbmControl
__vt__CLibHbmControl:
	# ROM: 0x56CBD8
	.4byte CLibHbmControl_RTTI
	.4byte 0
	.4byte func_8045E4C8
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8045E558
	.4byte func_8045E9E8
	.4byte func_80039E38
	.4byte func_8045ED8C
	.4byte func_8045EF30
	.4byte func_80039E30

.global lbl_80570B78
lbl_80570B78:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte CProc_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibLayout
__vt__CLibLayout:
	# ROM: 0x56CC98
	.4byte CLibLayout_RTTI
	.4byte 0
	.4byte func_8045F04C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_8045F31C
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045F320
	.4byte func_8045F3D4
	.4byte func_80039E30

.global lbl_80570C38
lbl_80570C38:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibStaticData
__vt__CLibStaticData:
	# ROM: 0x56CD50
	.4byte CLibStaticData_RTTI
	.4byte 0
	.4byte func_8045FA50
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8045FC84
	.4byte func_8045FDB8
	.4byte func_80039E30

.global lbl_80570CF0
lbl_80570CF0:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CLibStaticData_CItem
__vt__CLibStaticData_CItem:
	# ROM: 0x56CE08
	.4byte CLibStaticData_CItem_RTTI
	.4byte 0
	.4byte func_8045FF9C
	.4byte func_80039E28
	.4byte func_80460060
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40


.global __vt__CLibVM
__vt__CLibVM:
	# ROM: 0x56CE90
	.4byte CLibVM_RTTI
	.4byte 0
	.4byte func_8046012C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_80460248
	.4byte func_804602A0
	.4byte func_80039E30

.global lbl_80570E30
lbl_80570E30:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80570E48
lbl_80570E48:
	# ROM: 0x56CF48
	.4byte lbl_80461054
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461E8C
	.4byte lbl_80461170
	.4byte lbl_804611DC
	.4byte lbl_80461224
	.4byte lbl_80461230
	.4byte lbl_80461314
	.4byte lbl_80461390
	.4byte lbl_804613F4
	.4byte lbl_80461490
	.4byte lbl_80461590
	.4byte lbl_80461958
	.4byte lbl_80461AD0
	.4byte lbl_80461B44
	.4byte lbl_80461C40
	.4byte lbl_80461CDC
	.4byte lbl_80461D8C
	.4byte lbl_80461DAC
	.4byte lbl_80461E8C
	.4byte lbl_80461E74
	.4byte lbl_80461E7C
	.4byte lbl_80461E84
	.4byte 0


.global __vt__CTaskLOD
__vt__CTaskLOD:
	# ROM: 0x56CFC0
	.4byte CTaskLOD_RTTI
	.4byte 0
	.4byte func_80462830
	.4byte func_80446734
	.4byte func_804628A0
	.4byte func_804628A4
	.4byte func_804628FC
	.4byte func_80463078
	.4byte func_80043F20

.global lbl_80570EE4
lbl_80570EE4:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte CTTask_CTaskLOD_RTTI
	.4byte 0
	.4byte 0


.global __vt__CTTask_CTaskLOD
__vt__CTTask_CTaskLOD:
	# ROM: 0x56D008
	.4byte CTTask_CTaskLOD_RTTI
	.4byte 0
	.4byte func_804627D8
	.4byte func_80446734
	.4byte 0
	.4byte 0
	.4byte func_80463030
	.4byte func_80463078
	.4byte func_80043F20

.global lbl_80570F2C
lbl_80570F2C:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte 0


.global lbl_80570F48
lbl_80570F48:
	# ROM: 0x56D048
	.4byte func_8046374C
	.4byte func_8046375C
	.4byte func_8046376C
	.4byte 0


.global lbl_80570F58
lbl_80570F58:
	# ROM: 0x56D058
	.4byte func_804645CC
	.4byte func_80468434
	.4byte func_80464B84


.global lbl_80570F64
lbl_80570F64:
	# ROM: 0x56D064
	.4byte func_80463FF8
	.4byte func_8046892C
	.4byte func_80463FF8


.global lbl_80570F70
lbl_80570F70:
	# ROM: 0x56D070
	.4byte func_80466F8C
	.4byte func_80466FF8
	.4byte func_80467070
	.4byte func_804670E8
	.4byte func_8046716C
	.4byte func_804671E4
	.4byte func_80467268
	.4byte func_804672D4
	.4byte func_8046734C
	.4byte func_804673D0
	.4byte func_80467454
	.4byte func_804674E4
	.4byte func_80467568


.global lbl_80570FA4
lbl_80570FA4:
	# ROM: 0x56D0A4
	.4byte func_80466590
	.4byte func_80466638
	.4byte func_804666E0
	.4byte func_80466794
	.4byte func_80466848
	.4byte func_804668F0
	.4byte func_80466998
	.4byte func_80466A4C
	.4byte func_80466AE8
	.4byte func_80466B84
	.4byte func_80466C38
	.4byte func_80466CEC
	.4byte func_80466D94
	.4byte func_80466E3C
	.4byte func_80466EE4
	.4byte func_804675F8
	.4byte func_80467610
	.4byte func_80467628
	.4byte 0


.global lbl_80570FF0
lbl_80570FF0:
	# ROM: 0x56D0F0
	.4byte func_804676A4
	.4byte func_804676BC
	.4byte func_804676BC
	.4byte func_804676BC
	.4byte func_804676D4
	.4byte func_804676EC
	.4byte func_80467640
	.4byte func_80467654
	.4byte func_80467668
	.4byte func_8046767C
	.4byte func_80467690
	.4byte 0
	.4byte func_80467798
	.4byte func_80467898
	.4byte func_804678E8
	.4byte func_804679E8
	.4byte func_80467B04
	.4byte func_80467BD4
	.4byte func_80467CF0
	.4byte func_80467E14
	.4byte func_80467E94
	.4byte func_80467FB8
	.4byte func_804680DC
	.4byte func_804681B4
	.4byte func_80466348
	.4byte func_80466390
	.4byte func_80466348
	.4byte func_804663D0
	.4byte func_80466418
	.4byte func_804663D0
	.4byte func_80466458
	.4byte func_804664A0
	.4byte func_804664E8
	.4byte func_80466558
	.4byte func_80466558
	.4byte func_80466558
	.4byte func_80466520
	.4byte func_80466520
	.4byte func_80466520
	.4byte func_80466558
	.4byte func_80466520
	.4byte func_80466520
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0xFFFFFFFF


.global lbl_805710BC
lbl_805710BC:
	.asciz "NW4R:Failed assertion !((u32)p & 0x1f)"
	.balign 4
	.4byte 0
	.asciz "g3d_restex_ac.h"
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0
	.asciz "g3d_restex_ac.h"
	.asciz "NW4R:Failed assertion !((u32)p & 0x1f)"
	.balign 4
	.asciz "g3d_respltt_ac.h"
	.balign 4
	.asciz "%s::%s: Object not valid."
	.balign 4
	.asciz "g3d_respltt_ac.h"
	.balign 4
	.asciz "%s::%s: Object not valid."
	.balign 4
	.asciz "g3d_respltt_ac.h"
	.balign 4
	.4byte 0


.global lbl_805711C8
lbl_805711C8:
	# ROM: 0x56D2C8
	.4byte func_804689D4
	.4byte func_80468BDC
	.4byte func_80469138
	.4byte func_80468AD0
	.4byte func_80469620
	.4byte func_80469B5C


.global lbl_805711E0
lbl_805711E0:
	# ROM: 0x56D2E0
	.4byte func_8046A02C
	.4byte func_8046A11C
	.4byte func_8046A11C
	.4byte func_8046A0A4
	.4byte func_8046A1A0
	.4byte func_8046A1A0


.global lbl_805711F8
lbl_805711F8:
	# ROM: 0x56D2F8
	.4byte func_8046A224
	.4byte func_8046A280
	.4byte func_8046A318
	.4byte 0

.global lbl_80571208
lbl_80571208:
	.asciz "ResTexPlttInfoOffset"
	.balign 4

.global lbl_80571220
lbl_80571220:
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0
.global lbl_80571240
lbl_80571240:
	.asciz "g3d_restexplttinfo_ac.h"

.global lbl_80571258
lbl_80571258:
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0
.global lbl_80571278
lbl_80571278:
	.asciz "g3d_restexplttinfo_ac.h"

.global lbl_80571290
lbl_80571290:
	.asciz "NW4R:Failed assertion idx < GetNumOffset()"
	.balign 4
	.4byte 0
.global lbl_805712C0
lbl_805712C0:
	.asciz "g3d_restexplttinfo_ac.h"

.global lbl_805712D8
lbl_805712D8:
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4

.global lbl_80571300
lbl_80571300:
	.asciz "g3d_resmat_ac.h"

.global lbl_80571310
lbl_80571310:
	.asciz "ResTexPlttInfo"
	.balign 4

.global lbl_80571320
lbl_80571320:
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0
.global lbl_80571340
lbl_80571340:
	.asciz "g3d_resmat_ac.h"


.global __vt__LOD_LODMemMan
__vt__LOD_LODMemMan:
	# ROM: 0x56D450
	.4byte LOD_LODMemMan_RTTI
	.4byte 0
	.4byte func_8046D104
	.4byte func_80039E28
	.4byte func_80471E9C
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40

.global lbl_805713D8
lbl_805713D8:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawDisplayList
__vt__mpfsys_MPFDrawDisplayList:
	# ROM: 0x56D4E8
	.4byte mpfsys_MPFDrawDisplayList_RTTI
	.4byte 0
	.4byte func_80479840
	.4byte func_8047983C

.global lbl_805713F8
lbl_805713F8:
	.4byte lbl_80666190
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawMdlColor
__vt__mpfsys_MPFDrawMdlColor:
	# ROM: 0x56D508
	.4byte mpfsys_MPFDrawMdlColor_RTTI
	.4byte 0
	.4byte func_80479BA0
	.4byte func_80479D40

.global lbl_80571418
lbl_80571418:
	.4byte lbl_80666190
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawMdlNoColor
__vt__mpfsys_MPFDrawMdlNoColor:
	# ROM: 0x56D528
	.4byte mpfsys_MPFDrawMdlNoColor_RTTI
	.4byte 0
	.4byte func_80479894
	.4byte func_80479A1C

.global lbl_80571438
lbl_80571438:
	.4byte lbl_80666190
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawBillLayTex
__vt__mpfsys_MPFDrawBillLayTex:
	# ROM: 0x56D548
	.4byte mpfsys_MPFDrawBillLayTex_RTTI
	.4byte 0
	.4byte func_8047B85C
	.4byte func_8047B9DC

.global lbl_80571458
lbl_80571458:
	.4byte lbl_80666190
	.4byte 0
	.4byte mpfsys_MPFDrawBillboard_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawCross
__vt__mpfsys_MPFDrawCross:
	# ROM: 0x56D570
	.4byte mpfsys_MPFDrawCross_RTTI
	.4byte 0
	.4byte func_8047B1E8
	.4byte func_8047B528

.global lbl_80571480
lbl_80571480:
	.4byte lbl_80666190
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__mpfsys_MPFDrawBillboard
__vt__mpfsys_MPFDrawBillboard:
	# ROM: 0x56D590
	.4byte mpfsys_MPFDrawBillboard_RTTI
	.4byte 0
	.4byte func_8047A7B0
	.4byte func_8047A86C

.global lbl_805714A0
lbl_805714A0:
	.4byte lbl_80666190
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_805714B0
lbl_805714B0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80481074

.global lbl_805714BC
lbl_805714BC:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804812D8

.global lbl_805714C8
lbl_805714C8:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804813E8
	.4byte 0

.global __vt__CScnItemCameraNw4r
__vt__CScnItemCameraNw4r:
	# ROM: 0x56D5D8
	.4byte CScnItemCameraNw4r_RTTI
	.4byte 0
	.4byte func_80481EA8
	.4byte func_8049F9A4
	.4byte func_80482048
	.4byte func_80481F9C
	.4byte func_8048204C
	.4byte func_80482040
	.4byte func_80482038
	.4byte func_80481F00

.global lbl_80571500
lbl_80571500:
	.4byte lbl_80664DD0
	.4byte 0
	.4byte CScnItemCamera_RTTI
	.4byte 0
	.4byte 0

.global lbl_80571514
lbl_80571514:
	.4byte lbl_80664DD0
	.4byte 0
	.4byte 0


.global __vt__CScnItemId
__vt__CScnItemId:
	# ROM: 0x56D620
	.4byte CScnItemId_RTTI
	.4byte 0
	.4byte func_80482094
	.4byte func_8048228C
	.4byte func_80482048
	.4byte func_80482288
	.4byte func_80482290
	.4byte func_80482298

.global lbl_80571540
lbl_80571540:
	.4byte lbl_80664DD0
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScnItemLight
__vt__CScnItemLight:
	# ROM: 0x56D650
	.4byte CScnItemLight_RTTI
	.4byte 0
	.4byte func_8048232C
	.4byte func_80482388
	.4byte func_80482048
	.4byte func_80482288
	.4byte func_804823A0
	.4byte func_80482040

.global lbl_80571570
lbl_80571570:
	.4byte lbl_80664DD0
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScnItemLightNw4r
__vt__CScnItemLightNw4r:
	# ROM: 0x56D680
	.4byte CScnItemLightNw4r_RTTI
	.4byte 0
	.4byte func_804823A8
	.4byte func_80482388
	.4byte func_80482048
	.4byte func_80482400
	.4byte func_804823A0
	.4byte func_80482040

.global lbl_805715A0
lbl_805715A0:
	.4byte lbl_80664DD0
	.4byte 0
	.4byte CScnItemLight_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScnItemModel
__vt__CScnItemModel:
	# ROM: 0x56D6B8
	.4byte CScnItemModel_RTTI
	.4byte 0
	.4byte func_80482724
	.4byte func_80485CE8
	.4byte func_80482048
	.4byte func_80482288
	.4byte 0
	.4byte func_80486090
	.4byte 0
	.4byte 0
	.4byte func_80485A48
	.4byte func_80485AD8
	.4byte func_80485B98
	.4byte func_80485C28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_80484838
	.4byte func_8048490C
	.4byte func_80484E0C
	.4byte func_80486088
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_80183264
	.4byte func_80486084
	.4byte func_804830E4
	.4byte func_804830BC
	.4byte func_8048310C
	.4byte func_804849E4
	.4byte func_80484AB4
	.4byte func_80484BB4
	.4byte func_80484C84
	.4byte func_80484D3C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_804858C8
	.4byte func_80485994
	.4byte func_80484914
	.4byte 0
	.4byte func_8048607C
	.4byte func_80486074
	.4byte func_801FCAC0
	.4byte func_801FCBEC
	.4byte func_804830AC
	.4byte func_80485D64
	.4byte func_804857DC
	.4byte func_804857F0
	.4byte 0

.global lbl_80571698
lbl_80571698:
	.float 0.7
	.float 0.5
	.float 0.5
	.float 0.75
	.float 1.0
	.float 1.0
	.float 0.7
	.float 0.3
	.float 0.3
	.float 0.3
	.float 0.7
	.float 0.7

.global __vt__CScnItemModelNw4r
__vt__CScnItemModelNw4r:
	# ROM: 0x56D7C8
	.4byte CScnItemModelNw4r_RTTI
	.4byte 0
	.4byte func_80487248
	.4byte func_80487EE0
	.4byte func_80482048
	.4byte func_804885FC
	.4byte func_80487B18
	.4byte func_80486090
	.4byte func_8048B4BC
	.4byte func_8048B4C4
	.4byte func_8048B1F4
	.4byte func_8048B30C
	.4byte func_8048B54C
	.4byte func_8048B608
	.4byte func_8048B3F0
	.4byte func_8048B68C
	.4byte func_8048B728
	.4byte func_8048BA58
	.4byte func_8048A588
	.4byte func_8048490C
	.4byte func_8048AB0C
	.4byte func_800BD638
	.4byte func_80487E40
	.4byte func_80487E48
	.4byte func_80487E50
	.4byte func_80487E58
	.4byte func_80487EB8
	.4byte func_80488FEC
	.4byte func_80489000
	.4byte func_804885C8
	.4byte func_80487374
	.4byte func_804876EC
	.4byte func_8048BBF0
	.4byte func_8048BADC
	.4byte func_8048BD04
	.4byte func_80488C28
	.4byte func_80488C78
	.4byte func_80488CF8
	.4byte func_80488D14
	.4byte func_80488D54
	.4byte func_80488EF4
	.4byte func_80487B84
	.4byte func_8048736C
	.4byte func_804888B4
	.4byte func_80488A28
	.4byte func_80487C78
	.4byte func_8048776C
	.4byte func_8048607C
	.4byte func_80489E80
	.4byte func_80489FDC
	.4byte func_8048A0B4
	.4byte func_80487818
	.4byte func_804884F8
	.4byte func_80488984
	.4byte func_80488AAC
	.4byte CScnItemModelNw4r_RTTI
	.4byte 0xFFFFEB9C
	.4byte func_8048BD6C
	.4byte func_8048BD64
	.4byte func_8048BD5C
	.4byte func_8048BD54
	.4byte CScnItemModelNw4r_RTTI
	.4byte 0xFFFFEB98
	.4byte func_8048BD8C
	.4byte func_8048BD84
	.4byte ExecCallback_CALC_MAT__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte ExecCallback_CALC_VIEW__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte func_8048BD7C
	.4byte func_8048BD74
	.4byte func_80489014
	.4byte func_8048917C
	.4byte func_80489200
	.4byte func_80489584
	.4byte func_80489924
	.4byte func_804899F4
	.4byte lbl_80664DD0
	.4byte 0
	.4byte CScnItemModel_RTTI
	.4byte 0
	.4byte 0
	.4byte lbl_80664DD0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_806661F8
	.4byte 0
	.4byte __dt__Q34nw4r3g3d15IScnObjCallbackFv
	.4byte ExecCallback_CALC_WORLD__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte ExecCallback_CALC_MAT__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte ExecCallback_CALC_VIEW__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte func_803F7C30
	.4byte func_803F7C34
	.4byte lbl_80666200
	.4byte 0
	.4byte __dt__Q34nw4r3g3d18ICalcWorldCallbackFv
	.4byte ExecCallbackA__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r3g3d12ChrAnmResultQ34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld
	.4byte ExecCallbackB__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r3g3d13WorldMtxManipQ34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld
	.4byte ExecCallbackC__Q34nw4r3g3d18ICalcWorldCallbackFPQ34nw4r4math5MTX34Q34nw4r3g3d6ResMdlPQ34nw4r3g3d16FuncObjCalcWorld


.global lbl_80571850
lbl_80571850:
	.asciz "NW4R:Pointer Error\nfunc(=%p) is not valid pointer."
	.balign 4


.global lbl_80571884
lbl_80571884:
	.asciz "g3d_anmobj.h"
	.balign 4


.global lbl_80571894
lbl_80571894:
	.asciz "%s::%s: Object not valid."
	.balign 4


.global lbl_805718B0
lbl_805718B0:
	.asciz "g3d_resmat_ac.h"


.global lbl_805718C0
lbl_805718C0:
	.asciz "NW4R:Failed assertion !((u32)p & 0x1f)"
	.balign 4


.global lbl_805718E8
lbl_805718E8:
	.asciz "g3d_resmat_ac.h"


.global lbl_805718F8
lbl_805718F8:
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0


.global lbl_80571918
lbl_80571918:
	.asciz "g3d_restev_ac.h"


.global lbl_80571928
lbl_80571928:
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0


.global lbl_80571948
lbl_80571948:
	.asciz "g3d_resmdl_ac.h"


.global lbl_80571958
lbl_80571958:
	.asciz "%s::%s: Object not valid."
	.balign 4
	.4byte 0


.global lbl_80571978
lbl_80571978:
	.asciz "g3d_resmdl_ac.h"


.global lbl_80571988
lbl_80571988:
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4


.global lbl_805719B0
lbl_805719B0:
	.asciz "g3d_resmdl_ac.h"


.global lbl_805719C0
lbl_805719C0:
	.asciz "%s::%s: Object not valid."
	.balign 4


.global lbl_805719DC
lbl_805719DC:
	.asciz "g3d_resnode_ac.h"
	.balign 4


.global lbl_805719F0
lbl_805719F0:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_80571A10
lbl_80571A10:
	.asciz "g3d_resnode_ac.h"
	.balign 4
	.4byte 0
	.asciz "NW4R:Failed assertion IsValid()"
	.asciz "g3d_resnode_ac.h"
	.balign 4
	.asciz "ResUserData"
	.asciz "%s::%s: Object not valid."
	.balign 4
	.asciz "g3d_resuser_ac.h"
	.balign 4
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4
	.asciz "g3d_resuser_ac.h"
	.balign 4
	.4byte 0
	.asciz "ResUserDataItem"
	.asciz "%s::%s: Object not valid."
	.balign 4
	.asciz "g3d_resuser_ac.h"
	.balign 4
	.asciz "%s::%s: Object not valid."
	.balign 4
	.asciz "g3d_resuser_ac.h"
	.balign 4
	.asciz "NW4R:Failed assertion GetValueType() == ResUserDataItemData::S32"
	.balign 4
	.asciz "g3d_resuser_ac.h"
	.balign 4
	.asciz "NW4R:Failed assertion !((u32)p & 0x1f)"
	.balign 4
	.asciz "g3d_resfile_ac.h"
	.balign 4
	.4byte 0


.global lbl_80571BE0
lbl_80571BE0:
	.asciz "idx is out of bounds(%d)\n%d <= idx <= %d not satisfied."


.global lbl_80571C18
lbl_80571C18:
	.asciz "g3d_resdict_ac.h"
	.balign 4
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4
	.asciz "g3d_resdict_ac.h"
	.balign 4

.global lbl_80571C68
lbl_80571C68:
	.asciz "%s::%s: Object not valid."
	.balign 4

.global lbl_80571C84
lbl_80571C84:
	.asciz "g3d_resdict_ac.h"
	.balign 4
	.asciz "FSqrt: Input is out of the domain."
	.balign 4
	.asciz "arithmetic.h"
	.balign 4
	.4byte 0


.global __vt__CScnItemPool
__vt__CScnItemPool:
	# ROM: 0x56DDD0
	.4byte CScnItemPool_RTTI
	.4byte 0
	.4byte func_8048C218
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte CScnItemPool_RTTI
	.4byte 0xFFFFFFFC
	.4byte func_8048D01C
	.4byte func_80166630
	.4byte func_8048D014
	.4byte func_80448A40
	.4byte func_8048CF58

.global lbl_80571D74
lbl_80571D74:
	.4byte CDeviceVICb_RTTI
	.4byte 0x00000004
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_CScnItem
__vt__reslist_CScnItem:
	# ROM: 0x56DE88
	.4byte reslist_CScnItem_RTTI
	.4byte 0
	.4byte func_8048C034

.global lbl_80571D94
lbl_80571D94:
	.4byte _reslist_base_CScnItem_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CScnItem
__vt___reslist_base_CScnItem:
	# ROM: 0x56DEA0
	.4byte _reslist_base_CScnItem_RTTI
	.4byte 0
	.4byte func_8048BF80
	.4byte 0


.global __vt__CScnLightMan
__vt__CScnLightMan:
	# ROM: 0x56DEB0
	.4byte CScnLightMan_RTTI
	.4byte 0
	.4byte func_8048D0E4
	.4byte 0


.global lbl_80571DC0
lbl_80571DC0:
	# ROM: 0x56DEC0
	.4byte lbl_8066D118
	.4byte lbl_8066D120
	.4byte lbl_8066D128
	.4byte lbl_8066D130
	.4byte lbl_8066D138
	.4byte lbl_8066D140
	.4byte lbl_8066D148
	.4byte 0


.global __vt__CScnMaruShadowNw4r
__vt__CScnMaruShadowNw4r:
	# ROM: 0x56DEE0
	.4byte CScnMaruShadowNw4r_RTTI
	.4byte 0
	.4byte func_8048E67C
	.4byte func_8048EA9C
	.4byte func_8048D500
	.4byte func_8048DB58
	.4byte func_8048EA74
	.4byte func_8048EA48


.global __vt__CScnMem
__vt__CScnMem:
	# ROM: 0x56DF00
	.4byte CScnMem_RTTI
	.4byte 0
	.4byte func_8048EACC
	.4byte 0


.global __vt__CScnNw4r
__vt__CScnNw4r:
	# ROM: 0x56DF10
	.4byte CScnNw4r_RTTI
	.4byte 0
	.4byte func_8048EBBC
	.4byte func_80446734
	.4byte func_80496580
	.4byte func_80496584
	.4byte func_804967B0
	.4byte func_8049683C
	.4byte func_80043F20
	.4byte CScnNw4r_RTTI
	.4byte 0xFFFFFFAC
	.4byte func_8048ED1C
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_8048ED14
	.4byte func_8048ED0C
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80496970
	.4byte func_8049695C

.global lbl_80571EC4
lbl_80571EC4:
	.4byte IWorkEvent_RTTI
	.4byte 0x00000054
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte CTTask_CScn_RTTI
	.4byte 0
	.4byte CScn_RTTI
	.4byte 0
	.4byte 0

.global lbl_80571EF8
lbl_80571EF8:
	.4byte IWorkEvent_RTTI
	.4byte 0x00000054
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte CTTask_CScn_RTTI
	.4byte 0
	.4byte 0

.global lbl_80571F24
lbl_80571F24:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte 0


.global lbl_80571F40
lbl_80571F40:
	.asciz "NW4R:Failed assertion idx < mNumScnObj"
	.balign 4


.global lbl_80571F68
lbl_80571F68:
	.asciz "g3d_scnobj.h"
	.balign 4


.global __vt__CScnRoot
__vt__CScnRoot:
	# ROM: 0x56E078
	.4byte CScnRoot_RTTI
	.4byte 0
	.4byte func_8048ED40
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_8048EDE0
	.4byte func_8048EDD8
	.4byte func_8048EDD0
	.4byte 0


.global __vt__CScnRootNw4r
__vt__CScnRootNw4r:
	# ROM: 0x56E0B0
	.4byte CScnRootNw4r_RTTI
	.4byte 0
	.4byte func_8048F338
	.4byte func_8048F5C8
	.4byte func_8048F4D0
	.4byte func_8048F8E8
	.4byte func_8048F994
	.4byte func_8048FC68
	.4byte func_8048FF90
	.4byte func_8048FFBC
	.4byte func_8048F2F0
	.4byte func_804871A8
	.4byte func_80490040
	.4byte func_80490038
	.4byte CScnRootNw4r_RTTI
	.4byte 0xFFFFFFF4
	.4byte func_80490090
	.4byte func_80490088
	.4byte ExecCallback_CALC_MAT__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte ExecCallback_CALC_VIEW__Q34nw4r3g3d15IScnObjCallbackFQ44nw4r3g3d6ScnObj6TimingPQ34nw4r3g3d6ScnObjUlPv
	.4byte func_803F7C30
	.4byte func_803F7C34
	.4byte func_8048FED8

.global lbl_8057200C
lbl_8057200C:
	.4byte CScnRoot_RTTI
	.4byte 0
	.4byte 0


.global __vt__CScnTexWorkMan
__vt__CScnTexWorkMan:
	# ROM: 0x56E118
	.4byte CScnTexWorkMan_RTTI
	.4byte 0
	.4byte func_80490178
	.4byte func_80166630
	.4byte func_80490310
	.4byte func_80448A40

.global lbl_80572030
lbl_80572030:
	.4byte CDeviceVICb_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80572040
lbl_80572040:
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4


.global lbl_80572068
lbl_80572068:
	.asciz "g3d_resnode_ac.h"
	.balign 4


.global lbl_8057207C
lbl_8057207C:
	.asciz "%s::%s: Object not valid."
	.balign 4


.global lbl_80572098
lbl_80572098:
	.asciz "g3d_resnode_ac.h"
	.balign 4
	.4byte 0


.global __vt__CScnVirtualLight
__vt__CScnVirtualLight:
	# ROM: 0x56E1B0
	.4byte CScnVirtualLight_RTTI
	.4byte 0
	.4byte func_80492298
	.4byte 0


.global __vt__CVirtualLightAmb
__vt__CVirtualLightAmb:
	# ROM: 0x56E1C0
	.4byte CVirtualLightAmb_RTTI
	.4byte 0
	.4byte func_804946BC
	.4byte func_804947EC
	.4byte func_8049488C

.global lbl_805720D4
lbl_805720D4:
	.4byte CVirtualLightObj_RTTI
	.4byte 0
	.4byte 0


.global __vt__CVirtualLightDir
__vt__CVirtualLightDir:
	# ROM: 0x56E1E0
	.4byte CVirtualLightDir_RTTI
	.4byte 0
	.4byte func_80494758
	.4byte func_804947EC
	.4byte func_8049488C

.global lbl_805720F4
lbl_805720F4:
	.4byte CVirtualLightObj_RTTI
	.4byte 0
	.4byte 0


.global __vt__CVirtualLightObj
__vt__CVirtualLightObj:
	# ROM: 0x56E200
	.4byte CVirtualLightObj_RTTI
	.4byte 0
	.4byte func_80492980
	.4byte func_804947EC
	.4byte func_8049488C
	.4byte 0


.global __vt__CScn
__vt__CScn:
	# ROM: 0x56E218
	.4byte CScn_RTTI
	.4byte 0
	.4byte func_80495DB8
	.4byte func_80446734
	.4byte func_80496580
	.4byte func_80496584
	.4byte func_804967B0
	.4byte func_8049683C
	.4byte func_80043F20
	.4byte CScn_RTTI
	.4byte 0xFFFFFFAC
	.4byte func_80496B04
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_8048ED14
	.4byte func_8048ED0C
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_80496970
	.4byte func_8049695C


.global __vt__CTTask_CScn
__vt__CTTask_CScn:
	# ROM: 0x56E2CC
	.4byte CTTask_CScn_RTTI
	.4byte 0
	.4byte func_80495D60
	.4byte func_80446734
	.4byte 0
	.4byte 0
	.4byte func_80496A74
	.4byte func_80496ABC
	.4byte func_80043F20


.global lbl_805721F0
lbl_805721F0:
	.asciz "ResAnmChr"
	.balign 4


.global lbl_805721FC
lbl_805721FC:
	.asciz "%s::%s: Object not valid."
	.balign 4


.global lbl_80572218
lbl_80572218:
	.asciz "g3d_resanmchr_ac.h"
	.balign 4
	.4byte 0


.global __vt__CScnBlend
__vt__CScnBlend:
	# ROM: 0x56E330
	.4byte CScnBlend_RTTI
	.4byte 0
	.4byte func_80498D40
	.4byte func_8049C868
	.4byte func_80498DE8

.global lbl_80572244
lbl_80572244:
	.4byte CScnFilter_RTTI
	.4byte 0
	.4byte 0


.global lbl_80572250
lbl_80572250:
	# ROM: 0x56E350
	.4byte lbl_80666318
	.4byte 0
	.4byte lbl_80666318
	.4byte 0xFFFFFFB8
	.4byte lbl_804996E0
	.4byte func_8049C868
	.4byte func_804996D8
	.4byte func_80499224
	.4byte func_8049928C

.global lbl_80572274
lbl_80572274:
	.4byte CScnFilter_RTTI
	.4byte 0x00000048
	.4byte lbl_80666320
	.4byte 0
	.4byte 0


.global __vt__CScnCameraMan
__vt__CScnCameraMan:
	# ROM: 0x56E388
	.4byte CScnCameraMan_RTTI
	.4byte 0
	.4byte func_8049AE10
	.4byte func_8049B410
	.4byte func_80039E20
	.4byte func_8049B348
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40

.global lbl_80572310
lbl_80572310:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScnEffectActNw4r
__vt__CScnEffectActNw4r:
	# ROM: 0x56E420
	.4byte CScnEffectActNw4r_RTTI
	.4byte 0
	.4byte func_8049B9AC
	.4byte func_8049BEA4
	.4byte func_8049BA44
	.4byte func_8049BEAC
	.4byte func_8049BEB4
	.4byte func_8049BEBC
	.4byte func_8049BED0
	.4byte func_8049BEE4
	.4byte func_8049BEEC
	.4byte func_8049BF0C
	.4byte func_8049BF34
	.4byte func_8049BF5C
	.4byte func_8049BF84
	.4byte func_8049BFAC
	.4byte func_8049C060
	.4byte func_8049C18C
	.4byte func_8049C244
	.4byte func_8049C430
	.4byte func_8049C314
	.4byte func_8049C394
	.4byte func_8049C39C
	.4byte func_8049C3A4
	.4byte func_8049C3AC
	.4byte func_8049C420

.global lbl_80572388
lbl_80572388:
	.4byte lbl_80666348
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScnFadeMan
__vt__CScnFadeMan:
	# ROM: 0x56E498
	.4byte CScnFadeMan_RTTI
	.4byte 0
	.4byte func_8049C4CC
	.4byte func_8049C678


.global __vt__CScnFilter
__vt__CScnFilter:
	# ROM: 0x56E4A8
	.4byte CScnFilter_RTTI
	.4byte 0
	.4byte func_8049C828
	.4byte func_8049C868
	.4byte 0
	.4byte 0


.global __vt__CScnFilterMan
__vt__CScnFilterMan:
	# ROM: 0x56E4C0
	.4byte CScnFilterMan_RTTI
	.4byte 0
	.4byte func_8049D090
	.4byte func_8049DD60


.global __vt__reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter
__vt__reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter:
	# ROM: 0x56E4D0
	.4byte reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI
	.4byte 0
	.4byte func_8049CDBC

.global lbl_805723DC
lbl_805723DC:
	.4byte _reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter
__vt___reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter:
	# ROM: 0x56E4E8
	.4byte _reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI
	.4byte 0
	.4byte func_8049CCA8


.global __vt__reslist_CScnFilter
__vt__reslist_CScnFilter:
	# ROM: 0x56E4F4
	.4byte reslist_CScnFilter_RTTI
	.4byte 0
	.4byte func_8049CB7C

.global lbl_80572400
lbl_80572400:
	.4byte _reslist_base_CScnFilter_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CScnFilter
__vt___reslist_base_CScnFilter:
	# ROM: 0x56E50C
	.4byte _reslist_base_CScnFilter_RTTI
	.4byte 0
	.4byte func_8049CA70


.global __vt__CScnFogMan
__vt__CScnFogMan:
	# ROM: 0x56E518
	.4byte CScnFogMan_RTTI
	.4byte 0
	.4byte func_8049DE28
	.4byte 0


.global lbl_80572428
lbl_80572428:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_80572448
lbl_80572448:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0


.global lbl_80572458
lbl_80572458:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_80572478
lbl_80572478:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0


.global lbl_80572488
lbl_80572488:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_805724A8
lbl_805724A8:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0


.global __vt__CScnFrame
__vt__CScnFrame:
	# ROM: 0x56E5B8
	.4byte CScnFrame_RTTI
	.4byte 0
	.4byte func_8049E3A8
	.4byte 0


.global __vt__CScnIdMan
__vt__CScnIdMan:
	# ROM: 0x56E5C8
	.4byte CScnIdMan_RTTI
	.4byte 0
	.4byte func_8049E4B4
	.4byte func_8049E570


.global __vt__CScnItemAnim
__vt__CScnItemAnim:
	# ROM: 0x56E5D8
	.4byte CScnItemAnim_RTTI
	.4byte 0
	.4byte func_8049E5DC
	.4byte func_8048228C
	.4byte func_80482048
	.4byte func_80482288
	.4byte func_8049E8B4
	.4byte func_8049E8BC

.global lbl_805724F8
lbl_805724F8:
	.4byte lbl_80664DD0
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CScnItemCamera
__vt__CScnItemCamera:
	# ROM: 0x56E608
	.4byte CScnItemCamera_RTTI
	.4byte 0
	.4byte func_8049EADC
	.4byte func_8049F9A4
	.4byte func_80482048
	.4byte func_8049F8E4
	.4byte func_8048204C
	.4byte func_80482040
	.4byte 0
	.4byte func_8049EBF0


.global lbl_80572530
lbl_80572530:
	# ROM: 0x56E630
	.4byte lbl_8066D3F0
	.4byte 0
	.4byte lbl_8066D3F8
	.4byte 0x00000001
	.4byte lbl_8066D400
	.4byte 0x00000001
	.4byte lbl_8066D408
	.4byte 0x00000001
	.4byte lbl_8066D410
	.4byte 0x00000001
	.4byte lbl_8066D418
	.4byte 0x00000001
	.4byte lbl_8066D420
	.4byte 0x00010001
	.4byte lbl_80527B90
	.4byte 0x00020001
	.4byte lbl_80527B9C
	.4byte 0x00010001
	.4byte lbl_80527BA8
	.4byte 0x00020001
	.4byte lbl_80527BB4
	.4byte 0x00010001
	.4byte lbl_80527BC0
	.4byte 0x00020001
	.4byte lbl_80527BD0
	.4byte 0x00010001
	.4byte lbl_80527BDC
	.4byte 0x00020001
	.4byte lbl_8066D428
	.4byte 0x00010001
	.4byte lbl_8066D42C
	.4byte 0x0001FFFF
	.4byte lbl_8066D430
	.4byte 0x00010001
	.4byte lbl_8066D438
	.4byte 0x0001FFFF
	.4byte lbl_80527BE8
	.4byte 0x0001FFFF
	.4byte lbl_8066D440
	.4byte 0x00000001
	.4byte lbl_8066D448
	.4byte 0x00000001
	.4byte lbl_8066D450
	.4byte 0x00000001
	.4byte lbl_8066D458
	.4byte 0x00000001
	.4byte lbl_8066D460
	.4byte 0x0000FFFF
	.4byte lbl_8066D468
	.4byte 0x0000FFFF
	.4byte lbl_8066D470
	.4byte 0x0000FFFF
	.4byte lbl_8066D478
	.4byte 0x0000FFFF
	.4byte lbl_80527BF4
	.4byte 0x00000001
	.4byte lbl_80527C00
	.4byte 0x00000001
	.4byte lbl_80527C0C
	.4byte 0x00000001
	.4byte lbl_80527C18
	.4byte 0x00000001
	.4byte lbl_80527C24
	.4byte 0x0000FFFF
	.4byte lbl_80527C30
	.4byte 0x0000FFFF
	.4byte lbl_80527C3C
	.4byte 0x0000FFFF
	.4byte lbl_80527C48
	.4byte 0x0000FFFF
	.4byte lbl_80527C54
	.4byte 0x00010001
	.4byte lbl_80527C60
	.4byte 0x00020001
	.4byte lbl_80527C6C
	.4byte 0x0001FFFF
	.4byte lbl_80527C78
	.4byte 0x0002FFFF
	.4byte lbl_8066D480
	.4byte 0x0000FFFF
	.4byte lbl_8066D488
	.4byte 0x0000FFFD
	.4byte lbl_8066D490
	.4byte 0x00000001
	.4byte lbl_8066D498
	.4byte 0x00000001
	.4byte lbl_80527C84
	.4byte 0x00000001
	.4byte lbl_8066D4A0
	.4byte 0x00010001
	.4byte lbl_80527C90
	.4byte 0x00020001
	.4byte lbl_80527C9C
	.4byte 0x00010001
	.4byte lbl_80527CA8
	.4byte 0x00020001
	.4byte lbl_80527CB4
	.4byte 0x00010001
	.4byte lbl_80527CC0
	.4byte 0x00020001
	.4byte lbl_8066D4A8
	.4byte 0
	.4byte lbl_8066D4B0
	.4byte 0x0000FFFF
	.4byte lbl_8066D4B4
	.4byte 0x0000FFFF
	.4byte lbl_8066D4BC
	.4byte 0x0000FFFF
	.4byte lbl_8066D4C0
	.4byte 0x0000FFFF
	.4byte lbl_8066D4C4
	.4byte 0x0000FFFF
	.4byte lbl_8066D4C8
	.4byte 0x0000FFFF
	.4byte lbl_8066D4CC
	.4byte 0x0000FFFF
	.4byte lbl_8066D4D0
	.4byte 0x0000FFFF
	.4byte lbl_8066D4D4
	.4byte 0x0000FFFF
	.4byte lbl_8066D4D8
	.4byte 0x0000FFFF
	.4byte lbl_8066D4E0
	.4byte 0x0000FFFF
	.4byte lbl_8066D4E8
	.4byte 0x0000FFFF
	.4byte lbl_8066D4EC
	.4byte 0x0000FFFF
	.4byte lbl_8066D4F0
	.4byte 0x0000FFFF
	.4byte lbl_8066D4F4
	.4byte 0x0000FFFF
	.4byte lbl_8066D4F8
	.4byte 0x0000FFFF
	.4byte lbl_8066D4FC
	.4byte 0x0000FFFF
	.4byte lbl_8066D500
	.4byte 0x0000FFFF
	.4byte lbl_8066D508
	.4byte 0x0000FFFF
	.4byte lbl_8066D510
	.4byte 0x00020000
	.4byte lbl_8066D514
	.4byte 0x0002FFFF
	.4byte lbl_8066D518
	.4byte 0x00010000
	.4byte lbl_8066D520
	.4byte 0x00020000
	.4byte lbl_80527CD0
	.4byte 0
	.4byte lbl_8066D528
	.4byte 0
	.4byte lbl_8066D52C
	.4byte 0
	.4byte lbl_8066D534
	.4byte 0x00010000
	.4byte lbl_80527CDC
	.4byte 0x00020000
	.4byte lbl_80527CE8
	.4byte 0x00010000
	.4byte lbl_80527CF4
	.4byte 0x00020000
	.4byte lbl_8066D53C
	.4byte 0x00010000
	.4byte lbl_80527D00
	.4byte 0x00020000
	.4byte lbl_8066D544
	.4byte 0x00010000
	.4byte lbl_80527D0C
	.4byte 0x00020000
	.4byte lbl_8066D54C
	.4byte 0x0001FFFF
	.4byte lbl_80527D18
	.4byte 0x0002FFFF
	.4byte lbl_8066D554
	.4byte 0x00010000
	.4byte lbl_8066D55C
	.4byte 0x00020000
	.4byte lbl_8066D564
	.4byte 0
	.4byte lbl_8066D56C
	.4byte 0
	.4byte lbl_8066D574
	.4byte 0x00010000
	.4byte lbl_8066D57C
	.4byte 0
	.4byte lbl_8066D580
	.4byte 0
	.4byte lbl_8066D584
	.4byte 0
	.4byte lbl_8066D58C
	.4byte 0


.global lbl_80572830
lbl_80572830:
	# ROM: 0x56E930
	.4byte lbl_8066D590
	.4byte lbl_8066D594
	.4byte lbl_8066D59C
	.4byte lbl_8066D5A4
	.4byte lbl_8066D5A8
	.4byte lbl_8066D5B0
	.4byte lbl_8066D5B8
	.4byte lbl_80527D24
	.4byte lbl_8066D5C0
	.4byte lbl_8066D5C8
	.4byte lbl_8066D5CC


.global lbl_8057285C
lbl_8057285C:
	# ROM: 0x56E95C
	.4byte lbl_804A40D8
	.4byte lbl_804A40E0
	.4byte lbl_804A40E8
	.4byte lbl_804A40F0
	.4byte lbl_804A4108
	.4byte lbl_804A4128
	.4byte lbl_804A4130
	.4byte lbl_804A4138
	.4byte lbl_804A4140


.global lbl_80572880
lbl_80572880:
	# ROM: 0x56E980
	.4byte func_804A1CD0
	.4byte func_804A1CFC
	.4byte func_804A1CFC
	.4byte func_804A1CFC
	.4byte func_804A1CFC
	.4byte func_804A1CFC
	.4byte func_804A1D50
	.4byte func_804A1D50
	.4byte func_804A1EF8
	.4byte func_804A1EF8
	.4byte func_804A20BC
	.4byte func_804A20BC
	.4byte func_804A2280
	.4byte func_804A2280
	.4byte func_804A24A4
	.4byte func_804A2674
	.4byte func_804A2844
	.4byte func_804A2A18
	.4byte func_804A2BE8
	.4byte func_804A2DCC
	.4byte func_804A2DCC
	.4byte func_804A2DCC
	.4byte func_804A2DCC
	.4byte func_804A2E40
	.4byte func_804A2E40
	.4byte func_804A2E40
	.4byte func_804A2E40
	.4byte func_804A2EB0
	.4byte func_804A2EB0
	.4byte func_804A2EB0
	.4byte func_804A2EB0
	.4byte func_804A2F2C
	.4byte func_804A2F2C
	.4byte func_804A2F2C
	.4byte func_804A2F2C
	.4byte func_804A2FA8
	.4byte func_804A2FA8
	.4byte func_804A3170
	.4byte func_804A3170
	.4byte func_804A3430
	.4byte func_804A36D8
	.4byte func_804A377C
	.4byte func_804A37C4
	.4byte func_804A380C
	.4byte func_804A3854
	.4byte func_804A3854
	.4byte func_804A3A04
	.4byte func_804A3A04
	.4byte func_804A3BE4
	.4byte func_804A3BE4
	.4byte func_804A3DC4
	.4byte func_804A3E8C
	.4byte func_804A3F38
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A4360
	.4byte func_804A47DC
	.4byte func_804A4968
	.4byte func_804A4B9C
	.4byte func_804A4B9C
	.4byte func_804A4F9C
	.4byte func_804A51D4
	.4byte func_804A52BC
	.4byte func_804A52E8
	.4byte func_804A52E8
	.4byte func_804A55C8
	.4byte func_804A55C8
	.4byte func_804A57C8
	.4byte func_804A57C8
	.4byte func_804A5A9C
	.4byte func_804A5A9C
	.4byte func_804A5E14
	.4byte func_804A5E14
	.4byte func_804A6198
	.4byte func_804A6198
	.4byte func_804A6668
	.4byte func_804A6714
	.4byte func_804A6774
	.4byte func_804A6A30
	.4byte func_804A6ADC
	.4byte func_804A6B88
	.4byte func_804A6B90


.global lbl_80572A00
lbl_80572A00:
	# ROM: 0x56EB00
	.4byte lbl_804A6DC0
	.4byte func_804A6E20
	.4byte func_804A70F8
	.4byte func_804A732C
	.4byte func_804A73A0
	.4byte func_804A763C
	.4byte func_804A7834
	.4byte 0


.global lbl_80572A20
lbl_80572A20:
	# ROM: 0x56EB20
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A7F50
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A8230
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A8850
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A8BE0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A8CB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A98C4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AA4F4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AA504
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A8BE0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804A8CB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AA870
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AAA98
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AAD90
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AB524
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AB538
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABA08
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABA68
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABAF0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABBF4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC61C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABCA4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABD0C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABDD4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABE84
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC61C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804ABF08
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC020
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC198
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC3B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC61C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC4E4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC4F4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC57C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC5D8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804AC61C
	.4byte 0


.global __vt__CColiObjCall
__vt__CColiObjCall:
	# ROM: 0x56ECC8
	.4byte CColiObjCall_RTTI
	.4byte 0
	.4byte func_804B24A4

.global lbl_80572BD4
lbl_80572BD4:
	.4byte CColiProc_RTTI
	.4byte 0
	.4byte 0


.global __vt__CColiProc
__vt__CColiProc:
	# ROM: 0x56ECE0
	.4byte CColiProc_RTTI
	.4byte 0
	.4byte func_804A822C
	.4byte 0


.global __vt__CColiResCall
__vt__CColiResCall:
	# ROM: 0x56ECF0
	.4byte CColiResCall_RTTI
	.4byte 0
	.4byte func_804B2FF0

.global lbl_80572BFC
lbl_80572BFC:
	.4byte CColiProc_RTTI
	.4byte 0
	.4byte 0


.global lbl_80572C08
lbl_80572C08:
	# ROM: 0x56ED08
	.4byte 0x00040010
	.4byte 0x000C0018
	.4byte 0x00300008
	.4byte 0x003C0014
	.4byte 0x00180000


.global lbl_80572C1C
lbl_80572C1C:
	# ROM: 0x56ED1C
	.4byte 0x00140014
	.4byte 0x001C001C
	.4byte 0x00340034
	.4byte 0x00740068
	.4byte 0


.global lbl_80572C30
lbl_80572C30:
	# ROM: 0x56ED30
	.4byte 0
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00030004
	.4byte 0

.global lbl_80572C44
lbl_80572C44:
	# ROM: 0x56ED44
	.4byte func_804B30CC
	.4byte func_804B30CC
	.4byte func_804B30CC
	.4byte func_804B30CC
	.4byte func_804B30CC
	.4byte func_804B31EC
	.4byte func_804B30CC
	.4byte func_804B30CC
	.4byte func_804B33C8


.global lbl_80572C68
lbl_80572C68:
	# ROM: 0x56ED68
	.4byte func_804B34F4
	.4byte func_804B3658
	.4byte func_804B37E4
	.4byte func_804B3970
	.4byte func_804B3B18
	.4byte func_804B3D1C
	.4byte func_804B3EA8
	.4byte func_804B4020
	.4byte func_804B41FC


.global lbl_80572C8C
lbl_80572C8C:
	# ROM: 0x56ED8C
	.4byte func_804B43B4
	.4byte func_804B43B4
	.4byte func_804B4478
	.4byte func_804B4478
	.4byte func_804B453C
	.4byte func_804B453C
	.4byte func_804B45E4
	.4byte func_804B46A8
	.4byte func_804B476C


.global __vt__CTaskColiManager
__vt__CTaskColiManager:
	# ROM: 0x56EDB0
	.4byte CTaskColiManager_RTTI
	.4byte 0
	.4byte func_804B4B78
	.4byte func_80446734
	.4byte func_804B4D50
	.4byte func_804B4D54
	.4byte func_804B4D58
	.4byte func_804B4E0C
	.4byte func_80043F20

.global lbl_80572CD4
lbl_80572CD4:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte CTTask_CTaskColiManager_RTTI
	.4byte 0
	.4byte 0


.global __vt__CTTask_CTaskColiManager
__vt__CTTask_CTaskColiManager:
	# ROM: 0x56EDF8
	.4byte CTTask_CTaskColiManager_RTTI
	.4byte 0
	.4byte func_804B4B20
	.4byte func_80446734
	.4byte 0
	.4byte 0
	.4byte func_804B58FC
	.4byte func_804B5944
	.4byte func_80043F20

.global lbl_80572D1C
lbl_80572D1C:
	.4byte CDoubleListNode_RTTI
	.4byte 0
	.4byte CChildListNode_RTTI
	.4byte 0
	.4byte CProcess_RTTI
	.4byte 0
	.4byte 0


.global __vt__CColiManCall
__vt__CColiManCall:
	# ROM: 0x56EE38
	.4byte CColiManCall_RTTI
	.4byte 0
	.4byte func_804B59C8
	
.global lbl_80572D44
lbl_80572D44:
	.4byte CColiProc_RTTI
	.4byte 0
	.4byte 0

.global lbl_80572D50
lbl_80572D50:
	# ROM: 0x56EE50
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5B34
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B61F8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6634
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5B38
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B61FC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7AC8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6A3C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5BB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6364
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6728
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6728
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6A3C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5C58
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6418
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6728
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6728
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6A3C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5CEC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B64CC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7044
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B684C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5BB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6638
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B684C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6D30
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6C48
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6C48
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5CEC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B64CC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7074
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B684C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5BB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B684C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6D30
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6C48
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6C48
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5DE8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B66B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B62B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5DE8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B66B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6A3C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte lbl_804B6974
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5E68
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6580
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6954
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6634
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6F58
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6954
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7A00
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7944
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B5BB0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B6C48
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B684C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804B7044
	.4byte 0

.global lbl_80573138
lbl_80573138:
	.4byte lbl_804BCBE0
	.4byte lbl_804BCA9C
	.4byte lbl_804BCB28
	.4byte lbl_804BCBE0
	.4byte lbl_804BCBE0
	.4byte lbl_804BCAC4
	.4byte lbl_804BCAD8
	.4byte lbl_804BCAEC
	.4byte lbl_804BCB00
	.4byte lbl_804BCBE0
	.4byte lbl_804BCB80
	.4byte lbl_804BCB3C
	.4byte lbl_804BCB58
	.4byte lbl_804BCB6C
	.4byte lbl_804BCBE0
	.4byte lbl_804BCBE0
	.4byte lbl_804BCB14
	.4byte lbl_804BCB9C
	.4byte lbl_804BCBB4
	.4byte lbl_804BCBC8


.global lbl_80573188
lbl_80573188:
	# ROM: 0x56F288
	.4byte 0x3F19999A
	.float 0.2
	.4byte 0x3E99999A
	.4byte 0x3DCCCCCD


.global __vt__CLight
__vt__CLight:
	# ROM: 0x56F298
	.4byte CLight_RTTI
	.4byte 0
	.4byte func_80492034
	.4byte 0


.global __vt__reslist_IScnEnvCtl
__vt__reslist_IScnEnvCtl:
	# ROM: 0x56F2A8
	.4byte reslist_IScnEnvCtl_RTTI
	.4byte 0
	.4byte func_804C0D90

.global lbl_805731B4
lbl_805731B4:
	.4byte _reslist_base_IScnEnvCtl_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_IScnEnvCtl
__vt___reslist_base_IScnEnvCtl:
	# ROM: 0x56F2C0
	.4byte _reslist_base_IScnEnvCtl_RTTI
	.4byte 0
	.4byte func_804C0CDC
	.4byte 0


.global lbl_805731D0
lbl_805731D0:
	.asciz "NW4R:Failed assertion IsValid()"


.global lbl_805731F0
lbl_805731F0:
	.asciz "g3d_fog.h"
	.balign 4
	.4byte 0


.global __vt__CScnEnvLgtCtrl
__vt__CScnEnvLgtCtrl:
	# ROM: 0x56F300
	.4byte CScnEnvLgtCtrl_RTTI
	.4byte 0
	.4byte func_804C306C
	.4byte func_804C30E8
	.4byte func_804C31C8
	.4byte func_804C6BA0
	.4byte func_804C6B98
	.4byte func_804C6B88
	.4byte func_804C6B90
	.4byte func_804C6B6C
	.4byte func_804C6B64
	.4byte func_804C33F0
	.4byte func_804C3404
	.4byte func_804C4E04
	.4byte func_804C5198
	.4byte func_804C51D4
	.4byte func_804C5210
	.4byte func_804C526C
	.4byte func_804C5380
	.4byte func_804C54D4
	.4byte func_804C5628
	.4byte func_804C58D8
	.4byte func_804C5990
	.4byte func_804C5A48
	.4byte func_804C5B00
	.4byte func_804C6B44
	.4byte func_804C6B1C
	.4byte func_804C6AF4
	.4byte func_804C5C08
	.4byte func_804C5C6C
	.4byte func_804C5D7C
	.4byte func_804C6AE8
	.4byte func_804C6ADC
	.4byte func_804C5DA0
	.4byte func_804C5E04
	.4byte func_804C5E9C
	.4byte func_804C5F6C
	.4byte func_804C5FB0
	.4byte func_804C6010
	.4byte func_804C6054

.global lbl_805732A0
lbl_805732A0:
	.4byte lbl_80666430
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_805732B0
lbl_805732B0:
	# ROM: 0x56F3B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7564
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7578
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C758C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75A0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75B4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75BC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75C4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75CC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75E0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C75F4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7608
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7610
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7618
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7620
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C763C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7658
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7674
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C767C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7684
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C768C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7694
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C769C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C76A4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C76AC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C76C8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C76E4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7700
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C771C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7738
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7754
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C775C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7764
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C776C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7790
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_804C7880
	.4byte 0


.global lbl_80573458
lbl_80573458:
	# ROM: 0x56F558
	.4byte lbl_804CE564
	.4byte lbl_804CE564
	.4byte lbl_804CE580
	.4byte lbl_804CE580
	.4byte lbl_804CE598
	.4byte lbl_804CE694
	.4byte lbl_804CE564
	.4byte lbl_804CE564
	.4byte lbl_804CE580
	.4byte lbl_804CE580
	.4byte lbl_804CE598
	.4byte 0


.global __vt__CETrail
__vt__CETrail:
	# ROM: 0x56F588
	.4byte CETrail_RTTI
	.4byte 0
	.4byte func_804D728C


.global __vt__reslist_CETrail_POINT
__vt__reslist_CETrail_POINT:
	# ROM: 0x56F594
	.4byte reslist_CETrail_POINT_RTTI
	.4byte 0
	.4byte func_804D71CC

.global lbl_805734A0
lbl_805734A0:
	.4byte _reslist_base_CETrail_POINT_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CETrail_POINT
__vt___reslist_base_CETrail_POINT:
	# ROM: 0x56F5AC
	.4byte _reslist_base_CETrail_POINT_RTTI
	.4byte 0
	.4byte func_804D7110


.global __vt__CWorkSystemCache
__vt__CWorkSystemCache:
	# ROM: 0x56F5B8
	.4byte CWorkSystemCache_RTTI
	.4byte 0
	.4byte func_804D8F48
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_804D9064
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804D910C
	.4byte func_804D9110
	.4byte func_80039E30

.global lbl_80573558
lbl_80573558:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_CCacheItem
__vt__reslist_CCacheItem:
	# ROM: 0x56F66C
	.4byte reslist_CCacheItem_RTTI
	.4byte 0
	.4byte func_804D8EF8

.global lbl_80573578
lbl_80573578:
	.4byte _reslist_base_CCacheItem_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CCacheItem
__vt___reslist_base_CCacheItem:
	# ROM: 0x56F684
	.4byte _reslist_base_CCacheItem_RTTI
	.4byte 0
	.4byte func_804D8E4C


.global __vt__CNand
__vt__CNand:
	# ROM: 0x56F690
	.4byte CNand_RTTI
	.4byte 0
	.4byte func_804DA0B8
	.4byte 0


.global __vt__CNRequest
__vt__CNRequest:
	# ROM: 0x56F6A0
	.4byte CNRequest_RTTI
	.4byte 0
	.4byte func_804DA114
	.4byte 0


.global __vt__CNReqtaskSave
__vt__CNReqtaskSave:
	# ROM: 0x56F6B0
	.4byte CNReqtaskSave_RTTI
	.4byte 0
	.4byte func_804DAD38
	.4byte func_804DA4CC

.global lbl_805735C0
lbl_805735C0:
	.4byte lbl_80666490
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CNReqtaskLoad
__vt__CNReqtaskLoad:
	# ROM: 0x56F6D0
	.4byte CNReqtaskLoad_RTTI
	.4byte 0
	.4byte func_804DAFB8
	.4byte func_804DA4CC

.global lbl_805735E0
lbl_805735E0:
	.4byte lbl_80666490
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CNReqtaskReaddir
__vt__CNReqtaskReaddir:
	# ROM: 0x56F6F0
	.4byte CNReqtaskReaddir_RTTI
	.4byte 0
	.4byte func_804DB114
	.4byte func_804DA4CC

.global lbl_80573600
lbl_80573600:
	.4byte lbl_80666490
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CNReqtaskRemove
__vt__CNReqtaskRemove:
	# ROM: 0x56F710
	.4byte CNReqtaskRemove_RTTI
	.4byte 0
	.4byte func_804DB278
	.4byte func_804DA4CC

.global lbl_80573620
lbl_80573620:
	.4byte lbl_80666490
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CNReqtaskCheck
__vt__CNReqtaskCheck:
	# ROM: 0x56F730
	.4byte CNReqtaskCheck_RTTI
	.4byte 0
	.4byte func_804DB364
	.4byte func_804DA4CC

.global lbl_80573640
lbl_80573640:
	.4byte lbl_80666490
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CERandomizerSimple
__vt__CERandomizerSimple:
	# ROM: 0x56F750
	.4byte CERandomizerSimple_RTTI
	.4byte 0
	.4byte func_804DB50C
	.4byte func_804DB8B4
	.4byte func_804DB860
	.4byte func_804DB820

.global lbl_80573668
lbl_80573668:
	.4byte lbl_806664D8
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CERandomizer
__vt__CERandomizer:
	# ROM: 0x56F778
	.4byte CERandomizer_RTTI
	.4byte 0
	.4byte func_804DB97C
	.4byte func_804DB938
	.4byte func_804DB6DC
	.4byte func_804DB7E0

.global lbl_80573690
lbl_80573690:
	.4byte lbl_806664D8
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CWorkSystemPack
__vt__CWorkSystemPack:
	# ROM: 0x56F7A0
	.4byte CWorkSystemPack_RTTI
	.4byte 0
	.4byte func_804DDC58
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte func_804DE14C
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_804DE1C4
	.4byte func_804DE268
	.4byte func_80039E30

.global lbl_80573740
lbl_80573740:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte CWorkThread_RTTI
	.4byte 0
	.4byte 0


.global __vt__reslist_CArcItem
__vt__reslist_CArcItem:
	# ROM: 0x56F854
	.4byte reslist_CArcItem_RTTI
	.4byte 0
	.4byte func_804DDC08

.global lbl_80573760
lbl_80573760:
	.4byte _reslist_base_CArcItem_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CArcItem
__vt___reslist_base_CArcItem:
	# ROM: 0x56F86C
	.4byte _reslist_base_CArcItem_RTTI
	.4byte 0
	.4byte func_804DDB5C


.global __vt__reslist_CPackItem
__vt__reslist_CPackItem:
	# ROM: 0x56F878
	.4byte reslist_CPackItem_RTTI
	.4byte 0
	.4byte func_804DDB0C

.global lbl_80573784
lbl_80573784:
	.4byte _reslist_base_CPackItem_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CPackItem
__vt___reslist_base_CPackItem:
	# ROM: 0x56F890
	.4byte _reslist_base_CPackItem_RTTI
	.4byte 0
	.4byte func_804DDA60
	.4byte 0


.global __vt__CPackItem
__vt__CPackItem:
	# ROM: 0x56F8A0
	.4byte CPackItem_RTTI
	.4byte 0
	.4byte func_804DE450
	.4byte func_80039E28
	.4byte func_804DE990
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40


.global __vt__CArcItem
__vt__CArcItem:
	# ROM: 0x56F928
	.4byte CArcItem_RTTI
	.4byte 0
	.4byte func_804DEBB0
	.4byte func_80039E28
	.4byte func_804DED18
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40


.global __vt__CSchedule
__vt__CSchedule:
	# ROM: 0x56F9B0
	.4byte CSchedule_RTTI
	.4byte 0
	.4byte func_804E3340
	.4byte 0


.global __vt__ScheduleList
__vt__ScheduleList:
	# ROM: 0x56F9C0
	.4byte ScheduleList_RTTI
	.4byte 0
	.4byte func_804E44A0
	.4byte func_804E45F4
	.4byte func_804E4718
	.4byte func_804E479C
	.4byte func_804E4830
	.4byte func_804E498C
	.4byte func_804E4A20
	.4byte func_804E4AD4
	.4byte func_804E4B24
	.4byte func_804E4B48

.global lbl_805738F0
lbl_805738F0:
	.4byte lbl_80666540
	.4byte 0
	.4byte 0


.global __vt__reslist_CSchedule
__vt__reslist_CSchedule:
	# ROM: 0x56F9FC
	.4byte reslist_CSchedule_RTTI
	.4byte 0
	.4byte func_804E43E8

.global lbl_80573908
lbl_80573908:
	.4byte _reslist_base_CSchedule_RTTI
	.4byte 0
	.4byte 0


.global __vt___reslist_base_CSchedule
__vt___reslist_base_CSchedule:
	# ROM: 0x56FA14
	.4byte _reslist_base_CSchedule_RTTI
	.4byte 0
	.4byte func_804E4334


.global __vt__CMdlMaterial
__vt__CMdlMaterial:
	# ROM: 0x56FA20
	.4byte CMdlMaterial_RTTI
	.4byte 0
	.4byte func_804E5478

.global lbl_8057392C
lbl_8057392C:
	.asciz "%s::%s: Object not valid."
	.balign 4

.global lbl_80573948
lbl_80573948:
	.asciz "g3d_resmat_ac.h"

.global lbl_80573958
lbl_80573958:
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4

.global lbl_80573980
lbl_80573980:
	.asciz "g3d_resmat_ac.h"

.global lbl_80573990
lbl_80573990:
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4

.global lbl_805739B8
lbl_805739B8:
	.asciz "g3d_resmat_ac.h"

.global lbl_805739C8
lbl_805739C8:
	.asciz "NW4R:Failed assertion IsValid()"

.global lbl_805739E8
lbl_805739E8:
	.asciz "g3d_resmat_ac.h"


.global __vt__CMdlMouth
__vt__CMdlMouth:
	# ROM: 0x56FAF8
	.4byte CMdlMouth_RTTI
	.4byte 0
	.4byte func_804E658C
	.4byte 0


.global __vt__CMdlAnmUV
__vt__CMdlAnmUV:
	# ROM: 0x56FB08
	.4byte CMdlAnmUV_RTTI
	.4byte 0
	.4byte func_804E6C38
	.4byte 0


.global __vt__CMdlAnmEye
__vt__CMdlAnmEye:
	# ROM: 0x56FB18
	.4byte CMdlAnmEye_RTTI
	.4byte 0
	.4byte func_804E7578
	.4byte 0


.global __vt__CMdlLook
__vt__CMdlLook:
	# ROM: 0x56FB28
	.4byte CMdlLook_RTTI
	.4byte 0
	.4byte func_804E7AF8
	.4byte 0


.global lbl_80573A38
lbl_80573A38:
	# ROM: 0x56FB38
	.4byte lbl_8066DB60
	.4byte lbl_8066DB68
	.4byte lbl_8066DB70


.global __vt__CMdlDynamics
__vt__CMdlDynamics:
	# ROM: 0x56FB44
	.4byte CMdlDynamics_RTTI
	.4byte 0
	.4byte func_804E94F8


.global lbl_80573A50
lbl_80573A50:
	.asciz "NW4R:Pointer must not be NULL (mpData)"
	.balign 4


.global lbl_80573A78
lbl_80573A78:
	.asciz "g3d_rescommon_ac.h"
	.balign 4
	.4byte 0


.global lbl_80573A90
lbl_80573A90:
	# ROM: 0x56FB90
	.4byte lbl_804EE70C
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE774
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE7E0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE70C
	.4byte lbl_804EE70C
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE834
	.4byte lbl_804EE864
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE8D0
	.4byte lbl_804EE894
	.4byte lbl_804EE8B4

.global lbl_80573B00
lbl_80573B00:
	# ROM: 0x56FC00
	.4byte lbl_804EE94C
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EE984
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EE9C0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EE94C
	.4byte lbl_804EE94C
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EE9EC
	.4byte lbl_804EEA28
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEAA0
	.4byte lbl_804EEA64
	.4byte lbl_804EEA84


.global lbl_80573B70
lbl_80573B70:
	# ROM: 0x56FC70
	.4byte lbl_804F4E90
	.4byte lbl_804F4EC4
	.4byte lbl_804F4EEC
	.4byte lbl_804F4F10
	.4byte lbl_804F4F48
	.4byte lbl_804F4F50
	.4byte lbl_804F4F88
	.4byte lbl_804F4FAC
	.4byte lbl_804F4FD8
	.4byte lbl_804F5004
	.4byte lbl_804F5024
	.4byte lbl_804F5060


.global __vt__CNReqtaskSaveBanner
__vt__CNReqtaskSaveBanner:
	# ROM: 0x56FCA0
	.4byte CNReqtaskSaveBanner_RTTI
	.4byte 0
	.4byte func_804F4D90
	.4byte func_804F5080

.global lbl_80573BB0
lbl_80573BB0:
	.4byte lbl_80666490
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__CNBanner
__vt__CNBanner:
	# ROM: 0x56FCC0
	.4byte CNBanner_RTTI
	.4byte 0
	.4byte func_804F5224
	.4byte func_80039E28
	.4byte func_804F57E8
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40

.global lbl_80573C48
lbl_80573C48:
	.4byte IWorkEvent_RTTI
	.4byte 0
	.4byte 0
