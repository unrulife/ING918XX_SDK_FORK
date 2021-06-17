--define_symbol att_dispatch_client_can_send_now=0x00005af5
--define_symbol att_dispatch_client_request_can_send_now_event=0x00005afb
--define_symbol att_dispatch_register_client=0x00005b01
--define_symbol att_dispatch_register_server=0x00005b15
--define_symbol att_dispatch_server_can_send_now=0x00005b29
--define_symbol att_dispatch_server_request_can_send_now_event=0x00005b2f
--define_symbol att_emit_general_event=0x00005be1
--define_symbol att_server_can_send_packet_now=0x000062f5
--define_symbol att_server_deferred_read_response=0x000062f9
--define_symbol att_server_get_mtu=0x00006311
--define_symbol att_server_indicate=0x00006389
--define_symbol att_server_init=0x0000640d
--define_symbol att_server_notify=0x00006449
--define_symbol att_server_register_packet_handler=0x00006561
--define_symbol att_server_request_can_send_now_event=0x0000656d
--define_symbol att_set_db=0x00006589
--define_symbol att_set_read_callback=0x0000659d
--define_symbol att_set_write_callback=0x000065a9
--define_symbol bd_addr_cmp=0x00006719
--define_symbol bd_addr_copy=0x0000671f
--define_symbol bd_addr_to_str=0x00006729
--define_symbol big_endian_read_16=0x00006761
--define_symbol big_endian_read_32=0x00006769
--define_symbol big_endian_store_16=0x0000677d
--define_symbol big_endian_store_32=0x00006789
--define_symbol btstack_config=0x000068dd
--define_symbol btstack_memory_pool_create=0x00006a1b
--define_symbol btstack_memory_pool_free=0x00006a45
--define_symbol btstack_memory_pool_get=0x00006aa5
--define_symbol btstack_push_user_msg=0x00006ac1
--define_symbol char_for_nibble=0x00006d89
--define_symbol eTaskConfirmSleepModeStatus=0x00007031
--define_symbol gap_add_dev_to_periodic_list=0x00007751
--define_symbol gap_add_whitelist=0x00007769
--define_symbol gap_aes_encrypt=0x0000777d
--define_symbol gap_clear_white_lists=0x000077a5
--define_symbol gap_clr_adv_set=0x000077b5
--define_symbol gap_clr_periodic_adv_list=0x000077c5
--define_symbol gap_create_connection_cancel=0x000077f1
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x00007801
--define_symbol gap_disconnect=0x00007819
--define_symbol gap_disconnect_all=0x00007845
--define_symbol gap_ext_create_connection=0x000078ed
--define_symbol gap_get_connection_parameter_range=0x000079b1
--define_symbol gap_le_read_channel_map=0x000079e9
--define_symbol gap_periodic_adv_create_sync=0x00007a5d
--define_symbol gap_periodic_adv_create_sync_cancel=0x00007a81
--define_symbol gap_periodic_adv_set_info_transfer=0x00007a91
--define_symbol gap_periodic_adv_sync_transfer=0x00007aa9
--define_symbol gap_periodic_adv_sync_transfer_param=0x00007ac1
--define_symbol gap_periodic_adv_term_sync=0x00007add
--define_symbol gap_read_antenna_info=0x00007b71
--define_symbol gap_read_periodic_adv_list_size=0x00007b81
--define_symbol gap_read_phy=0x00007b91
--define_symbol gap_read_remote_info=0x00007ba5
--define_symbol gap_read_remote_used_features=0x00007bb9
--define_symbol gap_read_rssi=0x00007bcd
--define_symbol gap_remove_whitelist=0x00007be1
--define_symbol gap_rmv_adv_set=0x00007c6d
--define_symbol gap_rmv_dev_from_periodic_list=0x00007c81
--define_symbol gap_rx_test_v2=0x00007c99
--define_symbol gap_rx_test_v3=0x00007cb1
--define_symbol gap_set_adv_set_random_addr=0x00007d01
--define_symbol gap_set_connection_cte_request_enable=0x00007d51
--define_symbol gap_set_connection_cte_response_enable=0x00007d6d
--define_symbol gap_set_connection_cte_rx_param=0x00007d81
--define_symbol gap_set_connection_cte_tx_param=0x00007ddd
--define_symbol gap_set_connection_parameter_range=0x00007e31
--define_symbol gap_set_connectionless_cte_tx_enable=0x00007e4d
--define_symbol gap_set_connectionless_cte_tx_param=0x00007e61
--define_symbol gap_set_connectionless_iq_sampling_enable=0x00007ec1
--define_symbol gap_set_data_length=0x00007f25
--define_symbol gap_set_def_phy=0x00007f41
--define_symbol gap_set_ext_adv_data=0x00007f59
--define_symbol gap_set_ext_adv_enable=0x00007f71
--define_symbol gap_set_ext_adv_para=0x00007fed
--define_symbol gap_set_ext_scan_enable=0x000080cd
--define_symbol gap_set_ext_scan_para=0x000080e5
--define_symbol gap_set_ext_scan_response_data=0x0000818d
--define_symbol gap_set_host_channel_classification=0x000081a5
--define_symbol gap_set_periodic_adv_data=0x000081b9
--define_symbol gap_set_periodic_adv_enable=0x0000822d
--define_symbol gap_set_periodic_adv_para=0x00008241
--define_symbol gap_set_periodic_adv_rx_enable=0x00008259
--define_symbol gap_set_phy=0x0000826d
--define_symbol gap_set_random_device_address=0x00008289
--define_symbol gap_start_ccm=0x000082ed
--define_symbol gap_test_end=0x00008321
--define_symbol gap_tx_test_v2=0x00008331
--define_symbol gap_tx_test_v3=0x00008349
--define_symbol gap_update_connection_parameters=0x00008371
--define_symbol gap_vendor_tx_continuous_wave=0x00008395
--define_symbol gatt_client_cancel_write=0x000088bd
--define_symbol gatt_client_discover_characteristic_descriptors=0x000088e3
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x00008923
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008973
--define_symbol gatt_client_discover_characteristics_for_service=0x000089c3
--define_symbol gatt_client_discover_primary_services=0x000089f9
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x00008a2b
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008a6f
--define_symbol gatt_client_execute_write=0x00008aab
--define_symbol gatt_client_find_included_services_for_service=0x00008ad1
--define_symbol gatt_client_get_mtu=0x00008aff
--define_symbol gatt_client_is_ready=0x00008ba1
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x00008bb7
--define_symbol gatt_client_prepare_write=0x00008bd9
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008c15
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008c3f
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008c45
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008c73
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x00008c79
--define_symbol gatt_client_read_multiple_characteristic_values=0x00008ca7
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x00008cd7
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008d05
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008d51
--define_symbol gatt_client_register_handler=0x00008d9d
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008da9
--define_symbol gatt_client_signed_write_without_response=0x000091d9
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x0000929d
--define_symbol gatt_client_write_client_characteristic_configuration=0x000092d7
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00009329
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00009339
--define_symbol gatt_client_write_long_value_of_characteristic=0x00009375
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00009385
--define_symbol gatt_client_write_value_of_characteristic=0x000093c1
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x000093f7
--define_symbol hci_add_event_handler=0x0000a8f9
--define_symbol hci_power_control=0x0000b085
--define_symbol hci_register_acl_packet_handler=0x0000b239
--define_symbol kv_commit=0x0000b8a9
--define_symbol kv_get=0x0000b901
--define_symbol kv_init=0x0000b919
--define_symbol kv_put=0x0000b981
--define_symbol kv_remove=0x0000b9f9
--define_symbol kv_remove_all=0x0000ba35
--define_symbol kv_value_modified=0x0000ba79
--define_symbol kv_visit=0x0000ba7d
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000bb3d
--define_symbol l2cap_can_send_packet_now=0x0000bb41
--define_symbol l2cap_create_channel=0x0000bcf9
--define_symbol l2cap_disconnect=0x0000be31
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000c0a5
--define_symbol l2cap_init=0x0000c525
--define_symbol l2cap_le_send_flow_control_credit=0x0000c56d
--define_symbol l2cap_max_le_mtu=0x0000c7f1
--define_symbol l2cap_max_mtu=0x0000c7f5
--define_symbol l2cap_next_local_cid=0x0000c7f9
--define_symbol l2cap_next_sig_id=0x0000c809
--define_symbol l2cap_register_fixed_channel=0x0000c8a1
--define_symbol l2cap_register_packet_handler=0x0000c8bd
--define_symbol l2cap_register_service=0x0000c8c9
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c9b1
--define_symbol l2cap_request_can_send_now_event=0x0000c9d5
--define_symbol l2cap_request_connection_parameter_update=0x0000c9ef
--define_symbol l2cap_require_security_level_2_for_outgoing_sdp=0x0000ca21
--define_symbol l2cap_send=0x0000cdb5
--define_symbol l2cap_send_connectionless=0x0000ce2d
--define_symbol l2cap_send_connectionless3=0x0000cebd
--define_symbol l2cap_send_echo_request=0x0000cf55
--define_symbol l2cap_send_signaling_le=0x0000cfb9
--define_symbol l2cap_unregister_service=0x0000d011
--define_symbol ll_free=0x0000d1df
--define_symbol ll_hint_on_ce_len=0x0000d1e9
--define_symbol ll_legacy_adv_set_interval=0x0000d229
--define_symbol ll_malloc=0x0000d239
--define_symbol ll_query_timing_info=0x0000d371
--define_symbol ll_scan_set_fixed_channel=0x0000d415
--define_symbol ll_set_adv_access_address=0x0000d529
--define_symbol ll_set_adv_coded_scheme=0x0000d535
--define_symbol ll_set_conn_coded_scheme=0x0000d565
--define_symbol ll_set_conn_latency=0x0000d591
--define_symbol ll_set_conn_tx_power=0x0000d5c1
--define_symbol ll_set_def_antenna=0x0000d609
--define_symbol ll_set_initiating_coded_scheme=0x0000d625
--define_symbol ll_set_max_conn_number=0x0000d631
--define_symbol nibble_for_char=0x0001e14d
--define_symbol platform_32k_rc_auto_tune=0x0001e1e9
--define_symbol platform_32k_rc_tune=0x0001e265
--define_symbol platform_calibrate_32k=0x0001e279
--define_symbol platform_config=0x0001e27d
--define_symbol platform_get_heap_status=0x0001e335
--define_symbol platform_get_us_time=0x0001e34d
--define_symbol platform_get_version=0x0001e351
--define_symbol platform_hrng=0x0001e359
--define_symbol platform_install_isr_stack=0x0001e361
--define_symbol platform_patch_rf_init_data=0x0001e36d
--define_symbol platform_printf=0x0001e379
--define_symbol platform_raise_assertion=0x0001e38d
--define_symbol platform_rand=0x0001e3a1
--define_symbol platform_read_info=0x0001e3a5
--define_symbol platform_read_persistent_reg=0x0001e3c1
--define_symbol platform_reset=0x0001e3d1
--define_symbol platform_set_evt_callback=0x0001e405
--define_symbol platform_set_irq_callback=0x0001e419
--define_symbol platform_set_rf_clk_source=0x0001e451
--define_symbol platform_set_rf_init_data=0x0001e45d
--define_symbol platform_set_rf_power_mapping=0x0001e469
--define_symbol platform_shutdown=0x0001e475
--define_symbol platform_switch_app=0x0001e479
--define_symbol platform_trace_raw=0x0001e4a5
--define_symbol platform_write_persistent_reg=0x0001e4b9
--define_symbol printf_hexdump=0x0001e4c9
--define_symbol pvPortMalloc=0x0001ef99
--define_symbol pvTaskIncrementMutexHeldCount=0x0001f081
--define_symbol pvTimerGetTimerID=0x0001f099
--define_symbol pxPortInitialiseStack=0x0001f0c5
--define_symbol reverse_128=0x0001f2a5
--define_symbol reverse_24=0x0001f2ab
--define_symbol reverse_48=0x0001f2b1
--define_symbol reverse_56=0x0001f2b7
--define_symbol reverse_64=0x0001f2bd
--define_symbol reverse_bd_addr=0x0001f2c3
--define_symbol reverse_bytes=0x0001f2c9
--define_symbol sm_add_event_handler=0x0001f589
--define_symbol sm_address_resolution_lookup=0x0001f6b5
--define_symbol sm_authenticated=0x0001f78f
--define_symbol sm_authorization_decline=0x0001f79d
--define_symbol sm_authorization_grant=0x0001f7bd
--define_symbol sm_authorization_state=0x0001f7dd
--define_symbol sm_bonding_decline=0x0001f7f9
--define_symbol sm_config=0x0001fbd1
--define_symbol sm_encryption_key_size=0x0001fcdd
--define_symbol sm_just_works_confirm=0x00020491
--define_symbol sm_le_device_key=0x000206e9
--define_symbol sm_passkey_input=0x00020781
--define_symbol sm_private_random_address_generation_get=0x00020b0d
--define_symbol sm_private_random_address_generation_get_mode=0x00020b15
--define_symbol sm_private_random_address_generation_set_mode=0x00020b21
--define_symbol sm_private_random_address_generation_set_update_period=0x00020b49
--define_symbol sm_register_oob_data_callback=0x00020b81
--define_symbol sm_request_pairing=0x00020b8d
--define_symbol sm_send_security_request=0x000215dd
--define_symbol sm_set_accepted_stk_generation_methods=0x00021605
--define_symbol sm_set_authentication_requirements=0x00021611
--define_symbol sm_set_encryption_key_size_range=0x0002161d
--define_symbol sscanf_bd_addr=0x0002190d
--define_symbol sysSetPublicDeviceAddr=0x00021c39
--define_symbol uuid128_to_str=0x0002236d
--define_symbol uuid_add_bluetooth_prefix=0x000223c5
--define_symbol uuid_has_bluetooth_prefix=0x000223e5
--define_symbol uxQueueMessagesWaiting=0x00022429
--define_symbol uxQueueMessagesWaitingFromISR=0x00022451
--define_symbol uxQueueSpacesAvailable=0x0002246d
--define_symbol uxTaskGetStackHighWaterMark=0x00022499
--define_symbol vPortEnterCritical=0x000225bd
--define_symbol vPortExitCritical=0x000225fd
--define_symbol vPortFree=0x00022629
--define_symbol vPortSuppressTicksAndSleep=0x000226bd
--define_symbol vPortValidateInterruptPriority=0x00022795
--define_symbol vQueueDelete=0x000227e9
--define_symbol vQueueWaitForMessageRestricted=0x00022815
--define_symbol vTaskDelay=0x0002285d
--define_symbol vTaskInternalSetTimeOutState=0x000228a9
--define_symbol vTaskMissedYield=0x000228b9
--define_symbol vTaskPlaceOnEventList=0x000228c5
--define_symbol vTaskPlaceOnEventListRestricted=0x000228fd
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x0002293d
--define_symbol vTaskStartScheduler=0x000229e9
--define_symbol vTaskStepTick=0x00022a79
--define_symbol vTaskSuspendAll=0x00022aa9
--define_symbol vTaskSwitchContext=0x00022ab9
--define_symbol xPortStartScheduler=0x00022b61
--define_symbol xQueueAddToSet=0x00022c1d
--define_symbol xQueueCreateCountingSemaphore=0x00022c41
--define_symbol xQueueCreateCountingSemaphoreStatic=0x00022c7d
--define_symbol xQueueCreateMutex=0x00022cc1
--define_symbol xQueueCreateMutexStatic=0x00022cd7
--define_symbol xQueueCreateSet=0x00022cf1
--define_symbol xQueueGenericCreate=0x00022cf9
--define_symbol xQueueGenericCreateStatic=0x00022d45
--define_symbol xQueueGenericReset=0x00022dad
--define_symbol xQueueGenericSend=0x00022e39
--define_symbol xQueueGenericSendFromISR=0x00022fa5
--define_symbol xQueueGiveFromISR=0x00023065
--define_symbol xQueueGiveMutexRecursive=0x00023109
--define_symbol xQueueIsQueueEmptyFromISR=0x00023149
--define_symbol xQueueIsQueueFullFromISR=0x0002316d
--define_symbol xQueuePeek=0x00023195
--define_symbol xQueuePeekFromISR=0x000232bd
--define_symbol xQueueReceive=0x00023329
--define_symbol xQueueReceiveFromISR=0x00023455
--define_symbol xQueueRemoveFromSet=0x000234e9
--define_symbol xQueueSelectFromSet=0x0002350b
--define_symbol xQueueSelectFromSetFromISR=0x0002351d
--define_symbol xQueueSemaphoreTake=0x00023531
--define_symbol xQueueTakeMutexRecursive=0x0002369d
--define_symbol xTaskCheckForTimeOut=0x000236e1
--define_symbol xTaskCreate=0x00023751
--define_symbol xTaskCreateStatic=0x000237ad
--define_symbol xTaskGetCurrentTaskHandle=0x0002381d
--define_symbol xTaskGetSchedulerState=0x00023829
--define_symbol xTaskGetTickCount=0x00023845
--define_symbol xTaskGetTickCountFromISR=0x00023851
--define_symbol xTaskIncrementTick=0x00023861
--define_symbol xTaskPriorityDisinherit=0x0002392d
--define_symbol xTaskPriorityInherit=0x000239c1
--define_symbol xTaskRemoveFromEventList=0x00023a55
--define_symbol xTaskResumeAll=0x00023ad5
--define_symbol xTimerCreate=0x00023b9d
--define_symbol xTimerCreateStatic=0x00023bd1
--define_symbol xTimerCreateTimerTask=0x00023c09
--define_symbol xTimerGenericCommand=0x00023c75
--define_symbol xTimerGetExpiryTime=0x00023ce5
