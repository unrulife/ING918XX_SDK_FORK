att_dispatch_client_can_send_now = 0x000059c1;
att_dispatch_client_request_can_send_now_event = 0x000059c7;
att_dispatch_register_client = 0x000059cd;
att_dispatch_register_server = 0x000059e1;
att_dispatch_server_can_send_now = 0x000059f5;
att_dispatch_server_request_can_send_now_event = 0x000059fb;
att_emit_general_event = 0x00005aad;
att_server_can_send_packet_now = 0x000061cd;
att_server_get_mtu = 0x000061d1;
att_server_indicate = 0x00006245;
att_server_init = 0x000062c9;
att_server_notify = 0x00006305;
att_server_register_packet_handler = 0x000063ed;
att_server_request_can_send_now_event = 0x000063f9;
att_set_db = 0x00006415;
att_set_read_callback = 0x00006429;
att_set_write_callback = 0x00006435;
bd_addr_cmp = 0x00006579;
bd_addr_copy = 0x0000657f;
bd_addr_to_str = 0x00006589;
big_endian_read_16 = 0x000065c1;
big_endian_read_32 = 0x000065c9;
big_endian_store_16 = 0x000065dd;
big_endian_store_32 = 0x000065e9;
btstack_memory_pool_create = 0x00006847;
btstack_memory_pool_free = 0x00006871;
btstack_memory_pool_get = 0x000068d1;
btstack_push_user_msg = 0x000068ed;
char_for_nibble = 0x00006b65;
eTaskConfirmSleepModeStatus = 0x00006df9;
gap_add_dev_to_periodic_list = 0x00007479;
gap_add_whitelist = 0x00007491;
gap_aes_encrypt = 0x000074a5;
gap_clear_white_lists = 0x000074cd;
gap_clr_adv_set = 0x000074dd;
gap_clr_periodic_adv_list = 0x000074ed;
gap_create_connection_cancel = 0x00007519;
gap_disconnect = 0x00007529;
gap_disconnect_all = 0x00007555;
gap_ext_create_connection = 0x000075fd;
gap_get_connection_parameter_range = 0x000076c1;
gap_le_read_channel_map = 0x000076fd;
gap_periodic_adv_create_sync = 0x00007771;
gap_periodic_adv_create_sync_cancel = 0x00007795;
gap_periodic_adv_term_sync = 0x000077a5;
gap_read_periodic_adv_list_size = 0x00007839;
gap_read_phy = 0x00007849;
gap_read_remote_info = 0x0000785d;
gap_read_remote_used_features = 0x00007871;
gap_read_rssi = 0x00007885;
gap_remove_whitelist = 0x00007899;
gap_rmv_adv_set = 0x00007925;
gap_rmv_dev_from_periodic_list = 0x00007939;
gap_set_adv_set_random_addr = 0x00007979;
gap_set_connection_parameter_range = 0x000079c5;
gap_set_def_phy = 0x000079dd;
gap_set_ext_adv_data = 0x000079f5;
gap_set_ext_adv_enable = 0x00007a0d;
gap_set_ext_adv_para = 0x00007a89;
gap_set_ext_scan_enable = 0x00007b69;
gap_set_ext_scan_para = 0x00007b81;
gap_set_ext_scan_response_data = 0x00007c29;
gap_set_host_channel_classification = 0x00007c41;
gap_set_periodic_adv_data = 0x00007c55;
gap_set_periodic_adv_enable = 0x00007cc9;
gap_set_periodic_adv_para = 0x00007cdd;
gap_set_phy = 0x00007cf5;
gap_set_random_device_address = 0x00007d11;
gap_start_ccm = 0x00007d75;
gap_update_connection_parameters = 0x00007da9;
gatt_client_cancel_write = 0x000082c1;
gatt_client_discover_characteristic_descriptors = 0x000082e7;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x00008327;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x00008377;
gatt_client_discover_characteristics_for_service = 0x000083c7;
gatt_client_discover_primary_services = 0x000083fd;
gatt_client_discover_primary_services_by_uuid128 = 0x0000842f;
gatt_client_discover_primary_services_by_uuid16 = 0x00008473;
gatt_client_execute_write = 0x000084af;
gatt_client_find_included_services_for_service = 0x000084d5;
gatt_client_get_mtu = 0x00008503;
gatt_client_is_ready = 0x000085ad;
gatt_client_listen_for_characteristic_value_updates = 0x000085c3;
gatt_client_prepare_write = 0x000085e7;
gatt_client_pts_suppress_mtu_exchange = 0x00008625;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008631;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x0000865b;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008661;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x0000868f;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x00008695;
gatt_client_read_multiple_characteristic_values = 0x000086c3;
gatt_client_read_value_of_characteristic_using_value_handle = 0x000086f3;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008721;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x0000876d;
gatt_client_register_handler = 0x000087b9;
gatt_client_reliable_write_long_value_of_characteristic = 0x000087c5;
gatt_client_signed_write_without_response = 0x00008bf5;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008cb9;
gatt_client_write_client_characteristic_configuration = 0x00008cf3;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008d45;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008d55;
gatt_client_write_long_value_of_characteristic = 0x00008d91;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008da1;
gatt_client_write_value_of_characteristic = 0x00008ddd;
gatt_client_write_value_of_characteristic_without_response = 0x00008e13;
hci_add_event_handler = 0x0000a2c5;
hci_power_control = 0x0000aa75;
hci_register_acl_packet_handler = 0x0000ac29;
kv_commit = 0x0000b2b1;
kv_get = 0x0000b309;
kv_init = 0x0000b321;
kv_put = 0x0000b389;
kv_remove = 0x0000b401;
kv_remove_all = 0x0000b43d;
kv_value_modified = 0x0000b481;
kv_visit = 0x0000b485;
l2cap_can_send_fixed_channel_packet_now = 0x0000b545;
l2cap_can_send_packet_now = 0x0000b549;
l2cap_create_channel = 0x0000b701;
l2cap_disconnect = 0x0000b839;
l2cap_get_remote_mtu_for_local_cid = 0x0000badd;
l2cap_init = 0x0000bf5d;
l2cap_le_send_flow_control_credit = 0x0000bfa5;
l2cap_max_le_mtu = 0x0000c209;
l2cap_max_mtu = 0x0000c20d;
l2cap_next_local_cid = 0x0000c211;
l2cap_next_sig_id = 0x0000c221;
l2cap_register_fixed_channel = 0x0000c2b9;
l2cap_register_packet_handler = 0x0000c2d5;
l2cap_register_service = 0x0000c2e1;
l2cap_request_can_send_fix_channel_now_event = 0x0000c3c9;
l2cap_request_can_send_now_event = 0x0000c3ed;
l2cap_request_connection_parameter_update = 0x0000c407;
l2cap_require_security_level_2_for_outgoing_sdp = 0x0000c439;
l2cap_send = 0x0000c7fd;
l2cap_send_connectionless = 0x0000c875;
l2cap_send_connectionless3 = 0x0000c905;
l2cap_send_echo_request = 0x0000c99d;
l2cap_send_signaling_le = 0x0000ca01;
l2cap_unregister_service = 0x0000ca59;
ll_free = 0x0000cc27;
ll_hint_on_ce_len = 0x0000cc31;
ll_malloc = 0x0000cc6d;
ll_query_timing_info = 0x0000cda5;
ll_raw_packet_alloc = 0x0000cdf1;
ll_raw_packet_free = 0x0000cea5;
ll_raw_packet_get_rx_data = 0x0000cecf;
ll_raw_packet_recv = 0x0000cf65;
ll_raw_packet_send = 0x0000cff9;
ll_raw_packet_set_param = 0x0000d069;
ll_raw_packet_set_tx_data = 0x0000d0cf;
ll_set_adv_coded_scheme = 0x0000d299;
ll_set_conn_coded_scheme = 0x0000d2c9;
ll_set_conn_latency = 0x0000d2f5;
ll_set_conn_tx_power = 0x0000d325;
ll_set_def_antenna = 0x0000d36d;
ll_set_initiating_coded_scheme = 0x0000d389;
nibble_for_char = 0x0001cf59;
platform_32k_rc_auto_tune = 0x0001d011;
platform_32k_rc_tune = 0x0001d08d;
platform_calibrate_32k = 0x0001d0a1;
platform_config = 0x0001d0a5;
platform_get_heap_status = 0x0001d155;
platform_get_us_time = 0x0001d16d;
platform_get_version = 0x0001d171;
platform_hrng = 0x0001d179;
platform_install_isr_stack = 0x0001d181;
platform_patch_rf_init_data = 0x0001d18d;
platform_printf = 0x0001d199;
platform_raise_assertion = 0x0001d1ad;
platform_rand = 0x0001d1c1;
platform_read_info = 0x0001d1c5;
platform_read_persistent_reg = 0x0001d1e1;
platform_reset = 0x0001d1f1;
platform_set_evt_callback = 0x0001d225;
platform_set_irq_callback = 0x0001d239;
platform_set_rf_clk_source = 0x0001d271;
platform_set_rf_init_data = 0x0001d27d;
platform_set_rf_power_mapping = 0x0001d289;
platform_shutdown = 0x0001d295;
platform_switch_app = 0x0001d299;
platform_trace_raw = 0x0001d2c5;
platform_write_persistent_reg = 0x0001d2d9;
printf_hexdump = 0x0001d2e9;
pvPortMalloc = 0x0001de19;
pvTaskIncrementMutexHeldCount = 0x0001df01;
pvTimerGetTimerID = 0x0001df19;
pxPortInitialiseStack = 0x0001df45;
reverse_128 = 0x0001e0ed;
reverse_24 = 0x0001e0f3;
reverse_48 = 0x0001e0f9;
reverse_56 = 0x0001e0ff;
reverse_64 = 0x0001e105;
reverse_bd_addr = 0x0001e10b;
reverse_bytes = 0x0001e111;
sm_add_event_handler = 0x0001e25d;
sm_address_resolution_lookup = 0x0001e389;
sm_authenticated = 0x0001e463;
sm_authorization_decline = 0x0001e471;
sm_authorization_grant = 0x0001e491;
sm_authorization_state = 0x0001e4b1;
sm_bonding_decline = 0x0001e4cd;
sm_config = 0x0001e8a5;
sm_encryption_key_size = 0x0001e9b1;
sm_just_works_confirm = 0x0001f181;
sm_le_device_key = 0x0001f3d1;
sm_passkey_input = 0x0001f469;
sm_private_random_address_generation_get = 0x0001f7f5;
sm_private_random_address_generation_get_mode = 0x0001f7fd;
sm_private_random_address_generation_set_mode = 0x0001f809;
sm_private_random_address_generation_set_update_period = 0x0001f831;
sm_register_oob_data_callback = 0x0001f869;
sm_request_pairing = 0x0001f875;
sm_send_security_request = 0x000202af;
sm_set_accepted_stk_generation_methods = 0x000202d5;
sm_set_authentication_requirements = 0x000202e1;
sm_set_encryption_key_size_range = 0x000202ed;
sscanf_bd_addr = 0x000205e9;
sysSetPublicDeviceAddr = 0x00020905;
uuid128_to_str = 0x00020ea9;
uuid_add_bluetooth_prefix = 0x00020f01;
uuid_has_bluetooth_prefix = 0x00020f21;
uxQueueMessagesWaiting = 0x00020f65;
uxQueueMessagesWaitingFromISR = 0x00020f8d;
uxQueueSpacesAvailable = 0x00020fa9;
uxTaskGetStackHighWaterMark = 0x00020fd5;
vPortEnterCritical = 0x0002108d;
vPortExitCritical = 0x000210cd;
vPortFree = 0x000210f9;
vPortSuppressTicksAndSleep = 0x0002118d;
vPortValidateInterruptPriority = 0x00021265;
vQueueDelete = 0x000212b9;
vQueueWaitForMessageRestricted = 0x000212e5;
vTaskDelay = 0x0002132d;
vTaskInternalSetTimeOutState = 0x00021379;
vTaskMissedYield = 0x00021389;
vTaskPlaceOnEventList = 0x00021395;
vTaskPlaceOnEventListRestricted = 0x000213cd;
vTaskPriorityDisinheritAfterTimeout = 0x0002140d;
vTaskStartScheduler = 0x000214b9;
vTaskStepTick = 0x00021549;
vTaskSuspendAll = 0x00021579;
vTaskSwitchContext = 0x00021589;
xPortStartScheduler = 0x00021631;
xQueueAddToSet = 0x000216ed;
xQueueCreateCountingSemaphore = 0x00021711;
xQueueCreateCountingSemaphoreStatic = 0x0002174d;
xQueueCreateMutex = 0x00021791;
xQueueCreateMutexStatic = 0x000217a7;
xQueueCreateSet = 0x000217c1;
xQueueGenericCreate = 0x000217c9;
xQueueGenericCreateStatic = 0x00021815;
xQueueGenericReset = 0x0002187d;
xQueueGenericSend = 0x00021909;
xQueueGenericSendFromISR = 0x00021a75;
xQueueGiveFromISR = 0x00021b35;
xQueueGiveMutexRecursive = 0x00021bd9;
xQueueIsQueueEmptyFromISR = 0x00021c19;
xQueueIsQueueFullFromISR = 0x00021c3d;
xQueuePeek = 0x00021c65;
xQueuePeekFromISR = 0x00021d8d;
xQueueReceive = 0x00021df9;
xQueueReceiveFromISR = 0x00021f25;
xQueueRemoveFromSet = 0x00021fb9;
xQueueSelectFromSet = 0x00021fdb;
xQueueSelectFromSetFromISR = 0x00021fed;
xQueueSemaphoreTake = 0x00022001;
xQueueTakeMutexRecursive = 0x0002216d;
xTaskCheckForTimeOut = 0x000221b1;
xTaskCreate = 0x00022221;
xTaskCreateStatic = 0x0002227d;
xTaskGetCurrentTaskHandle = 0x000222ed;
xTaskGetSchedulerState = 0x000222f9;
xTaskGetTickCount = 0x00022315;
xTaskGetTickCountFromISR = 0x00022321;
xTaskIncrementTick = 0x00022331;
xTaskPriorityDisinherit = 0x000223fd;
xTaskPriorityInherit = 0x00022491;
xTaskRemoveFromEventList = 0x00022525;
xTaskResumeAll = 0x000225a5;
xTimerCreate = 0x0002266d;
xTimerCreateStatic = 0x000226a1;
xTimerCreateTimerTask = 0x000226d9;
xTimerGenericCommand = 0x00022745;
xTimerGetExpiryTime = 0x000227b5;
