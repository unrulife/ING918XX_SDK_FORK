--define_symbol att_dispatch_client_can_send_now=0x000059c1
--define_symbol att_dispatch_client_request_can_send_now_event=0x000059c7
--define_symbol att_dispatch_register_client=0x000059cd
--define_symbol att_dispatch_register_server=0x000059e1
--define_symbol att_dispatch_server_can_send_now=0x000059f5
--define_symbol att_dispatch_server_request_can_send_now_event=0x000059fb
--define_symbol att_emit_general_event=0x00005aad
--define_symbol att_server_can_send_packet_now=0x000061cd
--define_symbol att_server_get_mtu=0x000061d1
--define_symbol att_server_indicate=0x00006245
--define_symbol att_server_init=0x000062c9
--define_symbol att_server_notify=0x00006305
--define_symbol att_server_register_packet_handler=0x000063ed
--define_symbol att_server_request_can_send_now_event=0x000063f9
--define_symbol att_set_db=0x00006415
--define_symbol att_set_read_callback=0x00006429
--define_symbol att_set_write_callback=0x00006435
--define_symbol bd_addr_cmp=0x00006579
--define_symbol bd_addr_copy=0x0000657f
--define_symbol bd_addr_to_str=0x00006589
--define_symbol big_endian_read_16=0x000065c1
--define_symbol big_endian_read_32=0x000065c9
--define_symbol big_endian_store_16=0x000065dd
--define_symbol big_endian_store_32=0x000065e9
--define_symbol btstack_memory_pool_create=0x00006847
--define_symbol btstack_memory_pool_free=0x00006871
--define_symbol btstack_memory_pool_get=0x000068d1
--define_symbol btstack_push_user_msg=0x000068ed
--define_symbol char_for_nibble=0x00006b65
--define_symbol eTaskConfirmSleepModeStatus=0x00006df9
--define_symbol gap_add_dev_to_periodic_list=0x00007479
--define_symbol gap_add_whitelist=0x00007491
--define_symbol gap_aes_encrypt=0x000074a5
--define_symbol gap_clear_white_lists=0x000074cd
--define_symbol gap_clr_adv_set=0x000074dd
--define_symbol gap_clr_periodic_adv_list=0x000074ed
--define_symbol gap_create_connection_cancel=0x00007519
--define_symbol gap_disconnect=0x00007529
--define_symbol gap_disconnect_all=0x00007555
--define_symbol gap_ext_create_connection=0x000075fd
--define_symbol gap_get_connection_parameter_range=0x000076c1
--define_symbol gap_le_read_channel_map=0x000076fd
--define_symbol gap_periodic_adv_create_sync=0x00007771
--define_symbol gap_periodic_adv_create_sync_cancel=0x00007795
--define_symbol gap_periodic_adv_term_sync=0x000077a5
--define_symbol gap_read_periodic_adv_list_size=0x00007839
--define_symbol gap_read_phy=0x00007849
--define_symbol gap_read_remote_info=0x0000785d
--define_symbol gap_read_remote_used_features=0x00007871
--define_symbol gap_read_rssi=0x00007885
--define_symbol gap_remove_whitelist=0x00007899
--define_symbol gap_rmv_adv_set=0x00007925
--define_symbol gap_rmv_dev_from_periodic_list=0x00007939
--define_symbol gap_set_adv_set_random_addr=0x00007979
--define_symbol gap_set_connection_parameter_range=0x000079c5
--define_symbol gap_set_def_phy=0x000079dd
--define_symbol gap_set_ext_adv_data=0x000079f5
--define_symbol gap_set_ext_adv_enable=0x00007a0d
--define_symbol gap_set_ext_adv_para=0x00007a89
--define_symbol gap_set_ext_scan_enable=0x00007b69
--define_symbol gap_set_ext_scan_para=0x00007b81
--define_symbol gap_set_ext_scan_response_data=0x00007c29
--define_symbol gap_set_host_channel_classification=0x00007c41
--define_symbol gap_set_periodic_adv_data=0x00007c55
--define_symbol gap_set_periodic_adv_enable=0x00007cc9
--define_symbol gap_set_periodic_adv_para=0x00007cdd
--define_symbol gap_set_phy=0x00007cf5
--define_symbol gap_set_random_device_address=0x00007d11
--define_symbol gap_start_ccm=0x00007d75
--define_symbol gap_update_connection_parameters=0x00007da9
--define_symbol gatt_client_cancel_write=0x000082c1
--define_symbol gatt_client_discover_characteristic_descriptors=0x000082e7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x00008327
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008377
--define_symbol gatt_client_discover_characteristics_for_service=0x000083c7
--define_symbol gatt_client_discover_primary_services=0x000083fd
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x0000842f
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008473
--define_symbol gatt_client_execute_write=0x000084af
--define_symbol gatt_client_find_included_services_for_service=0x000084d5
--define_symbol gatt_client_get_mtu=0x00008503
--define_symbol gatt_client_is_ready=0x000085ad
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x000085c3
--define_symbol gatt_client_prepare_write=0x000085e7
--define_symbol gatt_client_pts_suppress_mtu_exchange=0x00008625
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008631
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x0000865b
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008661
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x0000868f
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008695
--define_symbol gatt_client_read_multiple_characteristic_values=0x000086c3
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x000086f3
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008721
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x0000876d
--define_symbol gatt_client_register_handler=0x000087b9
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x000087c5
--define_symbol gatt_client_signed_write_without_response=0x00008bf5
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008cb9
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008cf3
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008d45
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008d55
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008d91
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008da1
--define_symbol gatt_client_write_value_of_characteristic=0x00008ddd
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008e13
--define_symbol hci_add_event_handler=0x0000a2c5
--define_symbol hci_power_control=0x0000aa75
--define_symbol hci_register_acl_packet_handler=0x0000ac29
--define_symbol kv_commit=0x0000b2b1
--define_symbol kv_get=0x0000b309
--define_symbol kv_init=0x0000b321
--define_symbol kv_put=0x0000b389
--define_symbol kv_remove=0x0000b401
--define_symbol kv_remove_all=0x0000b43d
--define_symbol kv_value_modified=0x0000b481
--define_symbol kv_visit=0x0000b485
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b545
--define_symbol l2cap_can_send_packet_now=0x0000b549
--define_symbol l2cap_create_channel=0x0000b701
--define_symbol l2cap_disconnect=0x0000b839
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000badd
--define_symbol l2cap_init=0x0000bf5d
--define_symbol l2cap_le_send_flow_control_credit=0x0000bfa5
--define_symbol l2cap_max_le_mtu=0x0000c209
--define_symbol l2cap_max_mtu=0x0000c20d
--define_symbol l2cap_next_local_cid=0x0000c211
--define_symbol l2cap_next_sig_id=0x0000c221
--define_symbol l2cap_register_fixed_channel=0x0000c2b9
--define_symbol l2cap_register_packet_handler=0x0000c2d5
--define_symbol l2cap_register_service=0x0000c2e1
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c3c9
--define_symbol l2cap_request_can_send_now_event=0x0000c3ed
--define_symbol l2cap_request_connection_parameter_update=0x0000c407
--define_symbol l2cap_require_security_level_2_for_outgoing_sdp=0x0000c439
--define_symbol l2cap_send=0x0000c7fd
--define_symbol l2cap_send_connectionless=0x0000c875
--define_symbol l2cap_send_connectionless3=0x0000c905
--define_symbol l2cap_send_echo_request=0x0000c99d
--define_symbol l2cap_send_signaling_le=0x0000ca01
--define_symbol l2cap_unregister_service=0x0000ca59
--define_symbol ll_free=0x0000cc27
--define_symbol ll_hint_on_ce_len=0x0000cc31
--define_symbol ll_malloc=0x0000cc6d
--define_symbol ll_query_timing_info=0x0000cda5
--define_symbol ll_raw_packet_alloc=0x0000cdf1
--define_symbol ll_raw_packet_free=0x0000cea5
--define_symbol ll_raw_packet_get_rx_data=0x0000cecf
--define_symbol ll_raw_packet_recv=0x0000cf65
--define_symbol ll_raw_packet_send=0x0000cff9
--define_symbol ll_raw_packet_set_param=0x0000d069
--define_symbol ll_raw_packet_set_tx_data=0x0000d0cf
--define_symbol ll_set_adv_coded_scheme=0x0000d299
--define_symbol ll_set_conn_coded_scheme=0x0000d2c9
--define_symbol ll_set_conn_latency=0x0000d2f5
--define_symbol ll_set_conn_tx_power=0x0000d325
--define_symbol ll_set_def_antenna=0x0000d36d
--define_symbol ll_set_initiating_coded_scheme=0x0000d389
--define_symbol nibble_for_char=0x0001cf59
--define_symbol platform_32k_rc_auto_tune=0x0001d011
--define_symbol platform_32k_rc_tune=0x0001d08d
--define_symbol platform_calibrate_32k=0x0001d0a1
--define_symbol platform_config=0x0001d0a5
--define_symbol platform_get_heap_status=0x0001d155
--define_symbol platform_get_us_time=0x0001d16d
--define_symbol platform_get_version=0x0001d171
--define_symbol platform_hrng=0x0001d179
--define_symbol platform_install_isr_stack=0x0001d181
--define_symbol platform_patch_rf_init_data=0x0001d18d
--define_symbol platform_printf=0x0001d199
--define_symbol platform_raise_assertion=0x0001d1ad
--define_symbol platform_rand=0x0001d1c1
--define_symbol platform_read_info=0x0001d1c5
--define_symbol platform_read_persistent_reg=0x0001d1e1
--define_symbol platform_reset=0x0001d1f1
--define_symbol platform_set_evt_callback=0x0001d225
--define_symbol platform_set_irq_callback=0x0001d239
--define_symbol platform_set_rf_clk_source=0x0001d271
--define_symbol platform_set_rf_init_data=0x0001d27d
--define_symbol platform_set_rf_power_mapping=0x0001d289
--define_symbol platform_shutdown=0x0001d295
--define_symbol platform_switch_app=0x0001d299
--define_symbol platform_trace_raw=0x0001d2c5
--define_symbol platform_write_persistent_reg=0x0001d2d9
--define_symbol printf_hexdump=0x0001d2e9
--define_symbol pvPortMalloc=0x0001de19
--define_symbol pvTaskIncrementMutexHeldCount=0x0001df01
--define_symbol pvTimerGetTimerID=0x0001df19
--define_symbol pxPortInitialiseStack=0x0001df45
--define_symbol reverse_128=0x0001e0ed
--define_symbol reverse_24=0x0001e0f3
--define_symbol reverse_48=0x0001e0f9
--define_symbol reverse_56=0x0001e0ff
--define_symbol reverse_64=0x0001e105
--define_symbol reverse_bd_addr=0x0001e10b
--define_symbol reverse_bytes=0x0001e111
--define_symbol sm_add_event_handler=0x0001e25d
--define_symbol sm_address_resolution_lookup=0x0001e389
--define_symbol sm_authenticated=0x0001e463
--define_symbol sm_authorization_decline=0x0001e471
--define_symbol sm_authorization_grant=0x0001e491
--define_symbol sm_authorization_state=0x0001e4b1
--define_symbol sm_bonding_decline=0x0001e4cd
--define_symbol sm_config=0x0001e8a5
--define_symbol sm_encryption_key_size=0x0001e9b1
--define_symbol sm_just_works_confirm=0x0001f181
--define_symbol sm_le_device_key=0x0001f3d1
--define_symbol sm_passkey_input=0x0001f469
--define_symbol sm_private_random_address_generation_get=0x0001f7f5
--define_symbol sm_private_random_address_generation_get_mode=0x0001f7fd
--define_symbol sm_private_random_address_generation_set_mode=0x0001f809
--define_symbol sm_private_random_address_generation_set_update_period=0x0001f831
--define_symbol sm_register_oob_data_callback=0x0001f869
--define_symbol sm_request_pairing=0x0001f875
--define_symbol sm_send_security_request=0x000202af
--define_symbol sm_set_accepted_stk_generation_methods=0x000202d5
--define_symbol sm_set_authentication_requirements=0x000202e1
--define_symbol sm_set_encryption_key_size_range=0x000202ed
--define_symbol sscanf_bd_addr=0x000205e9
--define_symbol sysSetPublicDeviceAddr=0x00020905
--define_symbol uuid128_to_str=0x00020ea9
--define_symbol uuid_add_bluetooth_prefix=0x00020f01
--define_symbol uuid_has_bluetooth_prefix=0x00020f21
--define_symbol uxQueueMessagesWaiting=0x00020f65
--define_symbol uxQueueMessagesWaitingFromISR=0x00020f8d
--define_symbol uxQueueSpacesAvailable=0x00020fa9
--define_symbol uxTaskGetStackHighWaterMark=0x00020fd5
--define_symbol vPortEnterCritical=0x0002108d
--define_symbol vPortExitCritical=0x000210cd
--define_symbol vPortFree=0x000210f9
--define_symbol vPortSuppressTicksAndSleep=0x0002118d
--define_symbol vPortValidateInterruptPriority=0x00021265
--define_symbol vQueueDelete=0x000212b9
--define_symbol vQueueWaitForMessageRestricted=0x000212e5
--define_symbol vTaskDelay=0x0002132d
--define_symbol vTaskInternalSetTimeOutState=0x00021379
--define_symbol vTaskMissedYield=0x00021389
--define_symbol vTaskPlaceOnEventList=0x00021395
--define_symbol vTaskPlaceOnEventListRestricted=0x000213cd
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x0002140d
--define_symbol vTaskStartScheduler=0x000214b9
--define_symbol vTaskStepTick=0x00021549
--define_symbol vTaskSuspendAll=0x00021579
--define_symbol vTaskSwitchContext=0x00021589
--define_symbol xPortStartScheduler=0x00021631
--define_symbol xQueueAddToSet=0x000216ed
--define_symbol xQueueCreateCountingSemaphore=0x00021711
--define_symbol xQueueCreateCountingSemaphoreStatic=0x0002174d
--define_symbol xQueueCreateMutex=0x00021791
--define_symbol xQueueCreateMutexStatic=0x000217a7
--define_symbol xQueueCreateSet=0x000217c1
--define_symbol xQueueGenericCreate=0x000217c9
--define_symbol xQueueGenericCreateStatic=0x00021815
--define_symbol xQueueGenericReset=0x0002187d
--define_symbol xQueueGenericSend=0x00021909
--define_symbol xQueueGenericSendFromISR=0x00021a75
--define_symbol xQueueGiveFromISR=0x00021b35
--define_symbol xQueueGiveMutexRecursive=0x00021bd9
--define_symbol xQueueIsQueueEmptyFromISR=0x00021c19
--define_symbol xQueueIsQueueFullFromISR=0x00021c3d
--define_symbol xQueuePeek=0x00021c65
--define_symbol xQueuePeekFromISR=0x00021d8d
--define_symbol xQueueReceive=0x00021df9
--define_symbol xQueueReceiveFromISR=0x00021f25
--define_symbol xQueueRemoveFromSet=0x00021fb9
--define_symbol xQueueSelectFromSet=0x00021fdb
--define_symbol xQueueSelectFromSetFromISR=0x00021fed
--define_symbol xQueueSemaphoreTake=0x00022001
--define_symbol xQueueTakeMutexRecursive=0x0002216d
--define_symbol xTaskCheckForTimeOut=0x000221b1
--define_symbol xTaskCreate=0x00022221
--define_symbol xTaskCreateStatic=0x0002227d
--define_symbol xTaskGetCurrentTaskHandle=0x000222ed
--define_symbol xTaskGetSchedulerState=0x000222f9
--define_symbol xTaskGetTickCount=0x00022315
--define_symbol xTaskGetTickCountFromISR=0x00022321
--define_symbol xTaskIncrementTick=0x00022331
--define_symbol xTaskPriorityDisinherit=0x000223fd
--define_symbol xTaskPriorityInherit=0x00022491
--define_symbol xTaskRemoveFromEventList=0x00022525
--define_symbol xTaskResumeAll=0x000225a5
--define_symbol xTimerCreate=0x0002266d
--define_symbol xTimerCreateStatic=0x000226a1
--define_symbol xTimerCreateTimerTask=0x000226d9
--define_symbol xTimerGenericCommand=0x00022745
--define_symbol xTimerGetExpiryTime=0x000227b5
