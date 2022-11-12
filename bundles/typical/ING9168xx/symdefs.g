att_dispatch_client_can_send_now = 0x02002465;
att_dispatch_client_request_can_send_now_event = 0x0200246b;
att_dispatch_register_client = 0x02002471;
att_dispatch_register_server = 0x02002485;
att_dispatch_server_can_send_now = 0x02002499;
att_dispatch_server_request_can_send_now_event = 0x0200249f;
att_emit_general_event = 0x02002551;
att_server_can_send_packet_now = 0x02002c6d;
att_server_deferred_read_response = 0x02002c71;
att_server_get_mtu = 0x02002c89;
att_server_indicate = 0x02002d01;
att_server_init = 0x02002d85;
att_server_notify = 0x02002dc1;
att_server_register_packet_handler = 0x02002ed9;
att_server_request_can_send_now_event = 0x02002ee5;
att_set_db = 0x02002f01;
att_set_read_callback = 0x02002f15;
att_set_write_callback = 0x02002f21;
bd_addr_cmp = 0x02003095;
bd_addr_copy = 0x0200309b;
bd_addr_to_str = 0x020030a5;
big_endian_read_16 = 0x020030dd;
big_endian_read_32 = 0x020030e5;
big_endian_store_16 = 0x020030f9;
big_endian_store_32 = 0x02003105;
btstack_config = 0x02003165;
btstack_memory_pool_create = 0x020032a3;
btstack_memory_pool_free = 0x020032cd;
btstack_memory_pool_get = 0x0200332d;
btstack_push_user_msg = 0x02003395;
btstack_push_user_runnable = 0x020033a1;
char_for_nibble = 0x02003627;
gap_add_dev_to_periodic_list = 0x02003f99;
gap_add_whitelist = 0x02003fb1;
gap_aes_encrypt = 0x02003fc5;
gap_clear_white_lists = 0x02004009;
gap_clr_adv_set = 0x02004019;
gap_clr_periodic_adv_list = 0x02004029;
gap_create_connection_cancel = 0x02004039;
gap_default_periodic_adv_sync_transfer_param = 0x02004049;
gap_disconnect = 0x02004061;
gap_disconnect_all = 0x0200408d;
gap_ext_create_connection = 0x020040cd;
gap_get_connection_parameter_range = 0x020041bd;
gap_le_read_channel_map = 0x020041f9;
gap_periodic_adv_create_sync = 0x0200426d;
gap_periodic_adv_create_sync_cancel = 0x02004291;
gap_periodic_adv_set_info_transfer = 0x020042a1;
gap_periodic_adv_sync_transfer = 0x020042b9;
gap_periodic_adv_sync_transfer_param = 0x020042d1;
gap_periodic_adv_term_sync = 0x020042ed;
gap_read_antenna_info = 0x02004381;
gap_read_periodic_adv_list_size = 0x02004391;
gap_read_phy = 0x020043a1;
gap_read_remote_used_features = 0x020043b5;
gap_read_remote_version = 0x020043c9;
gap_read_rssi = 0x020043dd;
gap_remove_whitelist = 0x020043f1;
gap_rmv_adv_set = 0x02004475;
gap_rmv_dev_from_periodic_list = 0x02004489;
gap_rx_test_v2 = 0x020044a1;
gap_rx_test_v3 = 0x020044b9;
gap_set_adv_set_random_addr = 0x02004509;
gap_set_connection_cte_request_enable = 0x02004555;
gap_set_connection_cte_response_enable = 0x02004571;
gap_set_connection_cte_rx_param = 0x02004585;
gap_set_connection_cte_tx_param = 0x020045e1;
gap_set_connection_parameter_range = 0x02004635;
gap_set_connectionless_cte_tx_enable = 0x0200464d;
gap_set_connectionless_cte_tx_param = 0x02004661;
gap_set_connectionless_iq_sampling_enable = 0x020046c1;
gap_set_data_length = 0x02004725;
gap_set_def_phy = 0x02004741;
gap_set_ext_adv_data = 0x02004759;
gap_set_ext_adv_enable = 0x02004771;
gap_set_ext_adv_para = 0x020047ed;
gap_set_ext_scan_enable = 0x020048c5;
gap_set_ext_scan_para = 0x020048dd;
gap_set_ext_scan_response_data = 0x02004985;
gap_set_host_channel_classification = 0x0200499d;
gap_set_periodic_adv_data = 0x020049b1;
gap_set_periodic_adv_enable = 0x02004a25;
gap_set_periodic_adv_para = 0x02004a39;
gap_set_periodic_adv_rx_enable = 0x02004a51;
gap_set_phy = 0x02004a65;
gap_set_random_device_address = 0x02004a81;
gap_start_ccm = 0x02004ab1;
gap_test_end = 0x02004ae5;
gap_tx_test_v2 = 0x02004af5;
gap_tx_test_v4 = 0x02004b0d;
gap_update_connection_parameters = 0x02004b35;
gap_vendor_tx_continuous_wave = 0x02004b79;
gatt_client_cancel_write = 0x020050a1;
gatt_client_discover_characteristic_descriptors = 0x020050c7;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x02005107;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x02005157;
gatt_client_discover_characteristics_for_service = 0x020051a7;
gatt_client_discover_primary_services = 0x020051dd;
gatt_client_discover_primary_services_by_uuid128 = 0x0200520f;
gatt_client_discover_primary_services_by_uuid16 = 0x02005253;
gatt_client_execute_write = 0x02005291;
gatt_client_find_included_services_for_service = 0x020052b7;
gatt_client_get_mtu = 0x020052e5;
gatt_client_is_ready = 0x020053a9;
gatt_client_listen_for_characteristic_value_updates = 0x020053bf;
gatt_client_prepare_write = 0x020053e1;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x0200541d;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x02005447;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x0200544d;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x0200547b;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x02005481;
gatt_client_read_multiple_characteristic_values = 0x020054af;
gatt_client_read_value_of_characteristic_using_value_handle = 0x020054df;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x0200550d;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x02005559;
gatt_client_register_handler = 0x020055a5;
gatt_client_reliable_write_long_value_of_characteristic = 0x020055b1;
gatt_client_signed_write_without_response = 0x020059e5;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x02005aa9;
gatt_client_write_client_characteristic_configuration = 0x02005ae3;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x02005b35;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x02005b45;
gatt_client_write_long_value_of_characteristic = 0x02005b81;
gatt_client_write_long_value_of_characteristic_with_offset = 0x02005b91;
gatt_client_write_value_of_characteristic = 0x02005bcd;
gatt_client_write_value_of_characteristic_without_response = 0x02005c03;
hci_add_event_handler = 0x020071a5;
hci_power_control = 0x020079a5;
hci_register_acl_packet_handler = 0x02007b59;
kv_commit = 0x02008089;
kv_get = 0x020080e1;
kv_init = 0x020080f9;
kv_put = 0x02008161;
kv_remove = 0x020081d9;
kv_remove_all = 0x02008215;
kv_value_modified = 0x02008259;
kv_visit = 0x0200825d;
l2cap_can_send_fixed_channel_packet_now = 0x0200831d;
l2cap_can_send_packet_now = 0x02008321;
l2cap_create_channel = 0x020084d9;
l2cap_disconnect = 0x02008615;
l2cap_get_remote_mtu_for_local_cid = 0x020087d9;
l2cap_init = 0x02008c3d;
l2cap_le_send_flow_control_credit = 0x02008c7d;
l2cap_max_le_mtu = 0x02008f3d;
l2cap_max_mtu = 0x02008f41;
l2cap_register_fixed_channel = 0x0200904d;
l2cap_register_packet_handler = 0x02009069;
l2cap_register_service = 0x02009075;
l2cap_request_can_send_fix_channel_now_event = 0x02009159;
l2cap_request_can_send_now_event = 0x0200917d;
l2cap_request_connection_parameter_update = 0x02009197;
l2cap_send = 0x02009545;
l2cap_send_connectionless = 0x020095bd;
l2cap_send_connectionless3 = 0x0200964d;
l2cap_send_echo_request = 0x020096e5;
l2cap_unregister_service = 0x020097c1;
le_device_db_add = 0x02009819;
le_device_db_find = 0x020098ed;
le_device_db_from_key = 0x02009919;
le_device_db_iter_cur = 0x02009921;
le_device_db_iter_cur_key = 0x02009925;
le_device_db_iter_init = 0x02009929;
le_device_db_iter_next = 0x02009931;
le_device_db_remove_key = 0x02009957;
ll_adjust_conn_peer_tx_power = 0x02009985;
ll_free = 0x020099b1;
ll_hint_on_ce_len = 0x020099bd;
ll_legacy_adv_set_interval = 0x020099f5;
ll_malloc = 0x02009a05;
ll_scan_set_fixed_channel = 0x02009b75;
ll_set_adv_access_address = 0x02009c89;
ll_set_adv_coded_scheme = 0x02009c95;
ll_set_conn_coded_scheme = 0x02009ccd;
ll_set_conn_latency = 0x02009cf9;
ll_set_conn_tx_power = 0x02009d29;
ll_set_def_antenna = 0x02009d65;
ll_set_initiating_coded_scheme = 0x02009d85;
ll_set_max_conn_number = 0x02009d91;
ll_set_tx_power_range = 0x02009e2d;
nibble_for_char = 0x0201c111;
platform_32k_rc_tune = 0x0201c1bb;
platform_config = 0x0201c1bd;
platform_get_current_task = 0x0201c211;
platform_get_gen_os_driver = 0x0201c235;
platform_get_heap_status = 0x0201c23d;
platform_get_task_handle = 0x0201c255;
platform_get_us_time = 0x0201c275;
platform_get_version = 0x0201c279;
platform_hrng = 0x0201c281;
platform_install_isr_stack = 0x0201c289;
platform_install_task_stack = 0x0201c295;
platform_patch_rf_init_data = 0x0201c2cd;
platform_printf = 0x0201c2d9;
platform_raise_assertion = 0x0201c2ed;
platform_rand = 0x0201c301;
platform_read_info = 0x0201c305;
platform_read_persistent_reg = 0x0201c319;
platform_reset = 0x0201c325;
platform_set_evt_callback = 0x0201c32d;
platform_set_irq_callback = 0x0201c341;
platform_set_rf_clk_source = 0x0201c379;
platform_set_rf_init_data = 0x0201c385;
platform_set_rf_power_mapping = 0x0201c391;
platform_set_timer = 0x0201c39d;
platform_switch_app = 0x0201c3a1;
platform_trace_raw = 0x0201c3c9;
platform_write_persistent_reg = 0x0201c3e1;
printf_hexdump = 0x0201c599;
pvPortMalloc = 0x0201d01d;
pvTaskIncrementMutexHeldCount = 0x0201d105;
pvTimerGetTimerID = 0x0201d11d;
pxPortInitialiseStack = 0x0201d149;
reverse_128 = 0x0201d331;
reverse_24 = 0x0201d337;
reverse_48 = 0x0201d33d;
reverse_56 = 0x0201d343;
reverse_64 = 0x0201d349;
reverse_bd_addr = 0x0201d34f;
reverse_bytes = 0x0201d355;
sm_add_event_handler = 0x0201d671;
sm_address_resolution_lookup = 0x0201d7c9;
sm_authenticated = 0x0201db21;
sm_authorization_decline = 0x0201db2f;
sm_authorization_grant = 0x0201db4f;
sm_authorization_state = 0x0201db6f;
sm_bonding_decline = 0x0201db89;
sm_config = 0x0201dfa1;
sm_config_conn = 0x0201dfb9;
sm_encryption_key_size = 0x0201e16f;
sm_just_works_confirm = 0x0201e6a9;
sm_le_device_key = 0x0201e9e5;
sm_passkey_input = 0x0201ea7b;
sm_private_random_address_generation_get = 0x0201ee29;
sm_private_random_address_generation_get_mode = 0x0201ee31;
sm_private_random_address_generation_set_mode = 0x0201ee3d;
sm_private_random_address_generation_set_update_period = 0x0201ee65;
sm_register_oob_data_callback = 0x0201efa1;
sm_request_pairing = 0x0201efad;
sm_send_security_request = 0x0201f9d3;
sm_set_accepted_stk_generation_methods = 0x0201f9f9;
sm_set_authentication_requirements = 0x0201fa05;
sm_set_encryption_key_size_range = 0x0201fa11;
sscanf_bd_addr = 0x0201fd71;
sysSetPublicDeviceAddr = 0x0201fdfd;
uuid128_to_str = 0x02020351;
uuid_add_bluetooth_prefix = 0x020203a9;
uuid_has_bluetooth_prefix = 0x020203c9;
uxListRemove = 0x020203e5;
uxQueueMessagesWaiting = 0x0202040d;
uxQueueMessagesWaitingFromISR = 0x02020435;
uxQueueSpacesAvailable = 0x02020451;
uxTaskGetStackHighWaterMark = 0x0202047d;
uxTaskPriorityGet = 0x0202049d;
uxTaskPriorityGetFromISR = 0x020204b9;
vListInitialise = 0x02020517;
vListInitialiseItem = 0x0202052d;
vListInsert = 0x02020533;
vListInsertEnd = 0x02020563;
vPortEndScheduler = 0x0202057d;
vPortEnterCritical = 0x020205a9;
vPortExitCritical = 0x020205f1;
vPortFree = 0x02020625;
vPortValidateInterruptPriority = 0x020206a5;
vQueueDelete = 0x02020701;
vQueueWaitForMessageRestricted = 0x0202072d;
vTaskDelay = 0x02020771;
vTaskInternalSetTimeOutState = 0x020207bd;
vTaskMissedYield = 0x020207cd;
vTaskPlaceOnEventList = 0x020207d9;
vTaskPlaceOnEventListRestricted = 0x02020811;
vTaskPriorityDisinheritAfterTimeout = 0x02020851;
vTaskPrioritySet = 0x020208fd;
vTaskResume = 0x020209c5;
vTaskStartScheduler = 0x02020a49;
vTaskSuspend = 0x02020ad9;
vTaskSuspendAll = 0x02020b95;
vTaskSwitchContext = 0x02020ba5;
xPortStartScheduler = 0x02020c4d;
xQueueAddToSet = 0x02020d4d;
xQueueCreateCountingSemaphore = 0x02020d71;
xQueueCreateCountingSemaphoreStatic = 0x02020dad;
xQueueCreateMutex = 0x02020df1;
xQueueCreateMutexStatic = 0x02020e07;
xQueueCreateSet = 0x02020e21;
xQueueGenericCreate = 0x02020e29;
xQueueGenericCreateStatic = 0x02020e75;
xQueueGenericReset = 0x02020edd;
xQueueGenericSend = 0x02020f69;
xQueueGenericSendFromISR = 0x020210d5;
xQueueGiveFromISR = 0x02021195;
xQueueGiveMutexRecursive = 0x02021239;
xQueueIsQueueEmptyFromISR = 0x02021279;
xQueueIsQueueFullFromISR = 0x0202129d;
xQueuePeek = 0x020212c5;
xQueuePeekFromISR = 0x020213ed;
xQueueReceive = 0x02021459;
xQueueReceiveFromISR = 0x02021585;
xQueueRemoveFromSet = 0x02021619;
xQueueSelectFromSet = 0x0202163b;
xQueueSelectFromSetFromISR = 0x0202164d;
xQueueSemaphoreTake = 0x02021661;
xQueueTakeMutexRecursive = 0x020217cd;
xTaskCheckForTimeOut = 0x02021811;
xTaskCreate = 0x02021881;
xTaskCreateStatic = 0x020218dd;
xTaskGetCurrentTaskHandle = 0x0202194d;
xTaskGetSchedulerState = 0x02021959;
xTaskGetTickCount = 0x02021975;
xTaskGetTickCountFromISR = 0x02021981;
xTaskIncrementTick = 0x02021991;
xTaskPriorityDisinherit = 0x02021a5d;
xTaskPriorityInherit = 0x02021af1;
xTaskRemoveFromEventList = 0x02021b85;
xTaskResumeAll = 0x02021c01;
xTaskResumeFromISR = 0x02021cc9;
xTimerCreate = 0x02021d55;
xTimerCreateStatic = 0x02021d89;
xTimerCreateTimerTask = 0x02021dc1;
xTimerGenericCommand = 0x02021e2d;
xTimerGetExpiryTime = 0x02021e9d;
xTimerGetTimerDaemonTaskHandle = 0x02021ebd;
