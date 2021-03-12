att_dispatch_client_can_send_now = 0x00005b09;
att_dispatch_client_request_can_send_now_event = 0x00005b0f;
att_dispatch_register_client = 0x00005b15;
att_dispatch_register_server = 0x00005b29;
att_dispatch_server_can_send_now = 0x00005b3d;
att_dispatch_server_request_can_send_now_event = 0x00005b43;
att_emit_general_event = 0x00005bf5;
att_server_can_send_packet_now = 0x00006315;
att_server_get_mtu = 0x00006319;
att_server_indicate = 0x0000638d;
att_server_init = 0x00006411;
att_server_notify = 0x0000644d;
att_server_register_packet_handler = 0x00006535;
att_server_request_can_send_now_event = 0x00006541;
att_set_db = 0x0000655d;
att_set_read_callback = 0x00006571;
att_set_write_callback = 0x0000657d;
bd_addr_cmp = 0x000066c1;
bd_addr_copy = 0x000066c7;
bd_addr_to_str = 0x000066d1;
big_endian_read_16 = 0x00006709;
big_endian_read_32 = 0x00006711;
big_endian_store_16 = 0x00006725;
big_endian_store_32 = 0x00006731;
btstack_memory_pool_create = 0x0000699b;
btstack_memory_pool_free = 0x000069c5;
btstack_memory_pool_get = 0x00006a25;
btstack_push_user_msg = 0x00006a41;
char_for_nibble = 0x00006cb9;
eTaskConfirmSleepModeStatus = 0x00006f4d;
gap_add_dev_to_periodic_list = 0x0000763d;
gap_add_whitelist = 0x00007655;
gap_aes_encrypt = 0x00007669;
gap_clear_white_lists = 0x00007691;
gap_clr_adv_set = 0x000076a1;
gap_clr_periodic_adv_list = 0x000076b1;
gap_create_connection_cancel = 0x000076dd;
gap_default_periodic_adv_sync_transfer_param = 0x000076ed;
gap_disconnect = 0x00007705;
gap_disconnect_all = 0x00007731;
gap_ext_create_connection = 0x000077d9;
gap_get_connection_parameter_range = 0x0000789d;
gap_le_read_channel_map = 0x000078d9;
gap_periodic_adv_create_sync = 0x0000794d;
gap_periodic_adv_create_sync_cancel = 0x00007971;
gap_periodic_adv_set_info_transfer = 0x00007981;
gap_periodic_adv_sync_transfer = 0x00007999;
gap_periodic_adv_sync_transfer_param = 0x000079b1;
gap_periodic_adv_term_sync = 0x000079cd;
gap_read_antenna_info = 0x00007a61;
gap_read_periodic_adv_list_size = 0x00007a71;
gap_read_phy = 0x00007a81;
gap_read_remote_info = 0x00007a95;
gap_read_remote_used_features = 0x00007aa9;
gap_read_rssi = 0x00007abd;
gap_remove_whitelist = 0x00007ad1;
gap_rmv_adv_set = 0x00007b5d;
gap_rmv_dev_from_periodic_list = 0x00007b71;
gap_rx_test_v2 = 0x00007b89;
gap_rx_test_v3 = 0x00007ba1;
gap_set_adv_set_random_addr = 0x00007bf1;
gap_set_connection_cte_request_enable = 0x00007c3d;
gap_set_connection_cte_response_enable = 0x00007c59;
gap_set_connection_cte_rx_param = 0x00007c6d;
gap_set_connection_cte_tx_param = 0x00007cc9;
gap_set_connection_parameter_range = 0x00007d1d;
gap_set_connectionless_cte_tx_enable = 0x00007d35;
gap_set_connectionless_cte_tx_param = 0x00007d49;
gap_set_connectionless_iq_sampling_enable = 0x00007da9;
gap_set_def_phy = 0x00007e0d;
gap_set_ext_adv_data = 0x00007e25;
gap_set_ext_adv_enable = 0x00007e3d;
gap_set_ext_adv_para = 0x00007eb9;
gap_set_ext_scan_enable = 0x00007f99;
gap_set_ext_scan_para = 0x00007fb1;
gap_set_ext_scan_response_data = 0x00008059;
gap_set_host_channel_classification = 0x00008071;
gap_set_periodic_adv_data = 0x00008085;
gap_set_periodic_adv_enable = 0x000080f9;
gap_set_periodic_adv_para = 0x0000810d;
gap_set_periodic_adv_rx_enable = 0x00008125;
gap_set_phy = 0x00008139;
gap_set_random_device_address = 0x00008155;
gap_start_ccm = 0x000081b9;
gap_test_end = 0x000081ed;
gap_tx_test_v2 = 0x000081fd;
gap_tx_test_v3 = 0x00008215;
gap_update_connection_parameters = 0x0000823d;
gap_vendor_tx_continuous_wave = 0x00008261;
gatt_client_cancel_write = 0x00008771;
gatt_client_discover_characteristic_descriptors = 0x00008797;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x000087d7;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x00008827;
gatt_client_discover_characteristics_for_service = 0x00008877;
gatt_client_discover_primary_services = 0x000088ad;
gatt_client_discover_primary_services_by_uuid128 = 0x000088df;
gatt_client_discover_primary_services_by_uuid16 = 0x00008923;
gatt_client_execute_write = 0x0000895f;
gatt_client_find_included_services_for_service = 0x00008985;
gatt_client_get_mtu = 0x000089b3;
gatt_client_is_ready = 0x00008a5d;
gatt_client_listen_for_characteristic_value_updates = 0x00008a73;
gatt_client_prepare_write = 0x00008a97;
gatt_client_pts_suppress_mtu_exchange = 0x00008ad5;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008ae1;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x00008b0b;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008b11;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x00008b3f;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x00008b45;
gatt_client_read_multiple_characteristic_values = 0x00008b73;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008ba3;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008bd1;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x00008c1d;
gatt_client_register_handler = 0x00008c69;
gatt_client_reliable_write_long_value_of_characteristic = 0x00008c75;
gatt_client_signed_write_without_response = 0x000090a5;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00009169;
gatt_client_write_client_characteristic_configuration = 0x000091a3;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x000091f5;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00009205;
gatt_client_write_long_value_of_characteristic = 0x00009241;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00009251;
gatt_client_write_value_of_characteristic = 0x0000928d;
gatt_client_write_value_of_characteristic_without_response = 0x000092c3;
hci_add_event_handler = 0x0000a791;
hci_power_control = 0x0000af29;
hci_register_acl_packet_handler = 0x0000b0dd;
kv_commit = 0x0000b765;
kv_get = 0x0000b7bd;
kv_init = 0x0000b7d5;
kv_put = 0x0000b83d;
kv_remove = 0x0000b8b5;
kv_remove_all = 0x0000b8f1;
kv_value_modified = 0x0000b935;
kv_visit = 0x0000b939;
l2cap_can_send_fixed_channel_packet_now = 0x0000b9f9;
l2cap_can_send_packet_now = 0x0000b9fd;
l2cap_create_channel = 0x0000bbb5;
l2cap_disconnect = 0x0000bced;
l2cap_get_remote_mtu_for_local_cid = 0x0000bf61;
l2cap_init = 0x0000c3e1;
l2cap_le_send_flow_control_credit = 0x0000c429;
l2cap_max_le_mtu = 0x0000c671;
l2cap_max_mtu = 0x0000c675;
l2cap_next_local_cid = 0x0000c679;
l2cap_next_sig_id = 0x0000c689;
l2cap_register_fixed_channel = 0x0000c721;
l2cap_register_packet_handler = 0x0000c73d;
l2cap_register_service = 0x0000c749;
l2cap_request_can_send_fix_channel_now_event = 0x0000c831;
l2cap_request_can_send_now_event = 0x0000c855;
l2cap_request_connection_parameter_update = 0x0000c86f;
l2cap_require_security_level_2_for_outgoing_sdp = 0x0000c8a1;
l2cap_send = 0x0000cc65;
l2cap_send_connectionless = 0x0000ccdd;
l2cap_send_connectionless3 = 0x0000cd6d;
l2cap_send_echo_request = 0x0000ce05;
l2cap_send_signaling_le = 0x0000ce69;
l2cap_unregister_service = 0x0000cec1;
ll_ackable_packet_alloc = 0x0000d08f;
ll_ackable_packet_get_status = 0x0000d177;
ll_ackable_packet_run = 0x0000d1e9;
ll_ackable_packet_set_tx_data = 0x0000d291;
ll_free = 0x0000d2ab;
ll_hint_on_ce_len = 0x0000d2b5;
ll_malloc = 0x0000d2f1;
ll_query_timing_info = 0x0000d429;
ll_raw_packet_alloc = 0x0000d475;
ll_raw_packet_free = 0x0000d529;
ll_raw_packet_get_iq_samples = 0x0000d553;
ll_raw_packet_get_rx_data = 0x0000d5ed;
ll_raw_packet_recv = 0x0000d685;
ll_raw_packet_send = 0x0000d719;
ll_raw_packet_set_param = 0x0000d789;
ll_raw_packet_set_rx_cte = 0x0000d7ef;
ll_raw_packet_set_tx_cte = 0x0000d885;
ll_raw_packet_set_tx_data = 0x0000d8c3;
ll_set_adv_coded_scheme = 0x0000da8d;
ll_set_conn_coded_scheme = 0x0000dabd;
ll_set_conn_latency = 0x0000dae9;
ll_set_conn_tx_power = 0x0000db19;
ll_set_def_antenna = 0x0000db61;
ll_set_initiating_coded_scheme = 0x0000db7d;
nibble_for_char = 0x0001e721;
platform_32k_rc_auto_tune = 0x0001e7c1;
platform_32k_rc_tune = 0x0001e83d;
platform_calibrate_32k = 0x0001e851;
platform_config = 0x0001e855;
platform_get_heap_status = 0x0001e905;
platform_get_us_time = 0x0001e91d;
platform_get_version = 0x0001e921;
platform_hrng = 0x0001e929;
platform_install_isr_stack = 0x0001e931;
platform_patch_rf_init_data = 0x0001e93d;
platform_printf = 0x0001e949;
platform_raise_assertion = 0x0001e95d;
platform_rand = 0x0001e971;
platform_read_info = 0x0001e975;
platform_read_persistent_reg = 0x0001e991;
platform_reset = 0x0001e9a1;
platform_set_evt_callback = 0x0001e9d5;
platform_set_irq_callback = 0x0001e9e9;
platform_set_rf_clk_source = 0x0001ea21;
platform_set_rf_init_data = 0x0001ea2d;
platform_set_rf_power_mapping = 0x0001ea39;
platform_shutdown = 0x0001ea45;
platform_switch_app = 0x0001ea49;
platform_trace_raw = 0x0001ea75;
platform_write_persistent_reg = 0x0001ea89;
printf_hexdump = 0x0001ea99;
pvPortMalloc = 0x0001f559;
pvTaskIncrementMutexHeldCount = 0x0001f641;
pvTimerGetTimerID = 0x0001f659;
pxPortInitialiseStack = 0x0001f685;
reverse_128 = 0x0001f865;
reverse_24 = 0x0001f86b;
reverse_48 = 0x0001f871;
reverse_56 = 0x0001f877;
reverse_64 = 0x0001f87d;
reverse_bd_addr = 0x0001f883;
reverse_bytes = 0x0001f889;
sm_add_event_handler = 0x0001fb29;
sm_address_resolution_lookup = 0x0001fc55;
sm_authenticated = 0x0001fd2f;
sm_authorization_decline = 0x0001fd3d;
sm_authorization_grant = 0x0001fd5d;
sm_authorization_state = 0x0001fd7d;
sm_bonding_decline = 0x0001fd99;
sm_config = 0x00020171;
sm_encryption_key_size = 0x0002027d;
sm_just_works_confirm = 0x00020a4d;
sm_le_device_key = 0x00020c9d;
sm_passkey_input = 0x00020d35;
sm_private_random_address_generation_get = 0x000210c1;
sm_private_random_address_generation_get_mode = 0x000210c9;
sm_private_random_address_generation_set_mode = 0x000210d5;
sm_private_random_address_generation_set_update_period = 0x000210fd;
sm_register_oob_data_callback = 0x00021135;
sm_request_pairing = 0x00021141;
sm_send_security_request = 0x00021b7b;
sm_set_accepted_stk_generation_methods = 0x00021ba1;
sm_set_authentication_requirements = 0x00021bad;
sm_set_encryption_key_size_range = 0x00021bb9;
sscanf_bd_addr = 0x00021eb5;
sysSetPublicDeviceAddr = 0x000221f1;
uuid128_to_str = 0x00022925;
uuid_add_bluetooth_prefix = 0x0002297d;
uuid_has_bluetooth_prefix = 0x0002299d;
uxQueueMessagesWaiting = 0x000229e1;
uxQueueMessagesWaitingFromISR = 0x00022a09;
uxQueueSpacesAvailable = 0x00022a25;
uxTaskGetStackHighWaterMark = 0x00022a51;
vPortEnterCritical = 0x00022b09;
vPortExitCritical = 0x00022b49;
vPortFree = 0x00022b75;
vPortSuppressTicksAndSleep = 0x00022c09;
vPortValidateInterruptPriority = 0x00022ce1;
vQueueDelete = 0x00022d35;
vQueueWaitForMessageRestricted = 0x00022d61;
vTaskDelay = 0x00022da9;
vTaskInternalSetTimeOutState = 0x00022df5;
vTaskMissedYield = 0x00022e05;
vTaskPlaceOnEventList = 0x00022e11;
vTaskPlaceOnEventListRestricted = 0x00022e49;
vTaskPriorityDisinheritAfterTimeout = 0x00022e89;
vTaskStartScheduler = 0x00022f35;
vTaskStepTick = 0x00022fc5;
vTaskSuspendAll = 0x00022ff5;
vTaskSwitchContext = 0x00023005;
xPortStartScheduler = 0x000230ad;
xQueueAddToSet = 0x00023169;
xQueueCreateCountingSemaphore = 0x0002318d;
xQueueCreateCountingSemaphoreStatic = 0x000231c9;
xQueueCreateMutex = 0x0002320d;
xQueueCreateMutexStatic = 0x00023223;
xQueueCreateSet = 0x0002323d;
xQueueGenericCreate = 0x00023245;
xQueueGenericCreateStatic = 0x00023291;
xQueueGenericReset = 0x000232f9;
xQueueGenericSend = 0x00023385;
xQueueGenericSendFromISR = 0x000234f1;
xQueueGiveFromISR = 0x000235b1;
xQueueGiveMutexRecursive = 0x00023655;
xQueueIsQueueEmptyFromISR = 0x00023695;
xQueueIsQueueFullFromISR = 0x000236b9;
xQueuePeek = 0x000236e1;
xQueuePeekFromISR = 0x00023809;
xQueueReceive = 0x00023875;
xQueueReceiveFromISR = 0x000239a1;
xQueueRemoveFromSet = 0x00023a35;
xQueueSelectFromSet = 0x00023a57;
xQueueSelectFromSetFromISR = 0x00023a69;
xQueueSemaphoreTake = 0x00023a7d;
xQueueTakeMutexRecursive = 0x00023be9;
xTaskCheckForTimeOut = 0x00023c2d;
xTaskCreate = 0x00023c9d;
xTaskCreateStatic = 0x00023cf9;
xTaskGetCurrentTaskHandle = 0x00023d69;
xTaskGetSchedulerState = 0x00023d75;
xTaskGetTickCount = 0x00023d91;
xTaskGetTickCountFromISR = 0x00023d9d;
xTaskIncrementTick = 0x00023dad;
xTaskPriorityDisinherit = 0x00023e79;
xTaskPriorityInherit = 0x00023f0d;
xTaskRemoveFromEventList = 0x00023fa1;
xTaskResumeAll = 0x00024021;
xTimerCreate = 0x000240e9;
xTimerCreateStatic = 0x0002411d;
xTimerCreateTimerTask = 0x00024155;
xTimerGenericCommand = 0x000241c1;
xTimerGetExpiryTime = 0x00024231;
