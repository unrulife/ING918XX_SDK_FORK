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
eTaskConfirmSleepModeStatus = 0x00006eed;
gap_add_dev_to_periodic_list = 0x000075fd;
gap_add_whitelist = 0x00007615;
gap_aes_encrypt = 0x00007629;
gap_clear_white_lists = 0x0000766d;
gap_clr_adv_set = 0x0000767d;
gap_clr_periodic_adv_list = 0x0000768d;
gap_create_connection_cancel = 0x000076b9;
gap_disconnect = 0x000076c9;
gap_disconnect_all = 0x000076f5;
gap_ext_create_connection = 0x0000779d;
gap_get_connection_parameter_range = 0x0000788d;
gap_le_read_channel_map = 0x000078c9;
gap_periodic_adv_create_sync = 0x0000793d;
gap_periodic_adv_create_sync_cancel = 0x00007961;
gap_periodic_adv_term_sync = 0x00007971;
gap_read_periodic_adv_list_size = 0x00007a05;
gap_read_phy = 0x00007a15;
gap_read_remote_info = 0x00007a29;
gap_read_remote_used_features = 0x00007a3d;
gap_read_rssi = 0x00007a51;
gap_remove_whitelist = 0x00007a65;
gap_rmv_adv_set = 0x00007af1;
gap_rmv_dev_from_periodic_list = 0x00007b05;
gap_rx_test_v2 = 0x00007b1d;
gap_set_adv_set_random_addr = 0x00007b5d;
gap_set_connection_parameter_range = 0x00007ba9;
gap_set_data_length = 0x00007bc1;
gap_set_def_phy = 0x00007bdd;
gap_set_ext_adv_data = 0x00007bf5;
gap_set_ext_adv_enable = 0x00007c0d;
gap_set_ext_adv_para = 0x00007c89;
gap_set_ext_scan_enable = 0x00007d69;
gap_set_ext_scan_para = 0x00007d81;
gap_set_ext_scan_response_data = 0x00007e29;
gap_set_host_channel_classification = 0x00007e41;
gap_set_periodic_adv_data = 0x00007e55;
gap_set_periodic_adv_enable = 0x00007ec9;
gap_set_periodic_adv_para = 0x00007edd;
gap_set_phy = 0x00007ef5;
gap_set_random_device_address = 0x00007f11;
gap_start_ccm = 0x00007f75;
gap_test_end = 0x00007fa9;
gap_tx_test_v2 = 0x00007fb9;
gap_update_connection_parameters = 0x00007fd1;
gap_vendor_tx_continuous_wave = 0x00007ff5;
gatt_client_cancel_write = 0x0000851d;
gatt_client_discover_characteristic_descriptors = 0x00008543;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x00008583;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x000085d3;
gatt_client_discover_characteristics_for_service = 0x00008623;
gatt_client_discover_primary_services = 0x00008659;
gatt_client_discover_primary_services_by_uuid128 = 0x0000868b;
gatt_client_discover_primary_services_by_uuid16 = 0x000086cf;
gatt_client_execute_write = 0x0000870b;
gatt_client_find_included_services_for_service = 0x00008731;
gatt_client_get_mtu = 0x0000875f;
gatt_client_is_ready = 0x00008801;
gatt_client_listen_for_characteristic_value_updates = 0x00008817;
gatt_client_prepare_write = 0x00008839;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008875;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x0000889f;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x000088a5;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x000088d3;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x000088d9;
gatt_client_read_multiple_characteristic_values = 0x00008907;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008937;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008965;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x000089b1;
gatt_client_register_handler = 0x000089fd;
gatt_client_reliable_write_long_value_of_characteristic = 0x00008a09;
gatt_client_signed_write_without_response = 0x00008e39;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008efd;
gatt_client_write_client_characteristic_configuration = 0x00008f37;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008f89;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008f99;
gatt_client_write_long_value_of_characteristic = 0x00008fd5;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008fe5;
gatt_client_write_value_of_characteristic = 0x00009021;
gatt_client_write_value_of_characteristic_without_response = 0x00009057;
hci_add_event_handler = 0x0000a57d;
hci_power_control = 0x0000ad85;
hci_register_acl_packet_handler = 0x0000af39;
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
ll_ackable_packet_alloc = 0x0000ce73;
ll_ackable_packet_get_status = 0x0000cf7b;
ll_ackable_packet_run = 0x0000cfed;
ll_ackable_packet_set_tx_data = 0x0000d095;
ll_free = 0x0000d0af;
ll_hint_on_ce_len = 0x0000d0b9;
ll_legacy_adv_set_interval = 0x0000d0f1;
ll_malloc = 0x0000d101;
ll_query_timing_info = 0x0000d239;
ll_raw_packet_alloc = 0x0000d285;
ll_raw_packet_free = 0x0000d359;
ll_raw_packet_get_bare_rx_data = 0x0000d383;
ll_raw_packet_get_rx_data = 0x0000d449;
ll_raw_packet_recv = 0x0000d4e1;
ll_raw_packet_send = 0x0000d59d;
ll_raw_packet_set_bare_data = 0x0000d685;
ll_raw_packet_set_bare_mode = 0x0000d6c3;
ll_raw_packet_set_param = 0x0000d7c9;
ll_raw_packet_set_tx_data = 0x0000d827;
ll_scan_set_fixed_channel = 0x0000d8dd;
ll_set_adv_access_address = 0x0000d9f1;
ll_set_adv_coded_scheme = 0x0000d9fd;
ll_set_conn_coded_scheme = 0x0000da2d;
ll_set_conn_interval_unit = 0x0000da59;
ll_set_conn_latency = 0x0000da65;
ll_set_conn_tx_power = 0x0000da95;
ll_set_def_antenna = 0x0000dadd;
ll_set_initiating_coded_scheme = 0x0000daf9;
ll_set_max_conn_number = 0x0000db05;
nibble_for_char = 0x0001d9fd;
platform_32k_rc_auto_tune = 0x0001da99;
platform_32k_rc_tune = 0x0001db15;
platform_calibrate_32k = 0x0001db29;
platform_config = 0x0001db2d;
platform_get_heap_status = 0x0001dbed;
platform_get_us_time = 0x0001dc05;
platform_get_version = 0x0001dc09;
platform_hrng = 0x0001dc11;
platform_install_isr_stack = 0x0001dc19;
platform_patch_rf_init_data = 0x0001dc25;
platform_printf = 0x0001dc31;
platform_raise_assertion = 0x0001dc45;
platform_rand = 0x0001dc59;
platform_read_info = 0x0001dc5d;
platform_read_persistent_reg = 0x0001dc79;
platform_reset = 0x0001dc89;
platform_set_evt_callback = 0x0001dcbd;
platform_set_irq_callback = 0x0001dcd1;
platform_set_rf_clk_source = 0x0001dd09;
platform_set_rf_init_data = 0x0001dd15;
platform_set_rf_power_mapping = 0x0001dd21;
platform_shutdown = 0x0001dd2d;
platform_switch_app = 0x0001dd31;
platform_trace_raw = 0x0001dd5d;
platform_write_persistent_reg = 0x0001dd75;
printf_hexdump = 0x0001dd85;
pvPortMalloc = 0x0001e88d;
pvTaskIncrementMutexHeldCount = 0x0001e975;
pvTimerGetTimerID = 0x0001e98d;
pxPortInitialiseStack = 0x0001e9b9;
reverse_128 = 0x0001eb61;
reverse_24 = 0x0001eb67;
reverse_48 = 0x0001eb6d;
reverse_56 = 0x0001eb73;
reverse_64 = 0x0001eb79;
reverse_bd_addr = 0x0001eb7f;
reverse_bytes = 0x0001eb85;
sm_add_event_handler = 0x0001ed11;
sm_address_resolution_lookup = 0x0001ee69;
sm_authenticated = 0x0001f1b5;
sm_authorization_decline = 0x0001f1c3;
sm_authorization_grant = 0x0001f1e3;
sm_authorization_state = 0x0001f203;
sm_bonding_decline = 0x0001f21d;
sm_config = 0x0001f63d;
sm_config_conn = 0x0001f655;
sm_encryption_key_size = 0x0001f7db;
sm_just_works_confirm = 0x0001fd09;
sm_le_device_key = 0x00020045;
sm_passkey_input = 0x000200db;
sm_private_random_address_generation_get = 0x00020481;
sm_private_random_address_generation_get_mode = 0x00020489;
sm_private_random_address_generation_set_mode = 0x00020495;
sm_private_random_address_generation_set_update_period = 0x000204bd;
sm_register_oob_data_callback = 0x000205f9;
sm_request_pairing = 0x00020605;
sm_send_security_request = 0x00020fff;
sm_set_accepted_stk_generation_methods = 0x00021025;
sm_set_authentication_requirements = 0x00021031;
sm_set_encryption_key_size_range = 0x0002103d;
sscanf_bd_addr = 0x00021401;
sysSetPublicDeviceAddr = 0x00021769;
uuid128_to_str = 0x00021d5d;
uuid_add_bluetooth_prefix = 0x00021db5;
uuid_has_bluetooth_prefix = 0x00021dd5;
uxListRemove = 0x00021df1;
uxQueueMessagesWaiting = 0x00021e19;
uxQueueMessagesWaitingFromISR = 0x00021e41;
uxQueueSpacesAvailable = 0x00021e5d;
uxTaskGetStackHighWaterMark = 0x00021e89;
vListInitialise = 0x00021f2f;
vListInitialiseItem = 0x00021f45;
vListInsert = 0x00021f4b;
vListInsertEnd = 0x00021f7b;
vPortEnterCritical = 0x00021f95;
vPortExitCritical = 0x00021fd9;
vPortFree = 0x00022009;
vPortSuppressTicksAndSleep = 0x0002209d;
vPortValidateInterruptPriority = 0x000221bd;
vQueueDelete = 0x00022215;
vQueueWaitForMessageRestricted = 0x00022241;
vTaskDelay = 0x00022289;
vTaskInternalSetTimeOutState = 0x000222d5;
vTaskMissedYield = 0x000222e5;
vTaskPlaceOnEventList = 0x000222f1;
vTaskPlaceOnEventListRestricted = 0x00022329;
vTaskPriorityDisinheritAfterTimeout = 0x00022369;
vTaskResume = 0x00022415;
vTaskStartScheduler = 0x00022499;
vTaskStepTick = 0x00022529;
vTaskSuspend = 0x00022559;
vTaskSuspendAll = 0x00022615;
vTaskSwitchContext = 0x00022625;
xPortStartScheduler = 0x000226cd;
xQueueAddToSet = 0x00022791;
xQueueCreateCountingSemaphore = 0x000227b5;
xQueueCreateCountingSemaphoreStatic = 0x000227f1;
xQueueCreateMutex = 0x00022835;
xQueueCreateMutexStatic = 0x0002284b;
xQueueCreateSet = 0x00022865;
xQueueGenericCreate = 0x0002286d;
xQueueGenericCreateStatic = 0x000228b9;
xQueueGenericReset = 0x00022921;
xQueueGenericSend = 0x000229ad;
xQueueGenericSendFromISR = 0x00022b19;
xQueueGiveFromISR = 0x00022bd9;
xQueueGiveMutexRecursive = 0x00022c7d;
xQueueIsQueueEmptyFromISR = 0x00022cbd;
xQueueIsQueueFullFromISR = 0x00022ce1;
xQueuePeek = 0x00022d09;
xQueuePeekFromISR = 0x00022e31;
xQueueReceive = 0x00022e9d;
xQueueReceiveFromISR = 0x00022fc9;
xQueueRemoveFromSet = 0x0002305d;
xQueueSelectFromSet = 0x0002307f;
xQueueSelectFromSetFromISR = 0x00023091;
xQueueSemaphoreTake = 0x000230a5;
xQueueTakeMutexRecursive = 0x00023211;
xTaskCheckForTimeOut = 0x00023255;
xTaskCreate = 0x000232c5;
xTaskCreateStatic = 0x00023321;
xTaskGetCurrentTaskHandle = 0x00023391;
xTaskGetSchedulerState = 0x0002339d;
xTaskGetTickCount = 0x000233b9;
xTaskGetTickCountFromISR = 0x000233c5;
xTaskIncrementTick = 0x000233d5;
xTaskPriorityDisinherit = 0x000234a1;
xTaskPriorityInherit = 0x00023535;
xTaskRemoveFromEventList = 0x000235c9;
xTaskResumeAll = 0x00023649;
xTaskResumeFromISR = 0x00023711;
xTimerCreate = 0x0002379d;
xTimerCreateStatic = 0x000237d1;
xTimerCreateTimerTask = 0x00023809;
xTimerGenericCommand = 0x00023875;
xTimerGetExpiryTime = 0x000238e5;
