att_dispatch_client_can_send_now = 0x000059e5;
att_dispatch_client_request_can_send_now_event = 0x000059eb;
att_dispatch_register_client = 0x000059f1;
att_dispatch_register_server = 0x00005a05;
att_dispatch_server_can_send_now = 0x00005a19;
att_dispatch_server_request_can_send_now_event = 0x00005a1f;
att_emit_general_event = 0x00005ad1;
att_server_can_send_packet_now = 0x000061f1;
att_server_get_mtu = 0x000061f5;
att_server_indicate = 0x00006269;
att_server_init = 0x000062ed;
att_server_notify = 0x00006329;
att_server_register_packet_handler = 0x00006411;
att_server_request_can_send_now_event = 0x0000641d;
att_set_db = 0x00006439;
att_set_read_callback = 0x0000644d;
att_set_write_callback = 0x00006459;
bd_addr_cmp = 0x0000659d;
bd_addr_copy = 0x000065a3;
bd_addr_to_str = 0x000065ad;
big_endian_read_16 = 0x000065e5;
big_endian_read_32 = 0x000065ed;
big_endian_store_16 = 0x00006601;
big_endian_store_32 = 0x0000660d;
btstack_memory_pool_create = 0x00006877;
btstack_memory_pool_free = 0x000068a1;
btstack_memory_pool_get = 0x00006901;
btstack_push_user_msg = 0x0000691d;
char_for_nibble = 0x00006b95;
eTaskConfirmSleepModeStatus = 0x00006e25;
gap_add_dev_to_periodic_list = 0x000074a5;
gap_add_whitelist = 0x000074bd;
gap_aes_encrypt = 0x000074d1;
gap_clear_white_lists = 0x000074f9;
gap_clr_adv_set = 0x00007509;
gap_clr_periodic_adv_list = 0x00007519;
gap_create_connection_cancel = 0x00007545;
gap_disconnect = 0x00007555;
gap_disconnect_all = 0x00007581;
gap_ext_create_connection = 0x00007629;
gap_get_connection_parameter_range = 0x000076ed;
gap_le_read_channel_map = 0x00007729;
gap_periodic_adv_create_sync = 0x0000779d;
gap_periodic_adv_create_sync_cancel = 0x000077c1;
gap_periodic_adv_term_sync = 0x000077d1;
gap_read_periodic_adv_list_size = 0x00007865;
gap_read_phy = 0x00007875;
gap_read_remote_info = 0x00007889;
gap_read_remote_used_features = 0x0000789d;
gap_read_rssi = 0x000078b1;
gap_remove_whitelist = 0x000078c5;
gap_rmv_adv_set = 0x00007951;
gap_rmv_dev_from_periodic_list = 0x00007965;
gap_rx_test_v2 = 0x0000797d;
gap_set_adv_set_random_addr = 0x000079bd;
gap_set_connection_parameter_range = 0x00007a09;
gap_set_def_phy = 0x00007a21;
gap_set_ext_adv_data = 0x00007a39;
gap_set_ext_adv_enable = 0x00007a51;
gap_set_ext_adv_para = 0x00007acd;
gap_set_ext_scan_enable = 0x00007bad;
gap_set_ext_scan_para = 0x00007bc5;
gap_set_ext_scan_response_data = 0x00007c6d;
gap_set_host_channel_classification = 0x00007c85;
gap_set_periodic_adv_data = 0x00007c99;
gap_set_periodic_adv_enable = 0x00007d0d;
gap_set_periodic_adv_para = 0x00007d21;
gap_set_phy = 0x00007d39;
gap_set_random_device_address = 0x00007d55;
gap_start_ccm = 0x00007db9;
gap_test_end = 0x00007ded;
gap_tx_test_v2 = 0x00007dfd;
gap_update_connection_parameters = 0x00007e15;
gap_vendor_tx_continuous_wave = 0x00007e39;
gatt_client_cancel_write = 0x00008349;
gatt_client_discover_characteristic_descriptors = 0x0000836f;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x000083af;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x000083ff;
gatt_client_discover_characteristics_for_service = 0x0000844f;
gatt_client_discover_primary_services = 0x00008485;
gatt_client_discover_primary_services_by_uuid128 = 0x000084b7;
gatt_client_discover_primary_services_by_uuid16 = 0x000084fb;
gatt_client_execute_write = 0x00008537;
gatt_client_find_included_services_for_service = 0x0000855d;
gatt_client_get_mtu = 0x0000858b;
gatt_client_is_ready = 0x00008635;
gatt_client_listen_for_characteristic_value_updates = 0x0000864b;
gatt_client_prepare_write = 0x0000866f;
gatt_client_pts_suppress_mtu_exchange = 0x000086ad;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x000086b9;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x000086e3;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x000086e9;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x00008717;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x0000871d;
gatt_client_read_multiple_characteristic_values = 0x0000874b;
gatt_client_read_value_of_characteristic_using_value_handle = 0x0000877b;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x000087a9;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x000087f5;
gatt_client_register_handler = 0x00008841;
gatt_client_reliable_write_long_value_of_characteristic = 0x0000884d;
gatt_client_signed_write_without_response = 0x00008c7d;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008d41;
gatt_client_write_client_characteristic_configuration = 0x00008d7b;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008dcd;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008ddd;
gatt_client_write_long_value_of_characteristic = 0x00008e19;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008e29;
gatt_client_write_value_of_characteristic = 0x00008e65;
gatt_client_write_value_of_characteristic_without_response = 0x00008e9b;
hci_add_event_handler = 0x0000a34d;
hci_power_control = 0x0000aae5;
hci_register_acl_packet_handler = 0x0000ac99;
kv_commit = 0x0000b321;
kv_get = 0x0000b379;
kv_init = 0x0000b391;
kv_put = 0x0000b3f9;
kv_remove = 0x0000b471;
kv_remove_all = 0x0000b4ad;
kv_value_modified = 0x0000b4f1;
kv_visit = 0x0000b4f5;
l2cap_can_send_fixed_channel_packet_now = 0x0000b5b5;
l2cap_can_send_packet_now = 0x0000b5b9;
l2cap_create_channel = 0x0000b771;
l2cap_disconnect = 0x0000b8a9;
l2cap_get_remote_mtu_for_local_cid = 0x0000bb1d;
l2cap_init = 0x0000bf9d;
l2cap_le_send_flow_control_credit = 0x0000bfe5;
l2cap_max_le_mtu = 0x0000c22d;
l2cap_max_mtu = 0x0000c231;
l2cap_next_local_cid = 0x0000c235;
l2cap_next_sig_id = 0x0000c245;
l2cap_register_fixed_channel = 0x0000c2dd;
l2cap_register_packet_handler = 0x0000c2f9;
l2cap_register_service = 0x0000c305;
l2cap_request_can_send_fix_channel_now_event = 0x0000c3ed;
l2cap_request_can_send_now_event = 0x0000c411;
l2cap_request_connection_parameter_update = 0x0000c42b;
l2cap_require_security_level_2_for_outgoing_sdp = 0x0000c45d;
l2cap_send = 0x0000c821;
l2cap_send_connectionless = 0x0000c899;
l2cap_send_connectionless3 = 0x0000c929;
l2cap_send_echo_request = 0x0000c9c1;
l2cap_send_signaling_le = 0x0000ca25;
l2cap_unregister_service = 0x0000ca7d;
ll_free = 0x0000cc4b;
ll_hint_on_ce_len = 0x0000cc55;
ll_malloc = 0x0000cc91;
ll_query_timing_info = 0x0000cdc9;
ll_set_adv_coded_scheme = 0x0000cf75;
ll_set_conn_coded_scheme = 0x0000cfa5;
ll_set_conn_latency = 0x0000cfd1;
ll_set_conn_tx_power = 0x0000d001;
ll_set_def_antenna = 0x0000d049;
ll_set_initiating_coded_scheme = 0x0000d065;
nibble_for_char = 0x0001cc65;
platform_32k_rc_auto_tune = 0x0001cd05;
platform_32k_rc_tune = 0x0001cd81;
platform_calibrate_32k = 0x0001cd95;
platform_config = 0x0001cd99;
platform_get_heap_status = 0x0001ce49;
platform_get_us_time = 0x0001ce61;
platform_get_version = 0x0001ce65;
platform_hrng = 0x0001ce6d;
platform_install_isr_stack = 0x0001ce75;
platform_patch_rf_init_data = 0x0001ce81;
platform_printf = 0x0001ce8d;
platform_raise_assertion = 0x0001cea1;
platform_rand = 0x0001ceb5;
platform_read_info = 0x0001ceb9;
platform_read_persistent_reg = 0x0001ced5;
platform_reset = 0x0001cee5;
platform_set_evt_callback = 0x0001cf19;
platform_set_irq_callback = 0x0001cf2d;
platform_set_rf_clk_source = 0x0001cf65;
platform_set_rf_init_data = 0x0001cf71;
platform_set_rf_power_mapping = 0x0001cf7d;
platform_shutdown = 0x0001cf89;
platform_switch_app = 0x0001cf8d;
platform_trace_raw = 0x0001cfb9;
platform_write_persistent_reg = 0x0001cfcd;
printf_hexdump = 0x0001cfdd;
pvPortMalloc = 0x0001da9d;
pvTaskIncrementMutexHeldCount = 0x0001db85;
pvTimerGetTimerID = 0x0001db9d;
pxPortInitialiseStack = 0x0001dbc9;
reverse_128 = 0x0001dd71;
reverse_24 = 0x0001dd77;
reverse_48 = 0x0001dd7d;
reverse_56 = 0x0001dd83;
reverse_64 = 0x0001dd89;
reverse_bd_addr = 0x0001dd8f;
reverse_bytes = 0x0001dd95;
sm_add_event_handler = 0x0001dee1;
sm_address_resolution_lookup = 0x0001e00d;
sm_authenticated = 0x0001e0e7;
sm_authorization_decline = 0x0001e0f5;
sm_authorization_grant = 0x0001e115;
sm_authorization_state = 0x0001e135;
sm_bonding_decline = 0x0001e151;
sm_config = 0x0001e529;
sm_encryption_key_size = 0x0001e635;
sm_just_works_confirm = 0x0001ee05;
sm_le_device_key = 0x0001f055;
sm_passkey_input = 0x0001f0ed;
sm_private_random_address_generation_get = 0x0001f479;
sm_private_random_address_generation_get_mode = 0x0001f481;
sm_private_random_address_generation_set_mode = 0x0001f48d;
sm_private_random_address_generation_set_update_period = 0x0001f4b5;
sm_register_oob_data_callback = 0x0001f4ed;
sm_request_pairing = 0x0001f4f9;
sm_send_security_request = 0x0001ff33;
sm_set_accepted_stk_generation_methods = 0x0001ff59;
sm_set_authentication_requirements = 0x0001ff65;
sm_set_encryption_key_size_range = 0x0001ff71;
sscanf_bd_addr = 0x0002026d;
sysSetPublicDeviceAddr = 0x000205a9;
uuid128_to_str = 0x00020b4d;
uuid_add_bluetooth_prefix = 0x00020ba5;
uuid_has_bluetooth_prefix = 0x00020bc5;
uxQueueMessagesWaiting = 0x00020c09;
uxQueueMessagesWaitingFromISR = 0x00020c31;
uxQueueSpacesAvailable = 0x00020c4d;
uxTaskGetStackHighWaterMark = 0x00020c79;
vPortEnterCritical = 0x00020d31;
vPortExitCritical = 0x00020d71;
vPortFree = 0x00020d9d;
vPortSuppressTicksAndSleep = 0x00020e31;
vPortValidateInterruptPriority = 0x00020f09;
vQueueDelete = 0x00020f5d;
vQueueWaitForMessageRestricted = 0x00020f89;
vTaskDelay = 0x00020fd1;
vTaskInternalSetTimeOutState = 0x0002101d;
vTaskMissedYield = 0x0002102d;
vTaskPlaceOnEventList = 0x00021039;
vTaskPlaceOnEventListRestricted = 0x00021071;
vTaskPriorityDisinheritAfterTimeout = 0x000210b1;
vTaskStartScheduler = 0x0002115d;
vTaskStepTick = 0x000211ed;
vTaskSuspendAll = 0x0002121d;
vTaskSwitchContext = 0x0002122d;
xPortStartScheduler = 0x000212d5;
xQueueAddToSet = 0x00021391;
xQueueCreateCountingSemaphore = 0x000213b5;
xQueueCreateCountingSemaphoreStatic = 0x000213f1;
xQueueCreateMutex = 0x00021435;
xQueueCreateMutexStatic = 0x0002144b;
xQueueCreateSet = 0x00021465;
xQueueGenericCreate = 0x0002146d;
xQueueGenericCreateStatic = 0x000214b9;
xQueueGenericReset = 0x00021521;
xQueueGenericSend = 0x000215ad;
xQueueGenericSendFromISR = 0x00021719;
xQueueGiveFromISR = 0x000217d9;
xQueueGiveMutexRecursive = 0x0002187d;
xQueueIsQueueEmptyFromISR = 0x000218bd;
xQueueIsQueueFullFromISR = 0x000218e1;
xQueuePeek = 0x00021909;
xQueuePeekFromISR = 0x00021a31;
xQueueReceive = 0x00021a9d;
xQueueReceiveFromISR = 0x00021bc9;
xQueueRemoveFromSet = 0x00021c5d;
xQueueSelectFromSet = 0x00021c7f;
xQueueSelectFromSetFromISR = 0x00021c91;
xQueueSemaphoreTake = 0x00021ca5;
xQueueTakeMutexRecursive = 0x00021e11;
xTaskCheckForTimeOut = 0x00021e55;
xTaskCreate = 0x00021ec5;
xTaskCreateStatic = 0x00021f21;
xTaskGetCurrentTaskHandle = 0x00021f91;
xTaskGetSchedulerState = 0x00021f9d;
xTaskGetTickCount = 0x00021fb9;
xTaskGetTickCountFromISR = 0x00021fc5;
xTaskIncrementTick = 0x00021fd5;
xTaskPriorityDisinherit = 0x000220a1;
xTaskPriorityInherit = 0x00022135;
xTaskRemoveFromEventList = 0x000221c9;
xTaskResumeAll = 0x00022249;
xTimerCreate = 0x00022311;
xTimerCreateStatic = 0x00022345;
xTimerCreateTimerTask = 0x0002237d;
xTimerGenericCommand = 0x000223e9;
xTimerGetExpiryTime = 0x00022459;
