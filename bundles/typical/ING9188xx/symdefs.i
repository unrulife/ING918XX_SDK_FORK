--define_symbol att_dispatch_client_can_send_now=0x000058d1
--define_symbol att_dispatch_client_request_can_send_now_event=0x000058d9
--define_symbol att_dispatch_register_client=0x000058f1
--define_symbol att_dispatch_register_server=0x00005905
--define_symbol att_dispatch_server_can_send_now=0x00005919
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005921
--define_symbol att_emit_general_event=0x000059f1
--define_symbol att_server_can_send_packet_now=0x00006135
--define_symbol att_server_get_mtu=0x00006139
--define_symbol att_server_indicate=0x000061ad
--define_symbol att_server_init=0x00006231
--define_symbol att_server_notify=0x0000626d
--define_symbol att_server_register_packet_handler=0x00006355
--define_symbol att_server_request_can_send_now_event=0x00006361
--define_symbol att_set_db=0x0000637d
--define_symbol att_set_read_callback=0x00006391
--define_symbol att_set_write_callback=0x0000639d
--define_symbol bd_addr_cmp=0x000064e1
--define_symbol bd_addr_copy=0x000064e7
--define_symbol bd_addr_to_str=0x000064f1
--define_symbol big_endian_read_16=0x00006529
--define_symbol big_endian_read_32=0x00006531
--define_symbol big_endian_store_16=0x00006545
--define_symbol big_endian_store_32=0x00006551
--define_symbol btstack_push_user_msg=0x000067fd
--define_symbol char_for_nibble=0x00006a55
--define_symbol gap_add_dev_to_periodic_list=0x000075b9
--define_symbol gap_add_whitelist=0x000075d1
--define_symbol gap_aes_encrypt=0x000075e5
--define_symbol gap_clear_white_lists=0x0000760d
--define_symbol gap_clr_adv_set=0x0000761d
--define_symbol gap_clr_periodic_adv_list=0x0000762d
--define_symbol gap_create_connection_cancel=0x00007689
--define_symbol gap_disconnect=0x00007699
--define_symbol gap_disconnect_all=0x000076c5
--define_symbol gap_ext_create_connection=0x0000776d
--define_symbol gap_get_connection_parameter_range=0x00007831
--define_symbol gap_le_read_channel_map=0x00007871
--define_symbol gap_periodic_adv_create_sync=0x00007981
--define_symbol gap_periodic_adv_create_sync_cancel=0x000079a5
--define_symbol gap_periodic_adv_term_sync=0x000079b5
--define_symbol gap_read_periodic_adv_list_size=0x00007a49
--define_symbol gap_read_phy=0x00007a59
--define_symbol gap_read_remote_info=0x00007a6d
--define_symbol gap_read_remote_used_features=0x00007a81
--define_symbol gap_read_rssi=0x00007a95
--define_symbol gap_remove_whitelist=0x00007aa9
--define_symbol gap_rmv_adv_set=0x00007b35
--define_symbol gap_rmv_dev_from_periodic_list=0x00007b49
--define_symbol gap_set_adv_set_random_addr=0x00007b89
--define_symbol gap_set_connection_parameter_range=0x00007bd5
--define_symbol gap_set_def_phy=0x00007bed
--define_symbol gap_set_ext_adv_data=0x00007c05
--define_symbol gap_set_ext_adv_enable=0x00007c1d
--define_symbol gap_set_ext_adv_para=0x00007c99
--define_symbol gap_set_ext_scan_enable=0x00007d79
--define_symbol gap_set_ext_scan_para=0x00007d91
--define_symbol gap_set_ext_scan_response_data=0x00007e39
--define_symbol gap_set_host_channel_classification=0x00007e51
--define_symbol gap_set_periodic_adv_data=0x00007e65
--define_symbol gap_set_periodic_adv_enable=0x00007ed9
--define_symbol gap_set_periodic_adv_para=0x00007eed
--define_symbol gap_set_phy=0x00007f05
--define_symbol gap_set_random_device_address=0x00007f21
--define_symbol gap_start_ccm=0x00007f85
--define_symbol gap_update_connection_parameters=0x00007fcd
--define_symbol gatt_client_cancel_write=0x000084b5
--define_symbol gatt_client_discover_characteristic_descriptors=0x000084db
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x0000851d
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x0000856d
--define_symbol gatt_client_discover_characteristics_for_service=0x000085bd
--define_symbol gatt_client_discover_primary_services=0x000085f3
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x00008625
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008669
--define_symbol gatt_client_execute_write=0x000086a5
--define_symbol gatt_client_find_included_services_for_service=0x000086cb
--define_symbol gatt_client_get_mtu=0x000086f9
--define_symbol gatt_client_is_ready=0x000087a1
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x000087b7
--define_symbol gatt_client_prepare_write=0x000087db
--define_symbol gatt_client_pts_suppress_mtu_exchange=0x00008819
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008825
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x0000884f
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008855
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008883
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008889
--define_symbol gatt_client_read_multiple_characteristic_values=0x000088b7
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x000088e7
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008915
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008961
--define_symbol gatt_client_register_handler=0x000089ad
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x000089b9
--define_symbol gatt_client_signed_write_without_response=0x00008de5
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008ea9
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008ee3
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008f35
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008f45
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008f81
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008f91
--define_symbol gatt_client_write_value_of_characteristic=0x00008fcd
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00009003
--define_symbol hci_add_event_handler=0x0000b29d
--define_symbol hci_power_control=0x0000b9e5
--define_symbol hci_register_acl_packet_handler=0x0000bb99
--define_symbol kv_get=0x0000c219
--define_symbol kv_init=0x0000c231
--define_symbol kv_put=0x0000c281
--define_symbol kv_remove=0x0000c2f9
--define_symbol kv_value_modified=0x0000c369
--define_symbol kv_visit=0x0000c36d
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000c42d
--define_symbol l2cap_can_send_packet_now=0x0000c431
--define_symbol l2cap_create_channel=0x0000c5e9
--define_symbol l2cap_disconnect=0x0000c721
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000c9c5
--define_symbol l2cap_init=0x0000ce45
--define_symbol l2cap_le_send_flow_control_credit=0x0000ce8d
--define_symbol l2cap_max_le_mtu=0x0000d0f1
--define_symbol l2cap_max_mtu=0x0000d0f5
--define_symbol l2cap_next_local_cid=0x0000d0f9
--define_symbol l2cap_next_sig_id=0x0000d109
--define_symbol l2cap_register_fixed_channel=0x0000d1a1
--define_symbol l2cap_register_packet_handler=0x0000d1bd
--define_symbol l2cap_register_service=0x0000d1c9
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000d2b1
--define_symbol l2cap_request_can_send_now_event=0x0000d2d5
--define_symbol l2cap_request_connection_parameter_update=0x0000d2ef
--define_symbol l2cap_require_security_level_2_for_outgoing_sdp=0x0000d321
--define_symbol l2cap_send=0x0000d6e5
--define_symbol l2cap_send_connectionless=0x0000d75d
--define_symbol l2cap_send_connectionless3=0x0000d7ed
--define_symbol l2cap_send_echo_request=0x0000d885
--define_symbol l2cap_send_signaling_le=0x0000d8e9
--define_symbol l2cap_unregister_service=0x0000d941
--define_symbol ll_hint_on_ce_len=0x0000db25
--define_symbol ll_set_adv_coded_scheme=0x0000de01
--define_symbol ll_set_initiating_coded_scheme=0x0000de31
--define_symbol nibble_for_char=0x0001c60d
--define_symbol platform_config=0x0001c6b1
--define_symbol platform_get_heap_status=0x0001c6e5
--define_symbol platform_get_version=0x0001c6fd
--define_symbol platform_patch_rf_init_data=0x0001c705
--define_symbol platform_printf=0x0001c721
--define_symbol platform_raise_assertion=0x0001c735
--define_symbol platform_read_persistent_reg=0x0001c749
--define_symbol platform_reset=0x0001c759
--define_symbol platform_set_evt_callback=0x0001c78d
--define_symbol platform_set_irq_callback=0x0001c7a1
--define_symbol platform_set_rf_clk_source=0x0001c7d9
--define_symbol platform_set_rf_init_data=0x0001c7e5
--define_symbol platform_set_rf_power_mapping=0x0001c7f1
--define_symbol platform_switch_app=0x0001c7fd
--define_symbol platform_write_persistent_reg=0x0001c821
--define_symbol printf_hexdump=0x0001d511
--define_symbol pvPortMalloc=0x0001dfa1
--define_symbol pvTaskIncrementMutexHeldCount=0x0001e089
--define_symbol pvTimerGetTimerID=0x0001e0a1
--define_symbol pxPortInitialiseStack=0x0001e0cd
--define_symbol reverse_128=0x0001e275
--define_symbol reverse_24=0x0001e27b
--define_symbol reverse_48=0x0001e281
--define_symbol reverse_56=0x0001e287
--define_symbol reverse_64=0x0001e28d
--define_symbol reverse_bd_addr=0x0001e293
--define_symbol reverse_bytes=0x0001e299
--define_symbol sm_add_event_handler=0x0001e3f9
--define_symbol sm_address_resolution_lookup=0x0001e525
--define_symbol sm_authenticated=0x0001e5ff
--define_symbol sm_authorization_decline=0x0001e60d
--define_symbol sm_authorization_grant=0x0001e62d
--define_symbol sm_authorization_state=0x0001e64d
--define_symbol sm_bonding_decline=0x0001e669
--define_symbol sm_config=0x0001ea41
--define_symbol sm_encryption_key_size=0x0001eb4d
--define_symbol sm_just_works_confirm=0x0001f31d
--define_symbol sm_le_device_key=0x0001f56d
--define_symbol sm_passkey_input=0x0001f605
--define_symbol sm_private_random_address_generation_get=0x0001f991
--define_symbol sm_private_random_address_generation_get_mode=0x0001f999
--define_symbol sm_private_random_address_generation_set_mode=0x0001f9a5
--define_symbol sm_private_random_address_generation_set_update_period=0x0001f9cd
--define_symbol sm_register_oob_data_callback=0x0001fa05
--define_symbol sm_request_pairing=0x0001fa11
--define_symbol sm_send_security_request=0x0002044b
--define_symbol sm_set_accepted_stk_generation_methods=0x00020471
--define_symbol sm_set_authentication_requirements=0x0002047d
--define_symbol sm_set_encryption_key_size_range=0x00020489
--define_symbol sscanf_bd_addr=0x00020785
--define_symbol sysSetPublicDeviceAddr=0x00020811
--define_symbol uuid128_to_str=0x00020b85
--define_symbol uuid_add_bluetooth_prefix=0x00020bdd
--define_symbol uuid_has_bluetooth_prefix=0x00020bfd
--define_symbol uxQueueMessagesWaiting=0x00020c41
--define_symbol uxQueueMessagesWaitingFromISR=0x00020c69
--define_symbol uxQueueSpacesAvailable=0x00020c85
--define_symbol vPortFree=0x00020db5
--define_symbol vQueueDelete=0x00020e89
--define_symbol vQueueWaitForMessageRestricted=0x00020eb5
--define_symbol vTaskDelay=0x00020efd
--define_symbol vTaskInternalSetTimeOutState=0x00020f49
--define_symbol vTaskMissedYield=0x00020f59
--define_symbol vTaskPlaceOnEventList=0x00020f65
--define_symbol vTaskPlaceOnEventListRestricted=0x00020f9d
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x00020fdd
--define_symbol vTaskStartScheduler=0x00021089
--define_symbol vTaskSuspendAll=0x00021119
--define_symbol vTaskSwitchContext=0x00021129
--define_symbol xPortStartScheduler=0x000211d1
--define_symbol xQueueAddToSet=0x0002128d
--define_symbol xQueueCreateCountingSemaphore=0x000212b1
--define_symbol xQueueCreateCountingSemaphoreStatic=0x000212ed
--define_symbol xQueueCreateMutex=0x00021331
--define_symbol xQueueCreateMutexStatic=0x00021347
--define_symbol xQueueCreateSet=0x00021361
--define_symbol xQueueGenericCreate=0x00021369
--define_symbol xQueueGenericCreateStatic=0x000213b5
--define_symbol xQueueGenericReset=0x0002141d
--define_symbol xQueueGenericSend=0x000214a9
--define_symbol xQueueGenericSendFromISR=0x00021615
--define_symbol xQueueGiveFromISR=0x000216d5
--define_symbol xQueueGiveMutexRecursive=0x00021779
--define_symbol xQueueIsQueueEmptyFromISR=0x000217b9
--define_symbol xQueueIsQueueFullFromISR=0x000217dd
--define_symbol xQueuePeek=0x00021805
--define_symbol xQueuePeekFromISR=0x0002192d
--define_symbol xQueueReceive=0x00021999
--define_symbol xQueueReceiveFromISR=0x00021ac5
--define_symbol xQueueRemoveFromSet=0x00021b59
--define_symbol xQueueSelectFromSet=0x00021b7b
--define_symbol xQueueSelectFromSetFromISR=0x00021b8d
--define_symbol xQueueSemaphoreTake=0x00021ba1
--define_symbol xQueueTakeMutexRecursive=0x00021d0d
--define_symbol xTaskCheckForTimeOut=0x00021d51
--define_symbol xTaskCreate=0x00021dc1
--define_symbol xTaskCreateStatic=0x00021e1d
--define_symbol xTaskGetCurrentTaskHandle=0x00021e8d
--define_symbol xTaskGetSchedulerState=0x00021e99
--define_symbol xTaskGetTickCount=0x00021eb5
--define_symbol xTaskIncrementTick=0x00021ec1
--define_symbol xTaskPriorityDisinherit=0x00021f8d
--define_symbol xTaskPriorityInherit=0x00022021
--define_symbol xTaskRemoveFromEventList=0x000220b5
--define_symbol xTaskResumeAll=0x00022131
--define_symbol xTimerCreate=0x000221f9
--define_symbol xTimerCreateStatic=0x0002222d
--define_symbol xTimerCreateTimerTask=0x00022265
--define_symbol xTimerGenericCommand=0x000222d1
