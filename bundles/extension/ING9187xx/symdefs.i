--define_symbol att_dispatch_client_can_send_now=0x000059e5
--define_symbol att_dispatch_client_request_can_send_now_event=0x000059eb
--define_symbol att_dispatch_register_client=0x000059f1
--define_symbol att_dispatch_register_server=0x00005a05
--define_symbol att_dispatch_server_can_send_now=0x00005a19
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005a1f
--define_symbol att_emit_general_event=0x00005ad1
--define_symbol att_server_can_send_packet_now=0x000061f1
--define_symbol att_server_get_mtu=0x000061f5
--define_symbol att_server_indicate=0x00006269
--define_symbol att_server_init=0x000062ed
--define_symbol att_server_notify=0x00006329
--define_symbol att_server_register_packet_handler=0x00006411
--define_symbol att_server_request_can_send_now_event=0x0000641d
--define_symbol att_set_db=0x00006439
--define_symbol att_set_read_callback=0x0000644d
--define_symbol att_set_write_callback=0x00006459
--define_symbol bd_addr_cmp=0x0000659d
--define_symbol bd_addr_copy=0x000065a3
--define_symbol bd_addr_to_str=0x000065ad
--define_symbol big_endian_read_16=0x000065e5
--define_symbol big_endian_read_32=0x000065ed
--define_symbol big_endian_store_16=0x00006601
--define_symbol big_endian_store_32=0x0000660d
--define_symbol btstack_memory_pool_create=0x00006877
--define_symbol btstack_memory_pool_free=0x000068a1
--define_symbol btstack_memory_pool_get=0x00006901
--define_symbol btstack_push_user_msg=0x0000691d
--define_symbol char_for_nibble=0x00006b95
--define_symbol eTaskConfirmSleepModeStatus=0x00006e29
--define_symbol gap_add_dev_to_periodic_list=0x000074a9
--define_symbol gap_add_whitelist=0x000074c1
--define_symbol gap_aes_encrypt=0x000074d5
--define_symbol gap_clear_white_lists=0x000074fd
--define_symbol gap_clr_adv_set=0x0000750d
--define_symbol gap_clr_periodic_adv_list=0x0000751d
--define_symbol gap_create_connection_cancel=0x00007549
--define_symbol gap_disconnect=0x00007559
--define_symbol gap_disconnect_all=0x00007585
--define_symbol gap_ext_create_connection=0x0000762d
--define_symbol gap_get_connection_parameter_range=0x000076f1
--define_symbol gap_le_read_channel_map=0x0000772d
--define_symbol gap_periodic_adv_create_sync=0x000077a1
--define_symbol gap_periodic_adv_create_sync_cancel=0x000077c5
--define_symbol gap_periodic_adv_term_sync=0x000077d5
--define_symbol gap_read_periodic_adv_list_size=0x00007869
--define_symbol gap_read_phy=0x00007879
--define_symbol gap_read_remote_info=0x0000788d
--define_symbol gap_read_remote_used_features=0x000078a1
--define_symbol gap_read_rssi=0x000078b5
--define_symbol gap_remove_whitelist=0x000078c9
--define_symbol gap_rmv_adv_set=0x00007955
--define_symbol gap_rmv_dev_from_periodic_list=0x00007969
--define_symbol gap_rx_test_v2=0x00007981
--define_symbol gap_set_adv_set_random_addr=0x000079c1
--define_symbol gap_set_connection_parameter_range=0x00007a0d
--define_symbol gap_set_def_phy=0x00007a25
--define_symbol gap_set_ext_adv_data=0x00007a3d
--define_symbol gap_set_ext_adv_enable=0x00007a55
--define_symbol gap_set_ext_adv_para=0x00007ad1
--define_symbol gap_set_ext_scan_enable=0x00007bb1
--define_symbol gap_set_ext_scan_para=0x00007bc9
--define_symbol gap_set_ext_scan_response_data=0x00007c71
--define_symbol gap_set_host_channel_classification=0x00007c89
--define_symbol gap_set_periodic_adv_data=0x00007c9d
--define_symbol gap_set_periodic_adv_enable=0x00007d11
--define_symbol gap_set_periodic_adv_para=0x00007d25
--define_symbol gap_set_phy=0x00007d3d
--define_symbol gap_set_random_device_address=0x00007d59
--define_symbol gap_start_ccm=0x00007dbd
--define_symbol gap_test_end=0x00007df1
--define_symbol gap_tx_test_v2=0x00007e01
--define_symbol gap_update_connection_parameters=0x00007e19
--define_symbol gap_vendor_tx_continuous_wave=0x00007e3d
--define_symbol gatt_client_cancel_write=0x0000834d
--define_symbol gatt_client_discover_characteristic_descriptors=0x00008373
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x000083b3
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008403
--define_symbol gatt_client_discover_characteristics_for_service=0x00008453
--define_symbol gatt_client_discover_primary_services=0x00008489
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x000084bb
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x000084ff
--define_symbol gatt_client_execute_write=0x0000853b
--define_symbol gatt_client_find_included_services_for_service=0x00008561
--define_symbol gatt_client_get_mtu=0x0000858f
--define_symbol gatt_client_is_ready=0x00008639
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x0000864f
--define_symbol gatt_client_prepare_write=0x00008673
--define_symbol gatt_client_pts_suppress_mtu_exchange=0x000086b1
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x000086bd
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x000086e7
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x000086ed
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x0000871b
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008721
--define_symbol gatt_client_read_multiple_characteristic_values=0x0000874f
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x0000877f
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x000087ad
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x000087f9
--define_symbol gatt_client_register_handler=0x00008845
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008851
--define_symbol gatt_client_signed_write_without_response=0x00008c81
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008d45
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008d7f
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008dd1
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008de1
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008e1d
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008e2d
--define_symbol gatt_client_write_value_of_characteristic=0x00008e69
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008e9f
--define_symbol hci_add_event_handler=0x0000a351
--define_symbol hci_power_control=0x0000aae9
--define_symbol hci_register_acl_packet_handler=0x0000ac9d
--define_symbol kv_commit=0x0000b325
--define_symbol kv_get=0x0000b37d
--define_symbol kv_init=0x0000b395
--define_symbol kv_put=0x0000b3fd
--define_symbol kv_remove=0x0000b475
--define_symbol kv_remove_all=0x0000b4b1
--define_symbol kv_value_modified=0x0000b4f5
--define_symbol kv_visit=0x0000b4f9
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b5b9
--define_symbol l2cap_can_send_packet_now=0x0000b5bd
--define_symbol l2cap_create_channel=0x0000b775
--define_symbol l2cap_disconnect=0x0000b8ad
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000bb21
--define_symbol l2cap_init=0x0000bfa1
--define_symbol l2cap_le_send_flow_control_credit=0x0000bfe9
--define_symbol l2cap_max_le_mtu=0x0000c231
--define_symbol l2cap_max_mtu=0x0000c235
--define_symbol l2cap_next_local_cid=0x0000c239
--define_symbol l2cap_next_sig_id=0x0000c249
--define_symbol l2cap_register_fixed_channel=0x0000c2e1
--define_symbol l2cap_register_packet_handler=0x0000c2fd
--define_symbol l2cap_register_service=0x0000c309
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c3f1
--define_symbol l2cap_request_can_send_now_event=0x0000c415
--define_symbol l2cap_request_connection_parameter_update=0x0000c42f
--define_symbol l2cap_require_security_level_2_for_outgoing_sdp=0x0000c461
--define_symbol l2cap_send=0x0000c825
--define_symbol l2cap_send_connectionless=0x0000c89d
--define_symbol l2cap_send_connectionless3=0x0000c92d
--define_symbol l2cap_send_echo_request=0x0000c9c5
--define_symbol l2cap_send_signaling_le=0x0000ca29
--define_symbol l2cap_unregister_service=0x0000ca81
--define_symbol ll_ackable_packet_alloc=0x0000cc4f
--define_symbol ll_ackable_packet_get_status=0x0000cd37
--define_symbol ll_ackable_packet_run=0x0000cda9
--define_symbol ll_ackable_packet_set_tx_data=0x0000ce51
--define_symbol ll_free=0x0000ce6b
--define_symbol ll_hint_on_ce_len=0x0000ce75
--define_symbol ll_malloc=0x0000ceb1
--define_symbol ll_query_timing_info=0x0000cfe9
--define_symbol ll_raw_packet_alloc=0x0000d035
--define_symbol ll_raw_packet_free=0x0000d0e9
--define_symbol ll_raw_packet_get_rx_data=0x0000d113
--define_symbol ll_raw_packet_recv=0x0000d1a9
--define_symbol ll_raw_packet_send=0x0000d23d
--define_symbol ll_raw_packet_set_param=0x0000d2ad
--define_symbol ll_raw_packet_set_tx_data=0x0000d313
--define_symbol ll_set_adv_coded_scheme=0x0000d4dd
--define_symbol ll_set_conn_coded_scheme=0x0000d50d
--define_symbol ll_set_conn_latency=0x0000d539
--define_symbol ll_set_conn_tx_power=0x0000d569
--define_symbol ll_set_def_antenna=0x0000d5b1
--define_symbol ll_set_initiating_coded_scheme=0x0000d5cd
--define_symbol nibble_for_char=0x0001d28d
--define_symbol platform_32k_rc_auto_tune=0x0001d32d
--define_symbol platform_32k_rc_tune=0x0001d3a9
--define_symbol platform_calibrate_32k=0x0001d3bd
--define_symbol platform_config=0x0001d3c1
--define_symbol platform_get_heap_status=0x0001d471
--define_symbol platform_get_us_time=0x0001d489
--define_symbol platform_get_version=0x0001d48d
--define_symbol platform_hrng=0x0001d495
--define_symbol platform_install_isr_stack=0x0001d49d
--define_symbol platform_patch_rf_init_data=0x0001d4a9
--define_symbol platform_printf=0x0001d4b5
--define_symbol platform_raise_assertion=0x0001d4c9
--define_symbol platform_rand=0x0001d4dd
--define_symbol platform_read_info=0x0001d4e1
--define_symbol platform_read_persistent_reg=0x0001d4fd
--define_symbol platform_reset=0x0001d50d
--define_symbol platform_set_evt_callback=0x0001d541
--define_symbol platform_set_irq_callback=0x0001d555
--define_symbol platform_set_rf_clk_source=0x0001d58d
--define_symbol platform_set_rf_init_data=0x0001d599
--define_symbol platform_set_rf_power_mapping=0x0001d5a5
--define_symbol platform_shutdown=0x0001d5b1
--define_symbol platform_switch_app=0x0001d5b5
--define_symbol platform_trace_raw=0x0001d5e1
--define_symbol platform_write_persistent_reg=0x0001d5f5
--define_symbol printf_hexdump=0x0001d605
--define_symbol pvPortMalloc=0x0001e0c5
--define_symbol pvTaskIncrementMutexHeldCount=0x0001e1ad
--define_symbol pvTimerGetTimerID=0x0001e1c5
--define_symbol pxPortInitialiseStack=0x0001e1f1
--define_symbol reverse_128=0x0001e399
--define_symbol reverse_24=0x0001e39f
--define_symbol reverse_48=0x0001e3a5
--define_symbol reverse_56=0x0001e3ab
--define_symbol reverse_64=0x0001e3b1
--define_symbol reverse_bd_addr=0x0001e3b7
--define_symbol reverse_bytes=0x0001e3bd
--define_symbol sm_add_event_handler=0x0001e509
--define_symbol sm_address_resolution_lookup=0x0001e635
--define_symbol sm_authenticated=0x0001e70f
--define_symbol sm_authorization_decline=0x0001e71d
--define_symbol sm_authorization_grant=0x0001e73d
--define_symbol sm_authorization_state=0x0001e75d
--define_symbol sm_bonding_decline=0x0001e779
--define_symbol sm_config=0x0001eb51
--define_symbol sm_encryption_key_size=0x0001ec5d
--define_symbol sm_just_works_confirm=0x0001f42d
--define_symbol sm_le_device_key=0x0001f67d
--define_symbol sm_passkey_input=0x0001f715
--define_symbol sm_private_random_address_generation_get=0x0001faa1
--define_symbol sm_private_random_address_generation_get_mode=0x0001faa9
--define_symbol sm_private_random_address_generation_set_mode=0x0001fab5
--define_symbol sm_private_random_address_generation_set_update_period=0x0001fadd
--define_symbol sm_register_oob_data_callback=0x0001fb15
--define_symbol sm_request_pairing=0x0001fb21
--define_symbol sm_send_security_request=0x0002055b
--define_symbol sm_set_accepted_stk_generation_methods=0x00020581
--define_symbol sm_set_authentication_requirements=0x0002058d
--define_symbol sm_set_encryption_key_size_range=0x00020599
--define_symbol sscanf_bd_addr=0x00020895
--define_symbol sysSetPublicDeviceAddr=0x00020bd1
--define_symbol uuid128_to_str=0x00021175
--define_symbol uuid_add_bluetooth_prefix=0x000211cd
--define_symbol uuid_has_bluetooth_prefix=0x000211ed
--define_symbol uxQueueMessagesWaiting=0x00021231
--define_symbol uxQueueMessagesWaitingFromISR=0x00021259
--define_symbol uxQueueSpacesAvailable=0x00021275
--define_symbol uxTaskGetStackHighWaterMark=0x000212a1
--define_symbol vPortEnterCritical=0x00021359
--define_symbol vPortExitCritical=0x00021399
--define_symbol vPortFree=0x000213c5
--define_symbol vPortSuppressTicksAndSleep=0x00021459
--define_symbol vPortValidateInterruptPriority=0x00021531
--define_symbol vQueueDelete=0x00021585
--define_symbol vQueueWaitForMessageRestricted=0x000215b1
--define_symbol vTaskDelay=0x000215f9
--define_symbol vTaskInternalSetTimeOutState=0x00021645
--define_symbol vTaskMissedYield=0x00021655
--define_symbol vTaskPlaceOnEventList=0x00021661
--define_symbol vTaskPlaceOnEventListRestricted=0x00021699
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x000216d9
--define_symbol vTaskStartScheduler=0x00021785
--define_symbol vTaskStepTick=0x00021815
--define_symbol vTaskSuspendAll=0x00021845
--define_symbol vTaskSwitchContext=0x00021855
--define_symbol xPortStartScheduler=0x000218fd
--define_symbol xQueueAddToSet=0x000219b9
--define_symbol xQueueCreateCountingSemaphore=0x000219dd
--define_symbol xQueueCreateCountingSemaphoreStatic=0x00021a19
--define_symbol xQueueCreateMutex=0x00021a5d
--define_symbol xQueueCreateMutexStatic=0x00021a73
--define_symbol xQueueCreateSet=0x00021a8d
--define_symbol xQueueGenericCreate=0x00021a95
--define_symbol xQueueGenericCreateStatic=0x00021ae1
--define_symbol xQueueGenericReset=0x00021b49
--define_symbol xQueueGenericSend=0x00021bd5
--define_symbol xQueueGenericSendFromISR=0x00021d41
--define_symbol xQueueGiveFromISR=0x00021e01
--define_symbol xQueueGiveMutexRecursive=0x00021ea5
--define_symbol xQueueIsQueueEmptyFromISR=0x00021ee5
--define_symbol xQueueIsQueueFullFromISR=0x00021f09
--define_symbol xQueuePeek=0x00021f31
--define_symbol xQueuePeekFromISR=0x00022059
--define_symbol xQueueReceive=0x000220c5
--define_symbol xQueueReceiveFromISR=0x000221f1
--define_symbol xQueueRemoveFromSet=0x00022285
--define_symbol xQueueSelectFromSet=0x000222a7
--define_symbol xQueueSelectFromSetFromISR=0x000222b9
--define_symbol xQueueSemaphoreTake=0x000222cd
--define_symbol xQueueTakeMutexRecursive=0x00022439
--define_symbol xTaskCheckForTimeOut=0x0002247d
--define_symbol xTaskCreate=0x000224ed
--define_symbol xTaskCreateStatic=0x00022549
--define_symbol xTaskGetCurrentTaskHandle=0x000225b9
--define_symbol xTaskGetSchedulerState=0x000225c5
--define_symbol xTaskGetTickCount=0x000225e1
--define_symbol xTaskGetTickCountFromISR=0x000225ed
--define_symbol xTaskIncrementTick=0x000225fd
--define_symbol xTaskPriorityDisinherit=0x000226c9
--define_symbol xTaskPriorityInherit=0x0002275d
--define_symbol xTaskRemoveFromEventList=0x000227f1
--define_symbol xTaskResumeAll=0x00022871
--define_symbol xTimerCreate=0x00022939
--define_symbol xTimerCreateStatic=0x0002296d
--define_symbol xTimerCreateTimerTask=0x000229a5
--define_symbol xTimerGenericCommand=0x00022a11
--define_symbol xTimerGetExpiryTime=0x00022a81
