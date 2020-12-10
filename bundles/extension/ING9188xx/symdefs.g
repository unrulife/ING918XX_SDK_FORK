att_dispatch_client_can_send_now = 0x00005add;
att_dispatch_client_request_can_send_now_event = 0x00005ae3;
att_dispatch_register_client = 0x00005ae9;
att_dispatch_register_server = 0x00005afd;
att_dispatch_server_can_send_now = 0x00005b11;
att_dispatch_server_request_can_send_now_event = 0x00005b17;
att_emit_general_event = 0x00005bc9;
att_server_can_send_packet_now = 0x000062e9;
att_server_get_mtu = 0x000062ed;
att_server_indicate = 0x00006361;
att_server_init = 0x000063e5;
att_server_notify = 0x00006421;
att_server_register_packet_handler = 0x00006509;
att_server_request_can_send_now_event = 0x00006515;
att_set_db = 0x00006531;
att_set_read_callback = 0x00006545;
att_set_write_callback = 0x00006551;
bd_addr_cmp = 0x00006695;
bd_addr_copy = 0x0000669b;
bd_addr_to_str = 0x000066a5;
big_endian_read_16 = 0x000066dd;
big_endian_read_32 = 0x000066e5;
big_endian_store_16 = 0x000066f9;
big_endian_store_32 = 0x00006705;
btstack_memory_pool_create = 0x00006963;
btstack_memory_pool_free = 0x0000698d;
btstack_memory_pool_get = 0x000069ed;
btstack_push_user_msg = 0x00006a09;
char_for_nibble = 0x00006c81;
eTaskConfirmSleepModeStatus = 0x00006f15;
gap_add_dev_to_periodic_list = 0x00007605;
gap_add_whitelist = 0x0000761d;
gap_aes_encrypt = 0x00007631;
gap_clear_white_lists = 0x00007659;
gap_clr_adv_set = 0x00007669;
gap_clr_periodic_adv_list = 0x00007679;
gap_create_connection_cancel = 0x000076a5;
gap_default_periodic_adv_sync_transfer_param = 0x000076b5;
gap_disconnect = 0x000076cd;
gap_disconnect_all = 0x000076f9;
gap_ext_create_connection = 0x000077a1;
gap_get_connection_parameter_range = 0x00007865;
gap_le_read_channel_map = 0x000078a1;
gap_periodic_adv_create_sync = 0x00007915;
gap_periodic_adv_create_sync_cancel = 0x00007939;
gap_periodic_adv_set_info_transfer = 0x00007949;
gap_periodic_adv_sync_transfer = 0x00007961;
gap_periodic_adv_sync_transfer_param = 0x00007979;
gap_periodic_adv_term_sync = 0x00007995;
gap_read_antenna_info = 0x00007a29;
gap_read_periodic_adv_list_size = 0x00007a39;
gap_read_phy = 0x00007a49;
gap_read_remote_info = 0x00007a5d;
gap_read_remote_used_features = 0x00007a71;
gap_read_rssi = 0x00007a85;
gap_remove_whitelist = 0x00007a99;
gap_rmv_adv_set = 0x00007b25;
gap_rmv_dev_from_periodic_list = 0x00007b39;
gap_set_adv_set_random_addr = 0x00007b79;
gap_set_connection_cte_request_enable = 0x00007bc5;
gap_set_connection_cte_response_enable = 0x00007be1;
gap_set_connection_cte_rx_param = 0x00007bf5;
gap_set_connection_cte_tx_param = 0x00007c51;
gap_set_connection_parameter_range = 0x00007ca5;
gap_set_connectionless_cte_tx_enable = 0x00007cbd;
gap_set_connectionless_cte_tx_param = 0x00007cd1;
gap_set_connectionless_iq_sampling_enable = 0x00007d31;
gap_set_def_phy = 0x00007d95;
gap_set_ext_adv_data = 0x00007dad;
gap_set_ext_adv_enable = 0x00007dc5;
gap_set_ext_adv_para = 0x00007e41;
gap_set_ext_scan_enable = 0x00007f21;
gap_set_ext_scan_para = 0x00007f39;
gap_set_ext_scan_response_data = 0x00007fe1;
gap_set_host_channel_classification = 0x00007ff9;
gap_set_periodic_adv_data = 0x0000800d;
gap_set_periodic_adv_enable = 0x00008081;
gap_set_periodic_adv_para = 0x00008095;
gap_set_periodic_adv_rx_enable = 0x000080ad;
gap_set_phy = 0x000080c1;
gap_set_random_device_address = 0x000080dd;
gap_start_ccm = 0x00008141;
gap_update_connection_parameters = 0x00008175;
gatt_client_cancel_write = 0x0000868d;
gatt_client_discover_characteristic_descriptors = 0x000086b3;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x000086f3;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x00008743;
gatt_client_discover_characteristics_for_service = 0x00008793;
gatt_client_discover_primary_services = 0x000087c9;
gatt_client_discover_primary_services_by_uuid128 = 0x000087fb;
gatt_client_discover_primary_services_by_uuid16 = 0x0000883f;
gatt_client_execute_write = 0x0000887b;
gatt_client_find_included_services_for_service = 0x000088a1;
gatt_client_get_mtu = 0x000088cf;
gatt_client_is_ready = 0x00008979;
gatt_client_listen_for_characteristic_value_updates = 0x0000898f;
gatt_client_prepare_write = 0x000089b3;
gatt_client_pts_suppress_mtu_exchange = 0x000089f1;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x000089fd;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x00008a27;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008a2d;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x00008a5b;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x00008a61;
gatt_client_read_multiple_characteristic_values = 0x00008a8f;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008abf;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008aed;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x00008b39;
gatt_client_register_handler = 0x00008b85;
gatt_client_reliable_write_long_value_of_characteristic = 0x00008b91;
gatt_client_signed_write_without_response = 0x00008fc1;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00009085;
gatt_client_write_client_characteristic_configuration = 0x000090bf;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00009111;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00009121;
gatt_client_write_long_value_of_characteristic = 0x0000915d;
gatt_client_write_long_value_of_characteristic_with_offset = 0x0000916d;
gatt_client_write_value_of_characteristic = 0x000091a9;
gatt_client_write_value_of_characteristic_without_response = 0x000091df;
hci_add_event_handler = 0x0000a6b9;
hci_power_control = 0x0000ae69;
hci_register_acl_packet_handler = 0x0000b01d;
kv_commit = 0x0000b6a5;
kv_get = 0x0000b6fd;
kv_init = 0x0000b715;
kv_put = 0x0000b77d;
kv_remove = 0x0000b7f5;
kv_remove_all = 0x0000b831;
kv_value_modified = 0x0000b875;
kv_visit = 0x0000b879;
l2cap_can_send_fixed_channel_packet_now = 0x0000b939;
l2cap_can_send_packet_now = 0x0000b93d;
l2cap_create_channel = 0x0000baf5;
l2cap_disconnect = 0x0000bc2d;
l2cap_get_remote_mtu_for_local_cid = 0x0000bed1;
l2cap_init = 0x0000c351;
l2cap_le_send_flow_control_credit = 0x0000c399;
l2cap_max_le_mtu = 0x0000c5fd;
l2cap_max_mtu = 0x0000c601;
l2cap_next_local_cid = 0x0000c605;
l2cap_next_sig_id = 0x0000c615;
l2cap_register_fixed_channel = 0x0000c6ad;
l2cap_register_packet_handler = 0x0000c6c9;
l2cap_register_service = 0x0000c6d5;
l2cap_request_can_send_fix_channel_now_event = 0x0000c7bd;
l2cap_request_can_send_now_event = 0x0000c7e1;
l2cap_request_connection_parameter_update = 0x0000c7fb;
l2cap_require_security_level_2_for_outgoing_sdp = 0x0000c82d;
l2cap_send = 0x0000cbf1;
l2cap_send_connectionless = 0x0000cc69;
l2cap_send_connectionless3 = 0x0000ccf9;
l2cap_send_echo_request = 0x0000cd91;
l2cap_send_signaling_le = 0x0000cdf5;
l2cap_unregister_service = 0x0000ce4d;
ll_hint_on_ce_len = 0x0000d025;
ll_query_timing_info = 0x0000d199;
ll_raw_packet_alloc = 0x0000d1e5;
ll_raw_packet_free = 0x0000d299;
ll_raw_packet_get_iq_samples = 0x0000d2c3;
ll_raw_packet_get_rx_data = 0x0000d32f;
ll_raw_packet_recv = 0x0000d3c5;
ll_raw_packet_send = 0x0000d449;
ll_raw_packet_set_param = 0x0000d4a9;
ll_raw_packet_set_rx_cte = 0x0000d50f;
ll_raw_packet_set_tx_cte = 0x0000d56d;
ll_raw_packet_set_tx_data = 0x0000d5ab;
ll_set_adv_coded_scheme = 0x0000d781;
ll_set_conn_coded_scheme = 0x0000d7b1;
ll_set_conn_latency = 0x0000d7dd;
ll_set_conn_tx_power = 0x0000d80d;
ll_set_def_antenna = 0x0000d855;
ll_set_initiating_coded_scheme = 0x0000d871;
nibble_for_char = 0x0001e249;
platform_32k_rc_auto_tune = 0x0001e301;
platform_32k_rc_tune = 0x0001e37d;
platform_calibrate_32k = 0x0001e391;
platform_config = 0x0001e395;
platform_get_heap_status = 0x0001e445;
platform_get_us_time = 0x0001e45d;
platform_get_version = 0x0001e461;
platform_hrng = 0x0001e469;
platform_patch_rf_init_data = 0x0001e471;
platform_printf = 0x0001e47d;
platform_raise_assertion = 0x0001e491;
platform_rand = 0x0001e4a5;
platform_read_info = 0x0001e4a9;
platform_read_persistent_reg = 0x0001e4c5;
platform_reset = 0x0001e4d5;
platform_set_evt_callback = 0x0001e509;
platform_set_irq_callback = 0x0001e51d;
platform_set_rf_clk_source = 0x0001e555;
platform_set_rf_init_data = 0x0001e561;
platform_set_rf_power_mapping = 0x0001e56d;
platform_shutdown = 0x0001e579;
platform_switch_app = 0x0001e57d;
platform_trace_raw = 0x0001e5a9;
platform_write_persistent_reg = 0x0001e5bd;
printf_hexdump = 0x0001e5cd;
pvPortMalloc = 0x0001f0f5;
pvTaskIncrementMutexHeldCount = 0x0001f1dd;
pvTimerGetTimerID = 0x0001f1f5;
pxPortInitialiseStack = 0x0001f221;
reverse_128 = 0x0001f401;
reverse_24 = 0x0001f407;
reverse_48 = 0x0001f40d;
reverse_56 = 0x0001f413;
reverse_64 = 0x0001f419;
reverse_bd_addr = 0x0001f41f;
reverse_bytes = 0x0001f425;
sm_add_event_handler = 0x0001f6c5;
sm_address_resolution_lookup = 0x0001f7f1;
sm_authenticated = 0x0001f8cb;
sm_authorization_decline = 0x0001f8d9;
sm_authorization_grant = 0x0001f8f9;
sm_authorization_state = 0x0001f919;
sm_bonding_decline = 0x0001f935;
sm_config = 0x0001fd0d;
sm_encryption_key_size = 0x0001fe19;
sm_just_works_confirm = 0x000205e9;
sm_le_device_key = 0x00020839;
sm_passkey_input = 0x000208d1;
sm_private_random_address_generation_get = 0x00020c5d;
sm_private_random_address_generation_get_mode = 0x00020c65;
sm_private_random_address_generation_set_mode = 0x00020c71;
sm_private_random_address_generation_set_update_period = 0x00020c99;
sm_register_oob_data_callback = 0x00020cd1;
sm_request_pairing = 0x00020cdd;
sm_send_security_request = 0x00021717;
sm_set_accepted_stk_generation_methods = 0x0002173d;
sm_set_authentication_requirements = 0x00021749;
sm_set_encryption_key_size_range = 0x00021755;
sscanf_bd_addr = 0x00021a51;
sysSetPublicDeviceAddr = 0x00021d6d;
uuid128_to_str = 0x000224a1;
uuid_add_bluetooth_prefix = 0x000224f9;
uuid_has_bluetooth_prefix = 0x00022519;
uxQueueMessagesWaiting = 0x0002255d;
uxQueueMessagesWaitingFromISR = 0x00022585;
uxQueueSpacesAvailable = 0x000225a1;
vPortEnterCritical = 0x00022665;
vPortExitCritical = 0x000226a5;
vPortFree = 0x000226d1;
vPortSuppressTicksAndSleep = 0x00022765;
vPortValidateInterruptPriority = 0x0002283d;
vQueueDelete = 0x00022891;
vQueueWaitForMessageRestricted = 0x000228bd;
vTaskDelay = 0x00022905;
vTaskInternalSetTimeOutState = 0x00022951;
vTaskMissedYield = 0x00022961;
vTaskPlaceOnEventList = 0x0002296d;
vTaskPlaceOnEventListRestricted = 0x000229a5;
vTaskPriorityDisinheritAfterTimeout = 0x000229e5;
vTaskStartScheduler = 0x00022a91;
vTaskStepTick = 0x00022b21;
vTaskSuspendAll = 0x00022b51;
vTaskSwitchContext = 0x00022b61;
xPortStartScheduler = 0x00022c09;
xQueueAddToSet = 0x00022cc5;
xQueueCreateCountingSemaphore = 0x00022ce9;
xQueueCreateCountingSemaphoreStatic = 0x00022d25;
xQueueCreateMutex = 0x00022d69;
xQueueCreateMutexStatic = 0x00022d7f;
xQueueCreateSet = 0x00022d99;
xQueueGenericCreate = 0x00022da1;
xQueueGenericCreateStatic = 0x00022ded;
xQueueGenericReset = 0x00022e55;
xQueueGenericSend = 0x00022ee1;
xQueueGenericSendFromISR = 0x0002304d;
xQueueGiveFromISR = 0x0002310d;
xQueueGiveMutexRecursive = 0x000231b1;
xQueueIsQueueEmptyFromISR = 0x000231f1;
xQueueIsQueueFullFromISR = 0x00023215;
xQueuePeek = 0x0002323d;
xQueuePeekFromISR = 0x00023365;
xQueueReceive = 0x000233d1;
xQueueReceiveFromISR = 0x000234fd;
xQueueRemoveFromSet = 0x00023591;
xQueueSelectFromSet = 0x000235b3;
xQueueSelectFromSetFromISR = 0x000235c5;
xQueueSemaphoreTake = 0x000235d9;
xQueueTakeMutexRecursive = 0x00023745;
xTaskCheckForTimeOut = 0x00023789;
xTaskCreate = 0x000237f9;
xTaskCreateStatic = 0x00023855;
xTaskGetCurrentTaskHandle = 0x000238c5;
xTaskGetSchedulerState = 0x000238d1;
xTaskGetTickCount = 0x000238ed;
xTaskGetTickCountFromISR = 0x000238f9;
xTaskIncrementTick = 0x00023909;
xTaskPriorityDisinherit = 0x000239d5;
xTaskPriorityInherit = 0x00023a69;
xTaskRemoveFromEventList = 0x00023afd;
xTaskResumeAll = 0x00023b7d;
xTimerCreate = 0x00023c45;
xTimerCreateStatic = 0x00023c79;
xTimerCreateTimerTask = 0x00023cb1;
xTimerGenericCommand = 0x00023d1d;
xTimerGetExpiryTime = 0x00023d8d;
