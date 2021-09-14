att_dispatch_client_can_send_now = 0x000059cd;
att_dispatch_client_request_can_send_now_event = 0x000059d3;
att_dispatch_register_client = 0x000059d9;
att_dispatch_register_server = 0x000059ed;
att_dispatch_server_can_send_now = 0x00005a01;
att_dispatch_server_request_can_send_now_event = 0x00005a07;
att_emit_general_event = 0x00005ab9;
att_server_can_send_packet_now = 0x000061cd;
att_server_deferred_read_response = 0x000061d1;
att_server_get_mtu = 0x000061e9;
att_server_indicate = 0x00006261;
att_server_init = 0x000062e5;
att_server_notify = 0x00006321;
att_server_register_packet_handler = 0x00006439;
att_server_request_can_send_now_event = 0x00006445;
att_set_db = 0x00006461;
att_set_read_callback = 0x00006475;
att_set_write_callback = 0x00006481;
bd_addr_cmp = 0x000065f1;
bd_addr_copy = 0x000065f7;
bd_addr_to_str = 0x00006601;
big_endian_read_16 = 0x00006639;
big_endian_read_32 = 0x00006641;
big_endian_store_16 = 0x00006655;
big_endian_store_32 = 0x00006661;
btstack_config = 0x000067b5;
btstack_memory_pool_create = 0x000068f3;
btstack_memory_pool_free = 0x0000691d;
btstack_memory_pool_get = 0x0000697d;
btstack_push_user_msg = 0x00006999;
char_for_nibble = 0x00006c61;
eTaskConfirmSleepModeStatus = 0x00006f09;
gap_add_dev_to_periodic_list = 0x00007619;
gap_add_whitelist = 0x00007631;
gap_aes_encrypt = 0x00007645;
gap_clear_white_lists = 0x00007689;
gap_clr_adv_set = 0x00007699;
gap_clr_periodic_adv_list = 0x000076a9;
gap_create_connection_cancel = 0x000076d5;
gap_disconnect = 0x000076e5;
gap_disconnect_all = 0x00007711;
gap_ext_create_connection = 0x000077b9;
gap_get_connection_parameter_range = 0x000078a9;
gap_le_read_channel_map = 0x000078e5;
gap_periodic_adv_create_sync = 0x00007959;
gap_periodic_adv_create_sync_cancel = 0x0000797d;
gap_periodic_adv_term_sync = 0x0000798d;
gap_read_periodic_adv_list_size = 0x00007a21;
gap_read_phy = 0x00007a31;
gap_read_remote_info = 0x00007a45;
gap_read_remote_used_features = 0x00007a59;
gap_read_rssi = 0x00007a6d;
gap_remove_whitelist = 0x00007a81;
gap_rmv_adv_set = 0x00007b0d;
gap_rmv_dev_from_periodic_list = 0x00007b21;
gap_rx_test_v2 = 0x00007b39;
gap_set_adv_set_random_addr = 0x00007b79;
gap_set_connection_parameter_range = 0x00007bc5;
gap_set_data_length = 0x00007bdd;
gap_set_def_phy = 0x00007bf9;
gap_set_ext_adv_data = 0x00007c11;
gap_set_ext_adv_enable = 0x00007c29;
gap_set_ext_adv_para = 0x00007ca5;
gap_set_ext_scan_enable = 0x00007d85;
gap_set_ext_scan_para = 0x00007d9d;
gap_set_ext_scan_response_data = 0x00007e45;
gap_set_host_channel_classification = 0x00007e5d;
gap_set_periodic_adv_data = 0x00007e71;
gap_set_periodic_adv_enable = 0x00007ee5;
gap_set_periodic_adv_para = 0x00007ef9;
gap_set_phy = 0x00007f11;
gap_set_random_device_address = 0x00007f2d;
gap_start_ccm = 0x00007f91;
gap_test_end = 0x00007fc5;
gap_tx_test_v2 = 0x00007fd5;
gap_update_connection_parameters = 0x00007fed;
gap_vendor_tx_continuous_wave = 0x00008011;
gatt_client_cancel_write = 0x00008539;
gatt_client_discover_characteristic_descriptors = 0x0000855f;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x0000859f;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x000085ef;
gatt_client_discover_characteristics_for_service = 0x0000863f;
gatt_client_discover_primary_services = 0x00008675;
gatt_client_discover_primary_services_by_uuid128 = 0x000086a7;
gatt_client_discover_primary_services_by_uuid16 = 0x000086eb;
gatt_client_execute_write = 0x00008727;
gatt_client_find_included_services_for_service = 0x0000874d;
gatt_client_get_mtu = 0x0000877b;
gatt_client_is_ready = 0x0000881d;
gatt_client_listen_for_characteristic_value_updates = 0x00008833;
gatt_client_prepare_write = 0x00008855;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008891;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x000088bb;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x000088c1;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x000088ef;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x000088f5;
gatt_client_read_multiple_characteristic_values = 0x00008923;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008953;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008981;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x000089cd;
gatt_client_register_handler = 0x00008a19;
gatt_client_reliable_write_long_value_of_characteristic = 0x00008a25;
gatt_client_signed_write_without_response = 0x00008e55;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008f19;
gatt_client_write_client_characteristic_configuration = 0x00008f53;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008fa5;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008fb5;
gatt_client_write_long_value_of_characteristic = 0x00008ff1;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00009001;
gatt_client_write_value_of_characteristic = 0x0000903d;
gatt_client_write_value_of_characteristic_without_response = 0x00009073;
hci_add_event_handler = 0x0000a559;
hci_power_control = 0x0000ad5d;
hci_register_acl_packet_handler = 0x0000af11;
kv_commit = 0x0000b515;
kv_get = 0x0000b56d;
kv_init = 0x0000b585;
kv_put = 0x0000b5ed;
kv_remove = 0x0000b665;
kv_remove_all = 0x0000b6a1;
kv_value_modified = 0x0000b6e5;
kv_visit = 0x0000b6e9;
l2cap_can_send_fixed_channel_packet_now = 0x0000b7a9;
l2cap_can_send_packet_now = 0x0000b7ad;
l2cap_create_channel = 0x0000b965;
l2cap_disconnect = 0x0000ba9d;
l2cap_get_remote_mtu_for_local_cid = 0x0000bd11;
l2cap_init = 0x0000c191;
l2cap_le_send_flow_control_credit = 0x0000c1d9;
l2cap_max_le_mtu = 0x0000c45d;
l2cap_max_mtu = 0x0000c461;
l2cap_next_local_cid = 0x0000c465;
l2cap_next_sig_id = 0x0000c475;
l2cap_register_fixed_channel = 0x0000c50d;
l2cap_register_packet_handler = 0x0000c529;
l2cap_register_service = 0x0000c535;
l2cap_request_can_send_fix_channel_now_event = 0x0000c61d;
l2cap_request_can_send_now_event = 0x0000c641;
l2cap_request_connection_parameter_update = 0x0000c65b;
l2cap_require_security_level_2_for_outgoing_sdp = 0x0000c68d;
l2cap_send = 0x0000ca21;
l2cap_send_connectionless = 0x0000ca99;
l2cap_send_connectionless3 = 0x0000cb29;
l2cap_send_echo_request = 0x0000cbc1;
l2cap_send_signaling_le = 0x0000cc25;
l2cap_unregister_service = 0x0000cc7d;
le_device_db_add = 0x0000cce1;
le_device_db_find = 0x0000cdb5;
le_device_db_from_key = 0x0000cde1;
le_device_db_iter_cur = 0x0000cde9;
le_device_db_iter_cur_key = 0x0000cded;
le_device_db_iter_init = 0x0000cdf1;
le_device_db_iter_next = 0x0000cdf9;
le_device_db_remove_key = 0x0000ce1f;
ll_free = 0x0000ce4b;
ll_hint_on_ce_len = 0x0000ce55;
ll_legacy_adv_set_interval = 0x0000ce95;
ll_malloc = 0x0000cea5;
ll_query_timing_info = 0x0000cfdd;
ll_scan_set_fixed_channel = 0x0000d081;
ll_set_adv_access_address = 0x0000d195;
ll_set_adv_coded_scheme = 0x0000d1a1;
ll_set_conn_coded_scheme = 0x0000d1d1;
ll_set_conn_latency = 0x0000d1fd;
ll_set_conn_tx_power = 0x0000d22d;
ll_set_def_antenna = 0x0000d275;
ll_set_initiating_coded_scheme = 0x0000d291;
ll_set_max_conn_number = 0x0000d29d;
nibble_for_char = 0x0001cf95;
platform_32k_rc_auto_tune = 0x0001d031;
platform_32k_rc_tune = 0x0001d0ad;
platform_calibrate_32k = 0x0001d0c1;
platform_config = 0x0001d0c5;
platform_get_heap_status = 0x0001d185;
platform_get_us_time = 0x0001d19d;
platform_get_version = 0x0001d1a1;
platform_hrng = 0x0001d1a9;
platform_install_isr_stack = 0x0001d1b1;
platform_patch_rf_init_data = 0x0001d1bd;
platform_printf = 0x0001d1c9;
platform_raise_assertion = 0x0001d1dd;
platform_rand = 0x0001d1f1;
platform_read_info = 0x0001d1f5;
platform_read_persistent_reg = 0x0001d211;
platform_reset = 0x0001d221;
platform_set_evt_callback = 0x0001d255;
platform_set_irq_callback = 0x0001d269;
platform_set_rf_clk_source = 0x0001d2a1;
platform_set_rf_init_data = 0x0001d2ad;
platform_set_rf_power_mapping = 0x0001d2b9;
platform_shutdown = 0x0001d2c5;
platform_switch_app = 0x0001d2c9;
platform_trace_raw = 0x0001d2f5;
platform_write_persistent_reg = 0x0001d30d;
printf_hexdump = 0x0001d31d;
pvPortMalloc = 0x0001de25;
pvTaskIncrementMutexHeldCount = 0x0001df0d;
pvTimerGetTimerID = 0x0001df25;
pxPortInitialiseStack = 0x0001df51;
reverse_128 = 0x0001e0f9;
reverse_24 = 0x0001e0ff;
reverse_48 = 0x0001e105;
reverse_56 = 0x0001e10b;
reverse_64 = 0x0001e111;
reverse_bd_addr = 0x0001e117;
reverse_bytes = 0x0001e11d;
sm_add_event_handler = 0x0001e289;
sm_address_resolution_lookup = 0x0001e3e1;
sm_authenticated = 0x0001e72d;
sm_authorization_decline = 0x0001e73b;
sm_authorization_grant = 0x0001e75b;
sm_authorization_state = 0x0001e77b;
sm_bonding_decline = 0x0001e795;
sm_config = 0x0001ebb5;
sm_config_conn = 0x0001ebcd;
sm_encryption_key_size = 0x0001ed53;
sm_just_works_confirm = 0x0001f281;
sm_le_device_key = 0x0001f5bd;
sm_passkey_input = 0x0001f653;
sm_private_random_address_generation_get = 0x0001f9f9;
sm_private_random_address_generation_get_mode = 0x0001fa01;
sm_private_random_address_generation_set_mode = 0x0001fa0d;
sm_private_random_address_generation_set_update_period = 0x0001fa35;
sm_register_oob_data_callback = 0x0001fb71;
sm_request_pairing = 0x0001fb7d;
sm_send_security_request = 0x00020577;
sm_set_accepted_stk_generation_methods = 0x0002059d;
sm_set_authentication_requirements = 0x000205a9;
sm_set_encryption_key_size_range = 0x000205b5;
sscanf_bd_addr = 0x00020911;
sysSetPublicDeviceAddr = 0x00020c79;
uuid128_to_str = 0x0002126d;
uuid_add_bluetooth_prefix = 0x000212c5;
uuid_has_bluetooth_prefix = 0x000212e5;
uxQueueMessagesWaiting = 0x00021329;
uxQueueMessagesWaitingFromISR = 0x00021351;
uxQueueSpacesAvailable = 0x0002136d;
uxTaskGetStackHighWaterMark = 0x00021399;
vPortEnterCritical = 0x000214a5;
vPortExitCritical = 0x000214e9;
vPortFree = 0x00021519;
vPortSuppressTicksAndSleep = 0x000215ad;
vPortValidateInterruptPriority = 0x000216cd;
vQueueDelete = 0x00021725;
vQueueWaitForMessageRestricted = 0x00021751;
vTaskDelay = 0x00021799;
vTaskInternalSetTimeOutState = 0x000217e5;
vTaskMissedYield = 0x000217f5;
vTaskPlaceOnEventList = 0x00021801;
vTaskPlaceOnEventListRestricted = 0x00021839;
vTaskPriorityDisinheritAfterTimeout = 0x00021879;
vTaskResume = 0x00021925;
vTaskStartScheduler = 0x000219a9;
vTaskStepTick = 0x00021a39;
vTaskSuspend = 0x00021a69;
vTaskSuspendAll = 0x00021b25;
vTaskSwitchContext = 0x00021b35;
xPortStartScheduler = 0x00021bdd;
xQueueAddToSet = 0x00021ca1;
xQueueCreateCountingSemaphore = 0x00021cc5;
xQueueCreateCountingSemaphoreStatic = 0x00021d01;
xQueueCreateMutex = 0x00021d45;
xQueueCreateMutexStatic = 0x00021d5b;
xQueueCreateSet = 0x00021d75;
xQueueGenericCreate = 0x00021d7d;
xQueueGenericCreateStatic = 0x00021dc9;
xQueueGenericReset = 0x00021e31;
xQueueGenericSend = 0x00021ebd;
xQueueGenericSendFromISR = 0x00022029;
xQueueGiveFromISR = 0x000220e9;
xQueueGiveMutexRecursive = 0x0002218d;
xQueueIsQueueEmptyFromISR = 0x000221cd;
xQueueIsQueueFullFromISR = 0x000221f1;
xQueuePeek = 0x00022219;
xQueuePeekFromISR = 0x00022341;
xQueueReceive = 0x000223ad;
xQueueReceiveFromISR = 0x000224d9;
xQueueRemoveFromSet = 0x0002256d;
xQueueSelectFromSet = 0x0002258f;
xQueueSelectFromSetFromISR = 0x000225a1;
xQueueSemaphoreTake = 0x000225b5;
xQueueTakeMutexRecursive = 0x00022721;
xTaskCheckForTimeOut = 0x00022765;
xTaskCreate = 0x000227d5;
xTaskCreateStatic = 0x00022831;
xTaskGetCurrentTaskHandle = 0x000228a1;
xTaskGetSchedulerState = 0x000228ad;
xTaskGetTickCount = 0x000228c9;
xTaskGetTickCountFromISR = 0x000228d5;
xTaskIncrementTick = 0x000228e5;
xTaskPriorityDisinherit = 0x000229b1;
xTaskPriorityInherit = 0x00022a45;
xTaskRemoveFromEventList = 0x00022ad9;
xTaskResumeAll = 0x00022b59;
xTaskResumeFromISR = 0x00022c21;
xTimerCreate = 0x00022cad;
xTimerCreateStatic = 0x00022ce1;
xTimerCreateTimerTask = 0x00022d19;
xTimerGenericCommand = 0x00022d85;
xTimerGetExpiryTime = 0x00022df5;
