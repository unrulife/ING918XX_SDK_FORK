--define_symbol att_dispatch_client_can_send_now=0x000059ad
--define_symbol att_dispatch_client_request_can_send_now_event=0x000059b3
--define_symbol att_dispatch_register_client=0x000059b9
--define_symbol att_dispatch_register_server=0x000059cd
--define_symbol att_dispatch_server_can_send_now=0x000059e1
--define_symbol att_dispatch_server_request_can_send_now_event=0x000059e7
--define_symbol att_emit_general_event=0x00005a99
--define_symbol att_server_can_send_packet_now=0x000061ad
--define_symbol att_server_deferred_read_response=0x000061b1
--define_symbol att_server_get_mtu=0x000061c9
--define_symbol att_server_indicate=0x00006241
--define_symbol att_server_init=0x000062c5
--define_symbol att_server_notify=0x00006301
--define_symbol att_server_register_packet_handler=0x00006419
--define_symbol att_server_request_can_send_now_event=0x00006425
--define_symbol att_set_db=0x00006441
--define_symbol att_set_read_callback=0x00006455
--define_symbol att_set_write_callback=0x00006461
--define_symbol bd_addr_cmp=0x000065d1
--define_symbol bd_addr_copy=0x000065d7
--define_symbol bd_addr_to_str=0x000065e1
--define_symbol big_endian_read_16=0x00006619
--define_symbol big_endian_read_32=0x00006621
--define_symbol big_endian_store_16=0x00006635
--define_symbol big_endian_store_32=0x00006641
--define_symbol btstack_config=0x00006795
--define_symbol btstack_memory_pool_create=0x000068d3
--define_symbol btstack_memory_pool_free=0x000068fd
--define_symbol btstack_memory_pool_get=0x0000695d
--define_symbol btstack_push_user_msg=0x00006979
--define_symbol char_for_nibble=0x00006c41
--define_symbol eTaskConfirmSleepModeStatus=0x00006eed
--define_symbol gap_add_dev_to_periodic_list=0x000075fd
--define_symbol gap_add_whitelist=0x00007615
--define_symbol gap_aes_encrypt=0x00007629
--define_symbol gap_clear_white_lists=0x0000766d
--define_symbol gap_clr_adv_set=0x0000767d
--define_symbol gap_clr_periodic_adv_list=0x0000768d
--define_symbol gap_create_connection_cancel=0x000076b9
--define_symbol gap_disconnect=0x000076c9
--define_symbol gap_disconnect_all=0x000076f5
--define_symbol gap_ext_create_connection=0x0000779d
--define_symbol gap_get_connection_parameter_range=0x0000788d
--define_symbol gap_le_read_channel_map=0x000078c9
--define_symbol gap_periodic_adv_create_sync=0x0000793d
--define_symbol gap_periodic_adv_create_sync_cancel=0x00007961
--define_symbol gap_periodic_adv_term_sync=0x00007971
--define_symbol gap_read_periodic_adv_list_size=0x00007a05
--define_symbol gap_read_phy=0x00007a15
--define_symbol gap_read_remote_info=0x00007a29
--define_symbol gap_read_remote_used_features=0x00007a3d
--define_symbol gap_read_rssi=0x00007a51
--define_symbol gap_remove_whitelist=0x00007a65
--define_symbol gap_rmv_adv_set=0x00007af1
--define_symbol gap_rmv_dev_from_periodic_list=0x00007b05
--define_symbol gap_rx_test_v2=0x00007b1d
--define_symbol gap_set_adv_set_random_addr=0x00007b5d
--define_symbol gap_set_connection_parameter_range=0x00007ba9
--define_symbol gap_set_data_length=0x00007bc1
--define_symbol gap_set_def_phy=0x00007bdd
--define_symbol gap_set_ext_adv_data=0x00007bf5
--define_symbol gap_set_ext_adv_enable=0x00007c0d
--define_symbol gap_set_ext_adv_para=0x00007c89
--define_symbol gap_set_ext_scan_enable=0x00007d69
--define_symbol gap_set_ext_scan_para=0x00007d81
--define_symbol gap_set_ext_scan_response_data=0x00007e29
--define_symbol gap_set_host_channel_classification=0x00007e41
--define_symbol gap_set_periodic_adv_data=0x00007e55
--define_symbol gap_set_periodic_adv_enable=0x00007ec9
--define_symbol gap_set_periodic_adv_para=0x00007edd
--define_symbol gap_set_phy=0x00007ef5
--define_symbol gap_set_random_device_address=0x00007f11
--define_symbol gap_start_ccm=0x00007f75
--define_symbol gap_test_end=0x00007fa9
--define_symbol gap_tx_test_v2=0x00007fb9
--define_symbol gap_update_connection_parameters=0x00007fd1
--define_symbol gap_vendor_tx_continuous_wave=0x00007ff5
--define_symbol gatt_client_cancel_write=0x0000851d
--define_symbol gatt_client_discover_characteristic_descriptors=0x00008543
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x00008583
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x000085d3
--define_symbol gatt_client_discover_characteristics_for_service=0x00008623
--define_symbol gatt_client_discover_primary_services=0x00008659
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x0000868b
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x000086cf
--define_symbol gatt_client_execute_write=0x0000870b
--define_symbol gatt_client_find_included_services_for_service=0x00008731
--define_symbol gatt_client_get_mtu=0x0000875f
--define_symbol gatt_client_is_ready=0x00008801
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x00008817
--define_symbol gatt_client_prepare_write=0x00008839
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008875
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x0000889f
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x000088a5
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x000088d3
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x000088d9
--define_symbol gatt_client_read_multiple_characteristic_values=0x00008907
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x00008937
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008965
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x000089b1
--define_symbol gatt_client_register_handler=0x000089fd
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008a09
--define_symbol gatt_client_signed_write_without_response=0x00008e39
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008efd
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008f37
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008f89
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008f99
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008fd5
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008fe5
--define_symbol gatt_client_write_value_of_characteristic=0x00009021
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00009057
--define_symbol hci_add_event_handler=0x0000a57d
--define_symbol hci_power_control=0x0000ad85
--define_symbol hci_register_acl_packet_handler=0x0000af39
--define_symbol kv_commit=0x0000b53d
--define_symbol kv_get=0x0000b595
--define_symbol kv_init=0x0000b5ad
--define_symbol kv_put=0x0000b615
--define_symbol kv_remove=0x0000b68d
--define_symbol kv_remove_all=0x0000b6c9
--define_symbol kv_value_modified=0x0000b70d
--define_symbol kv_visit=0x0000b711
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b7d1
--define_symbol l2cap_can_send_packet_now=0x0000b7d5
--define_symbol l2cap_create_channel=0x0000b98d
--define_symbol l2cap_disconnect=0x0000bac5
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000bd39
--define_symbol l2cap_init=0x0000c1b9
--define_symbol l2cap_le_send_flow_control_credit=0x0000c201
--define_symbol l2cap_max_le_mtu=0x0000c485
--define_symbol l2cap_max_mtu=0x0000c489
--define_symbol l2cap_next_local_cid=0x0000c48d
--define_symbol l2cap_next_sig_id=0x0000c49d
--define_symbol l2cap_register_fixed_channel=0x0000c535
--define_symbol l2cap_register_packet_handler=0x0000c551
--define_symbol l2cap_register_service=0x0000c55d
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c645
--define_symbol l2cap_request_can_send_now_event=0x0000c669
--define_symbol l2cap_request_connection_parameter_update=0x0000c683
--define_symbol l2cap_require_security_level_2_for_outgoing_sdp=0x0000c6b5
--define_symbol l2cap_send=0x0000ca49
--define_symbol l2cap_send_connectionless=0x0000cac1
--define_symbol l2cap_send_connectionless3=0x0000cb51
--define_symbol l2cap_send_echo_request=0x0000cbe9
--define_symbol l2cap_send_signaling_le=0x0000cc4d
--define_symbol l2cap_unregister_service=0x0000cca5
--define_symbol le_device_db_add=0x0000cd09
--define_symbol le_device_db_find=0x0000cddd
--define_symbol le_device_db_from_key=0x0000ce09
--define_symbol le_device_db_iter_cur=0x0000ce11
--define_symbol le_device_db_iter_cur_key=0x0000ce15
--define_symbol le_device_db_iter_init=0x0000ce19
--define_symbol le_device_db_iter_next=0x0000ce21
--define_symbol le_device_db_remove_key=0x0000ce47
--define_symbol ll_ackable_packet_alloc=0x0000ce73
--define_symbol ll_ackable_packet_get_status=0x0000cf7b
--define_symbol ll_ackable_packet_run=0x0000cfed
--define_symbol ll_ackable_packet_set_tx_data=0x0000d095
--define_symbol ll_free=0x0000d0af
--define_symbol ll_hint_on_ce_len=0x0000d0b9
--define_symbol ll_legacy_adv_set_interval=0x0000d0f1
--define_symbol ll_malloc=0x0000d101
--define_symbol ll_query_timing_info=0x0000d239
--define_symbol ll_raw_packet_alloc=0x0000d285
--define_symbol ll_raw_packet_free=0x0000d359
--define_symbol ll_raw_packet_get_bare_rx_data=0x0000d383
--define_symbol ll_raw_packet_get_rx_data=0x0000d449
--define_symbol ll_raw_packet_recv=0x0000d4e1
--define_symbol ll_raw_packet_send=0x0000d59d
--define_symbol ll_raw_packet_set_bare_data=0x0000d685
--define_symbol ll_raw_packet_set_bare_mode=0x0000d6c3
--define_symbol ll_raw_packet_set_param=0x0000d7c9
--define_symbol ll_raw_packet_set_tx_data=0x0000d827
--define_symbol ll_scan_set_fixed_channel=0x0000d8dd
--define_symbol ll_set_adv_access_address=0x0000d9f1
--define_symbol ll_set_adv_coded_scheme=0x0000d9fd
--define_symbol ll_set_conn_coded_scheme=0x0000da2d
--define_symbol ll_set_conn_interval_unit=0x0000da59
--define_symbol ll_set_conn_latency=0x0000da65
--define_symbol ll_set_conn_tx_power=0x0000da95
--define_symbol ll_set_def_antenna=0x0000dadd
--define_symbol ll_set_initiating_coded_scheme=0x0000daf9
--define_symbol ll_set_max_conn_number=0x0000db05
--define_symbol nibble_for_char=0x0001d9fd
--define_symbol platform_32k_rc_auto_tune=0x0001da99
--define_symbol platform_32k_rc_tune=0x0001db15
--define_symbol platform_calibrate_32k=0x0001db29
--define_symbol platform_config=0x0001db2d
--define_symbol platform_get_heap_status=0x0001dbed
--define_symbol platform_get_us_time=0x0001dc05
--define_symbol platform_get_version=0x0001dc09
--define_symbol platform_hrng=0x0001dc11
--define_symbol platform_install_isr_stack=0x0001dc19
--define_symbol platform_patch_rf_init_data=0x0001dc25
--define_symbol platform_printf=0x0001dc31
--define_symbol platform_raise_assertion=0x0001dc45
--define_symbol platform_rand=0x0001dc59
--define_symbol platform_read_info=0x0001dc5d
--define_symbol platform_read_persistent_reg=0x0001dc79
--define_symbol platform_reset=0x0001dc89
--define_symbol platform_set_evt_callback=0x0001dcbd
--define_symbol platform_set_irq_callback=0x0001dcd1
--define_symbol platform_set_rf_clk_source=0x0001dd09
--define_symbol platform_set_rf_init_data=0x0001dd15
--define_symbol platform_set_rf_power_mapping=0x0001dd21
--define_symbol platform_shutdown=0x0001dd2d
--define_symbol platform_switch_app=0x0001dd31
--define_symbol platform_trace_raw=0x0001dd5d
--define_symbol platform_write_persistent_reg=0x0001dd75
--define_symbol printf_hexdump=0x0001dd85
--define_symbol pvPortMalloc=0x0001e88d
--define_symbol pvTaskIncrementMutexHeldCount=0x0001e975
--define_symbol pvTimerGetTimerID=0x0001e98d
--define_symbol pxPortInitialiseStack=0x0001e9b9
--define_symbol reverse_128=0x0001eb61
--define_symbol reverse_24=0x0001eb67
--define_symbol reverse_48=0x0001eb6d
--define_symbol reverse_56=0x0001eb73
--define_symbol reverse_64=0x0001eb79
--define_symbol reverse_bd_addr=0x0001eb7f
--define_symbol reverse_bytes=0x0001eb85
--define_symbol sm_add_event_handler=0x0001ed11
--define_symbol sm_address_resolution_lookup=0x0001ee69
--define_symbol sm_authenticated=0x0001f1b5
--define_symbol sm_authorization_decline=0x0001f1c3
--define_symbol sm_authorization_grant=0x0001f1e3
--define_symbol sm_authorization_state=0x0001f203
--define_symbol sm_bonding_decline=0x0001f21d
--define_symbol sm_config=0x0001f63d
--define_symbol sm_config_conn=0x0001f655
--define_symbol sm_encryption_key_size=0x0001f7db
--define_symbol sm_just_works_confirm=0x0001fd09
--define_symbol sm_le_device_key=0x00020045
--define_symbol sm_passkey_input=0x000200db
--define_symbol sm_private_random_address_generation_get=0x00020481
--define_symbol sm_private_random_address_generation_get_mode=0x00020489
--define_symbol sm_private_random_address_generation_set_mode=0x00020495
--define_symbol sm_private_random_address_generation_set_update_period=0x000204bd
--define_symbol sm_register_oob_data_callback=0x000205f9
--define_symbol sm_request_pairing=0x00020605
--define_symbol sm_send_security_request=0x00020fff
--define_symbol sm_set_accepted_stk_generation_methods=0x00021025
--define_symbol sm_set_authentication_requirements=0x00021031
--define_symbol sm_set_encryption_key_size_range=0x0002103d
--define_symbol sscanf_bd_addr=0x00021401
--define_symbol sysSetPublicDeviceAddr=0x00021769
--define_symbol uuid128_to_str=0x00021d5d
--define_symbol uuid_add_bluetooth_prefix=0x00021db5
--define_symbol uuid_has_bluetooth_prefix=0x00021dd5
--define_symbol uxListRemove=0x00021df1
--define_symbol uxQueueMessagesWaiting=0x00021e19
--define_symbol uxQueueMessagesWaitingFromISR=0x00021e41
--define_symbol uxQueueSpacesAvailable=0x00021e5d
--define_symbol uxTaskGetStackHighWaterMark=0x00021e89
--define_symbol vListInitialise=0x00021f2f
--define_symbol vListInitialiseItem=0x00021f45
--define_symbol vListInsert=0x00021f4b
--define_symbol vListInsertEnd=0x00021f7b
--define_symbol vPortEnterCritical=0x00021f95
--define_symbol vPortExitCritical=0x00021fd9
--define_symbol vPortFree=0x00022009
--define_symbol vPortSuppressTicksAndSleep=0x0002209d
--define_symbol vPortValidateInterruptPriority=0x000221bd
--define_symbol vQueueDelete=0x00022215
--define_symbol vQueueWaitForMessageRestricted=0x00022241
--define_symbol vTaskDelay=0x00022289
--define_symbol vTaskInternalSetTimeOutState=0x000222d5
--define_symbol vTaskMissedYield=0x000222e5
--define_symbol vTaskPlaceOnEventList=0x000222f1
--define_symbol vTaskPlaceOnEventListRestricted=0x00022329
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x00022369
--define_symbol vTaskResume=0x00022415
--define_symbol vTaskStartScheduler=0x00022499
--define_symbol vTaskStepTick=0x00022529
--define_symbol vTaskSuspend=0x00022559
--define_symbol vTaskSuspendAll=0x00022615
--define_symbol vTaskSwitchContext=0x00022625
--define_symbol xPortStartScheduler=0x000226cd
--define_symbol xQueueAddToSet=0x00022791
--define_symbol xQueueCreateCountingSemaphore=0x000227b5
--define_symbol xQueueCreateCountingSemaphoreStatic=0x000227f1
--define_symbol xQueueCreateMutex=0x00022835
--define_symbol xQueueCreateMutexStatic=0x0002284b
--define_symbol xQueueCreateSet=0x00022865
--define_symbol xQueueGenericCreate=0x0002286d
--define_symbol xQueueGenericCreateStatic=0x000228b9
--define_symbol xQueueGenericReset=0x00022921
--define_symbol xQueueGenericSend=0x000229ad
--define_symbol xQueueGenericSendFromISR=0x00022b19
--define_symbol xQueueGiveFromISR=0x00022bd9
--define_symbol xQueueGiveMutexRecursive=0x00022c7d
--define_symbol xQueueIsQueueEmptyFromISR=0x00022cbd
--define_symbol xQueueIsQueueFullFromISR=0x00022ce1
--define_symbol xQueuePeek=0x00022d09
--define_symbol xQueuePeekFromISR=0x00022e31
--define_symbol xQueueReceive=0x00022e9d
--define_symbol xQueueReceiveFromISR=0x00022fc9
--define_symbol xQueueRemoveFromSet=0x0002305d
--define_symbol xQueueSelectFromSet=0x0002307f
--define_symbol xQueueSelectFromSetFromISR=0x00023091
--define_symbol xQueueSemaphoreTake=0x000230a5
--define_symbol xQueueTakeMutexRecursive=0x00023211
--define_symbol xTaskCheckForTimeOut=0x00023255
--define_symbol xTaskCreate=0x000232c5
--define_symbol xTaskCreateStatic=0x00023321
--define_symbol xTaskGetCurrentTaskHandle=0x00023391
--define_symbol xTaskGetSchedulerState=0x0002339d
--define_symbol xTaskGetTickCount=0x000233b9
--define_symbol xTaskGetTickCountFromISR=0x000233c5
--define_symbol xTaskIncrementTick=0x000233d5
--define_symbol xTaskPriorityDisinherit=0x000234a1
--define_symbol xTaskPriorityInherit=0x00023535
--define_symbol xTaskRemoveFromEventList=0x000235c9
--define_symbol xTaskResumeAll=0x00023649
--define_symbol xTaskResumeFromISR=0x00023711
--define_symbol xTimerCreate=0x0002379d
--define_symbol xTimerCreateStatic=0x000237d1
--define_symbol xTimerCreateTimerTask=0x00023809
--define_symbol xTimerGenericCommand=0x00023875
--define_symbol xTimerGetExpiryTime=0x000238e5
