att_dispatch_client_can_send_now = 0x000059ad;
att_dispatch_client_request_can_send_now_event = 0x000059b3;
att_dispatch_register_client = 0x000059b9;
att_dispatch_register_server = 0x000059cd;
att_dispatch_server_can_send_now = 0x000059e1;
att_dispatch_server_request_can_send_now_event = 0x000059e7;
att_emit_general_event = 0x00005a99;
att_server_can_send_packet_now = 0x000061ad;
att_server_deferred_read_response = 0x000061b1;
att_server_get_mtu = 0x000061c9;
att_server_indicate = 0x00006241;
att_server_init = 0x000062c5;
att_server_notify = 0x00006301;
att_server_register_packet_handler = 0x00006419;
att_server_request_can_send_now_event = 0x00006425;
att_set_db = 0x00006441;
att_set_read_callback = 0x00006455;
att_set_write_callback = 0x00006461;
bd_addr_cmp = 0x000065d1;
bd_addr_copy = 0x000065d7;
bd_addr_to_str = 0x000065e1;
big_endian_read_16 = 0x00006619;
big_endian_read_32 = 0x00006621;
big_endian_store_16 = 0x00006635;
big_endian_store_32 = 0x00006641;
btstack_config = 0x00006795;
btstack_memory_pool_create = 0x000068d3;
btstack_memory_pool_free = 0x000068fd;
btstack_memory_pool_get = 0x0000695d;
btstack_push_user_msg = 0x00006979;
char_for_nibble = 0x00006c41;
eTaskConfirmSleepModeStatus = 0x00006ee9;
gap_add_dev_to_periodic_list = 0x000075e9;
gap_add_whitelist = 0x00007601;
gap_aes_encrypt = 0x00007615;
gap_clear_white_lists = 0x00007659;
gap_clr_adv_set = 0x00007669;
gap_clr_periodic_adv_list = 0x00007679;
gap_create_connection_cancel = 0x000076a5;
gap_disconnect = 0x000076b5;
gap_disconnect_all = 0x000076e1;
gap_ext_create_connection = 0x00007789;
gap_get_connection_parameter_range = 0x00007879;
gap_le_read_channel_map = 0x000078b1;
gap_periodic_adv_create_sync = 0x00007925;
gap_periodic_adv_create_sync_cancel = 0x00007949;
gap_periodic_adv_term_sync = 0x00007959;
gap_read_periodic_adv_list_size = 0x000079ed;
gap_read_phy = 0x000079fd;
gap_read_remote_info = 0x00007a11;
gap_read_remote_used_features = 0x00007a25;
gap_read_rssi = 0x00007a39;
gap_remove_whitelist = 0x00007a4d;
gap_rmv_adv_set = 0x00007ad9;
gap_rmv_dev_from_periodic_list = 0x00007aed;
gap_rx_test_v2 = 0x00007b05;
gap_set_adv_set_random_addr = 0x00007b45;
gap_set_connection_parameter_range = 0x00007b95;
gap_set_data_length = 0x00007bb1;
gap_set_def_phy = 0x00007bcd;
gap_set_ext_adv_data = 0x00007be5;
gap_set_ext_adv_enable = 0x00007bfd;
gap_set_ext_adv_para = 0x00007c79;
gap_set_ext_scan_enable = 0x00007d59;
gap_set_ext_scan_para = 0x00007d71;
gap_set_ext_scan_response_data = 0x00007e19;
gap_set_host_channel_classification = 0x00007e31;
gap_set_periodic_adv_data = 0x00007e45;
gap_set_periodic_adv_enable = 0x00007eb9;
gap_set_periodic_adv_para = 0x00007ecd;
gap_set_phy = 0x00007ee5;
gap_set_random_device_address = 0x00007f01;
gap_start_ccm = 0x00007f65;
gap_test_end = 0x00007f99;
gap_tx_test_v2 = 0x00007fa9;
gap_update_connection_parameters = 0x00007fc1;
gap_vendor_tx_continuous_wave = 0x00007fe5;
gatt_client_cancel_write = 0x0000850d;
gatt_client_discover_characteristic_descriptors = 0x00008533;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x00008573;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x000085c3;
gatt_client_discover_characteristics_for_service = 0x00008613;
gatt_client_discover_primary_services = 0x00008649;
gatt_client_discover_primary_services_by_uuid128 = 0x0000867b;
gatt_client_discover_primary_services_by_uuid16 = 0x000086bf;
gatt_client_execute_write = 0x000086fb;
gatt_client_find_included_services_for_service = 0x00008721;
gatt_client_get_mtu = 0x0000874f;
gatt_client_is_ready = 0x000087f1;
gatt_client_listen_for_characteristic_value_updates = 0x00008807;
gatt_client_prepare_write = 0x00008829;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008865;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x0000888f;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008895;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x000088c3;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x000088c9;
gatt_client_read_multiple_characteristic_values = 0x000088f7;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008927;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008955;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x000089a1;
gatt_client_register_handler = 0x000089ed;
gatt_client_reliable_write_long_value_of_characteristic = 0x000089f9;
gatt_client_signed_write_without_response = 0x00008e29;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008eed;
gatt_client_write_client_characteristic_configuration = 0x00008f27;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008f79;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008f89;
gatt_client_write_long_value_of_characteristic = 0x00008fc5;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008fd5;
gatt_client_write_value_of_characteristic = 0x00009011;
gatt_client_write_value_of_characteristic_without_response = 0x00009047;
hci_add_event_handler = 0x0000a56d;
hci_power_control = 0x0000ad19;
hci_register_acl_packet_handler = 0x0000aecd;
kv_commit = 0x0000b53d;
kv_get = 0x0000b595;
kv_init = 0x0000b5ad;
kv_put = 0x0000b615;
kv_remove = 0x0000b68d;
kv_remove_all = 0x0000b6c9;
kv_value_modified = 0x0000b70d;
kv_visit = 0x0000b711;
l2cap_can_send_fixed_channel_packet_now = 0x0000b7d1;
l2cap_can_send_packet_now = 0x0000b7d5;
l2cap_create_channel = 0x0000b98d;
l2cap_disconnect = 0x0000bac5;
l2cap_get_remote_mtu_for_local_cid = 0x0000bd39;
l2cap_init = 0x0000c1b9;
l2cap_le_send_flow_control_credit = 0x0000c201;
l2cap_max_le_mtu = 0x0000c485;
l2cap_max_mtu = 0x0000c489;
l2cap_next_local_cid = 0x0000c48d;
l2cap_next_sig_id = 0x0000c49d;
l2cap_register_fixed_channel = 0x0000c535;
l2cap_register_packet_handler = 0x0000c551;
l2cap_register_service = 0x0000c55d;
l2cap_request_can_send_fix_channel_now_event = 0x0000c645;
l2cap_request_can_send_now_event = 0x0000c669;
l2cap_request_connection_parameter_update = 0x0000c683;
l2cap_require_security_level_2_for_outgoing_sdp = 0x0000c6b5;
l2cap_send = 0x0000ca49;
l2cap_send_connectionless = 0x0000cac1;
l2cap_send_connectionless3 = 0x0000cb51;
l2cap_send_echo_request = 0x0000cbe9;
l2cap_send_signaling_le = 0x0000cc4d;
l2cap_unregister_service = 0x0000cca5;
le_device_db_add = 0x0000cd09;
le_device_db_find = 0x0000cddd;
le_device_db_from_key = 0x0000ce09;
le_device_db_iter_cur = 0x0000ce11;
le_device_db_iter_cur_key = 0x0000ce15;
le_device_db_iter_init = 0x0000ce19;
le_device_db_iter_next = 0x0000ce21;
le_device_db_remove_key = 0x0000ce47;
ll_free = 0x0000ce73;
ll_hint_on_ce_len = 0x0000ce7d;
ll_legacy_adv_set_interval = 0x0000ceb5;
ll_malloc = 0x0000cec5;
ll_query_timing_info = 0x0000cffd;
ll_scan_set_fixed_channel = 0x0000d0a1;
ll_set_adv_access_address = 0x0000d1b5;
ll_set_adv_coded_scheme = 0x0000d1c1;
ll_set_conn_coded_scheme = 0x0000d1f1;
ll_set_conn_latency = 0x0000d21d;
ll_set_conn_tx_power = 0x0000d24d;
ll_set_def_antenna = 0x0000d295;
ll_set_initiating_coded_scheme = 0x0000d2b1;
ll_set_max_conn_number = 0x0000d2bd;
nibble_for_char = 0x0001d091;
platform_32k_rc_auto_tune = 0x0001d12d;
platform_32k_rc_tune = 0x0001d1a9;
platform_calibrate_32k = 0x0001d1bd;
platform_config = 0x0001d1c1;
platform_get_heap_status = 0x0001d281;
platform_get_us_time = 0x0001d299;
platform_get_version = 0x0001d29d;
platform_hrng = 0x0001d2a5;
platform_install_isr_stack = 0x0001d2ad;
platform_patch_rf_init_data = 0x0001d2b9;
platform_printf = 0x0001d2c5;
platform_raise_assertion = 0x0001d2d9;
platform_rand = 0x0001d2ed;
platform_read_info = 0x0001d2f1;
platform_read_persistent_reg = 0x0001d30d;
platform_reset = 0x0001d31d;
platform_set_evt_callback = 0x0001d351;
platform_set_irq_callback = 0x0001d365;
platform_set_rf_clk_source = 0x0001d39d;
platform_set_rf_init_data = 0x0001d3a9;
platform_set_rf_power_mapping = 0x0001d3b5;
platform_shutdown = 0x0001d3c1;
platform_switch_app = 0x0001d3c5;
platform_trace_raw = 0x0001d3f1;
platform_write_persistent_reg = 0x0001d409;
printf_hexdump = 0x0001d419;
pvPortMalloc = 0x0001df25;
pvTaskIncrementMutexHeldCount = 0x0001e00d;
pvTimerGetTimerID = 0x0001e025;
pxPortInitialiseStack = 0x0001e051;
reverse_128 = 0x0001e1f9;
reverse_24 = 0x0001e1ff;
reverse_48 = 0x0001e205;
reverse_56 = 0x0001e20b;
reverse_64 = 0x0001e211;
reverse_bd_addr = 0x0001e217;
reverse_bytes = 0x0001e21d;
sm_add_event_handler = 0x0001e389;
sm_address_resolution_lookup = 0x0001e4e1;
sm_authenticated = 0x0001e82d;
sm_authorization_decline = 0x0001e83b;
sm_authorization_grant = 0x0001e85b;
sm_authorization_state = 0x0001e87b;
sm_bonding_decline = 0x0001e895;
sm_config = 0x0001ecb5;
sm_config_conn = 0x0001eccd;
sm_encryption_key_size = 0x0001ee53;
sm_just_works_confirm = 0x0001f381;
sm_le_device_key = 0x0001f6bd;
sm_passkey_input = 0x0001f753;
sm_private_random_address_generation_get = 0x0001faf9;
sm_private_random_address_generation_get_mode = 0x0001fb01;
sm_private_random_address_generation_set_mode = 0x0001fb0d;
sm_private_random_address_generation_set_update_period = 0x0001fb35;
sm_register_oob_data_callback = 0x0001fc71;
sm_request_pairing = 0x0001fc7d;
sm_send_security_request = 0x00020677;
sm_set_accepted_stk_generation_methods = 0x0002069d;
sm_set_authentication_requirements = 0x000206a9;
sm_set_encryption_key_size_range = 0x000206b5;
sscanf_bd_addr = 0x00020a05;
sysSetPublicDeviceAddr = 0x00020d6d;
uuid128_to_str = 0x00021361;
uuid_add_bluetooth_prefix = 0x000213b9;
uuid_has_bluetooth_prefix = 0x000213d9;
uxListRemove = 0x000213f5;
uxQueueMessagesWaiting = 0x0002141d;
uxQueueMessagesWaitingFromISR = 0x00021445;
uxQueueSpacesAvailable = 0x00021461;
uxTaskGetStackHighWaterMark = 0x0002148d;
vListInitialise = 0x00021533;
vListInitialiseItem = 0x00021549;
vListInsert = 0x0002154f;
vListInsertEnd = 0x0002157f;
vPortEnterCritical = 0x00021599;
vPortExitCritical = 0x000215dd;
vPortFree = 0x0002160d;
vPortSuppressTicksAndSleep = 0x000216a1;
vPortValidateInterruptPriority = 0x000217c1;
vQueueDelete = 0x00021819;
vQueueWaitForMessageRestricted = 0x00021845;
vTaskDelay = 0x0002188d;
vTaskInternalSetTimeOutState = 0x000218d9;
vTaskMissedYield = 0x000218e9;
vTaskPlaceOnEventList = 0x000218f5;
vTaskPlaceOnEventListRestricted = 0x0002192d;
vTaskPriorityDisinheritAfterTimeout = 0x0002196d;
vTaskResume = 0x00021a19;
vTaskStartScheduler = 0x00021a9d;
vTaskStepTick = 0x00021b2d;
vTaskSuspend = 0x00021b5d;
vTaskSuspendAll = 0x00021c19;
vTaskSwitchContext = 0x00021c29;
xPortStartScheduler = 0x00021cd1;
xQueueAddToSet = 0x00021d95;
xQueueCreateCountingSemaphore = 0x00021db9;
xQueueCreateCountingSemaphoreStatic = 0x00021df5;
xQueueCreateMutex = 0x00021e39;
xQueueCreateMutexStatic = 0x00021e4f;
xQueueCreateSet = 0x00021e69;
xQueueGenericCreate = 0x00021e71;
xQueueGenericCreateStatic = 0x00021ebd;
xQueueGenericReset = 0x00021f25;
xQueueGenericSend = 0x00021fb1;
xQueueGenericSendFromISR = 0x0002211d;
xQueueGiveFromISR = 0x000221dd;
xQueueGiveMutexRecursive = 0x00022281;
xQueueIsQueueEmptyFromISR = 0x000222c1;
xQueueIsQueueFullFromISR = 0x000222e5;
xQueuePeek = 0x0002230d;
xQueuePeekFromISR = 0x00022435;
xQueueReceive = 0x000224a1;
xQueueReceiveFromISR = 0x000225cd;
xQueueRemoveFromSet = 0x00022661;
xQueueSelectFromSet = 0x00022683;
xQueueSelectFromSetFromISR = 0x00022695;
xQueueSemaphoreTake = 0x000226a9;
xQueueTakeMutexRecursive = 0x00022815;
xTaskCheckForTimeOut = 0x00022859;
xTaskCreate = 0x000228c9;
xTaskCreateStatic = 0x00022925;
xTaskGetCurrentTaskHandle = 0x00022995;
xTaskGetSchedulerState = 0x000229a1;
xTaskGetTickCount = 0x000229bd;
xTaskGetTickCountFromISR = 0x000229c9;
xTaskIncrementTick = 0x000229d9;
xTaskPriorityDisinherit = 0x00022aa5;
xTaskPriorityInherit = 0x00022b39;
xTaskRemoveFromEventList = 0x00022bcd;
xTaskResumeAll = 0x00022c4d;
xTaskResumeFromISR = 0x00022d15;
xTimerCreate = 0x00022da1;
xTimerCreateStatic = 0x00022dd5;
xTimerCreateTimerTask = 0x00022e0d;
xTimerGenericCommand = 0x00022e79;
xTimerGetExpiryTime = 0x00022ee9;
