--define_symbol att_dispatch_client_can_send_now=0x00005915
--define_symbol att_dispatch_client_request_can_send_now_event=0x0000591b
--define_symbol att_dispatch_register_client=0x00005921
--define_symbol att_dispatch_register_server=0x00005935
--define_symbol att_dispatch_server_can_send_now=0x00005949
--define_symbol att_dispatch_server_request_can_send_now_event=0x0000594f
--define_symbol att_emit_general_event=0x00005a01
--define_symbol att_server_can_send_packet_now=0x00006115
--define_symbol att_server_deferred_read_response=0x00006119
--define_symbol att_server_get_mtu=0x00006131
--define_symbol att_server_indicate=0x000061a9
--define_symbol att_server_init=0x0000622d
--define_symbol att_server_notify=0x00006269
--define_symbol att_server_register_packet_handler=0x00006381
--define_symbol att_server_request_can_send_now_event=0x0000638d
--define_symbol att_set_db=0x000063a9
--define_symbol att_set_read_callback=0x000063bd
--define_symbol att_set_write_callback=0x000063c9
--define_symbol bd_addr_cmp=0x00006539
--define_symbol bd_addr_copy=0x0000653f
--define_symbol bd_addr_to_str=0x00006549
--define_symbol big_endian_read_16=0x00006581
--define_symbol big_endian_read_32=0x00006589
--define_symbol big_endian_store_16=0x0000659d
--define_symbol big_endian_store_32=0x000065a9
--define_symbol btstack_config=0x000066e1
--define_symbol btstack_memory_pool_create=0x0000682f
--define_symbol btstack_memory_pool_free=0x00006859
--define_symbol btstack_memory_pool_get=0x000068b9
--define_symbol btstack_push_user_msg=0x00006901
--define_symbol char_for_nibble=0x00006b91
--define_symbol gap_add_dev_to_periodic_list=0x00007429
--define_symbol gap_add_whitelist=0x00007441
--define_symbol gap_aes_encrypt=0x00007455
--define_symbol gap_clear_white_lists=0x00007499
--define_symbol gap_clr_adv_set=0x000074a9
--define_symbol gap_clr_periodic_adv_list=0x000074b9
--define_symbol gap_create_connection_cancel=0x000074c9
--define_symbol gap_disconnect=0x000074d9
--define_symbol gap_disconnect_all=0x00007505
--define_symbol gap_ext_create_connection=0x00007545
--define_symbol gap_get_connection_parameter_range=0x00007635
--define_symbol gap_le_read_channel_map=0x00007671
--define_symbol gap_periodic_adv_create_sync=0x000076e5
--define_symbol gap_periodic_adv_create_sync_cancel=0x00007709
--define_symbol gap_periodic_adv_term_sync=0x00007719
--define_symbol gap_read_periodic_adv_list_size=0x000077ad
--define_symbol gap_read_phy=0x000077bd
--define_symbol gap_read_remote_info=0x000077d1
--define_symbol gap_read_remote_used_features=0x000077e5
--define_symbol gap_read_rssi=0x000077f9
--define_symbol gap_remove_whitelist=0x0000780d
--define_symbol gap_rmv_adv_set=0x00007891
--define_symbol gap_rmv_dev_from_periodic_list=0x000078a5
--define_symbol gap_rx_test_v2=0x000078bd
--define_symbol gap_set_adv_set_random_addr=0x000078fd
--define_symbol gap_set_connection_parameter_range=0x00007949
--define_symbol gap_set_data_length=0x00007961
--define_symbol gap_set_def_phy=0x0000797d
--define_symbol gap_set_ext_adv_data=0x00007995
--define_symbol gap_set_ext_adv_enable=0x000079ad
--define_symbol gap_set_ext_adv_para=0x00007a29
--define_symbol gap_set_ext_scan_enable=0x00007b09
--define_symbol gap_set_ext_scan_para=0x00007b21
--define_symbol gap_set_ext_scan_response_data=0x00007bc9
--define_symbol gap_set_host_channel_classification=0x00007be1
--define_symbol gap_set_periodic_adv_data=0x00007bf5
--define_symbol gap_set_periodic_adv_enable=0x00007c69
--define_symbol gap_set_periodic_adv_para=0x00007c7d
--define_symbol gap_set_phy=0x00007c95
--define_symbol gap_set_random_device_address=0x00007cb1
--define_symbol gap_start_ccm=0x00007ce1
--define_symbol gap_test_end=0x00007d15
--define_symbol gap_tx_test_v2=0x00007d25
--define_symbol gap_tx_test_v4=0x00007d3d
--define_symbol gap_update_connection_parameters=0x00007d65
--define_symbol gap_vendor_tx_continuous_wave=0x00007d89
--define_symbol gatt_client_cancel_write=0x000082b1
--define_symbol gatt_client_discover_characteristic_descriptors=0x000082d7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x00008317
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008367
--define_symbol gatt_client_discover_characteristics_for_service=0x000083b7
--define_symbol gatt_client_discover_primary_services=0x000083ed
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x0000841f
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008463
--define_symbol gatt_client_execute_write=0x0000849f
--define_symbol gatt_client_find_included_services_for_service=0x000084c5
--define_symbol gatt_client_get_mtu=0x000084f3
--define_symbol gatt_client_is_ready=0x00008595
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x000085ab
--define_symbol gatt_client_prepare_write=0x000085cd
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008609
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008633
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008639
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008667
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x0000866d
--define_symbol gatt_client_read_multiple_characteristic_values=0x0000869b
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x000086cb
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x000086f9
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008745
--define_symbol gatt_client_register_handler=0x00008791
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x0000879d
--define_symbol gatt_client_signed_write_without_response=0x00008bcd
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008c91
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008ccb
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008d1d
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008d2d
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008d69
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008d79
--define_symbol gatt_client_write_value_of_characteristic=0x00008db5
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008deb
--define_symbol hci_add_event_handler=0x0000a311
--define_symbol hci_power_control=0x0000ab05
--define_symbol hci_register_acl_packet_handler=0x0000acb9
--define_symbol kv_commit=0x0000b251
--define_symbol kv_get=0x0000b2a9
--define_symbol kv_init=0x0000b2c1
--define_symbol kv_put=0x0000b329
--define_symbol kv_remove=0x0000b3a1
--define_symbol kv_remove_all=0x0000b3dd
--define_symbol kv_value_modified=0x0000b421
--define_symbol kv_visit=0x0000b425
--define_symbol l2cap_can_send_fixed_channel_packet_now=0x0000b4e5
--define_symbol l2cap_can_send_packet_now=0x0000b4e9
--define_symbol l2cap_create_channel=0x0000b6a1
--define_symbol l2cap_disconnect=0x0000b7d9
--define_symbol l2cap_get_remote_mtu_for_local_cid=0x0000ba01
--define_symbol l2cap_init=0x0000bdf9
--define_symbol l2cap_le_send_flow_control_credit=0x0000be39
--define_symbol l2cap_max_le_mtu=0x0000c0f5
--define_symbol l2cap_max_mtu=0x0000c0f9
--define_symbol l2cap_register_fixed_channel=0x0000c205
--define_symbol l2cap_register_packet_handler=0x0000c221
--define_symbol l2cap_register_service=0x0000c22d
--define_symbol l2cap_request_can_send_fix_channel_now_event=0x0000c311
--define_symbol l2cap_request_can_send_now_event=0x0000c335
--define_symbol l2cap_request_connection_parameter_update=0x0000c34f
--define_symbol l2cap_send=0x0000c6e9
--define_symbol l2cap_send_connectionless=0x0000c761
--define_symbol l2cap_send_connectionless3=0x0000c7f1
--define_symbol l2cap_send_echo_request=0x0000c889
--define_symbol l2cap_unregister_service=0x0000c945
--define_symbol le_device_db_add=0x0000c99d
--define_symbol le_device_db_find=0x0000ca71
--define_symbol le_device_db_from_key=0x0000ca9d
--define_symbol le_device_db_iter_cur=0x0000caa5
--define_symbol le_device_db_iter_cur_key=0x0000caa9
--define_symbol le_device_db_iter_init=0x0000caad
--define_symbol le_device_db_iter_next=0x0000cab5
--define_symbol le_device_db_remove_key=0x0000cadb
--define_symbol ll_free=0x0000cb07
--define_symbol ll_hint_on_ce_len=0x0000cb11
--define_symbol ll_legacy_adv_set_interval=0x0000cb49
--define_symbol ll_malloc=0x0000cb59
--define_symbol ll_query_timing_info=0x0000cc91
--define_symbol ll_scan_set_fixed_channel=0x0000cd35
--define_symbol ll_set_adv_access_address=0x0000ce49
--define_symbol ll_set_adv_coded_scheme=0x0000ce55
--define_symbol ll_set_conn_coded_scheme=0x0000ce85
--define_symbol ll_set_conn_latency=0x0000ceb1
--define_symbol ll_set_conn_tx_power=0x0000cee1
--define_symbol ll_set_def_antenna=0x0000cf29
--define_symbol ll_set_initiating_coded_scheme=0x0000cf45
--define_symbol ll_set_max_conn_number=0x0000cf51
--define_symbol nibble_for_char=0x0001cd71
--define_symbol platform_32k_rc_auto_tune=0x0001ce0d
--define_symbol platform_32k_rc_tune=0x0001ce89
--define_symbol platform_calibrate_32k=0x0001ce9d
--define_symbol platform_config=0x0001cea1
--define_symbol platform_controller_run=0x0001cf71
--define_symbol platform_get_task_handle=0x0001cfa9
--define_symbol platform_get_us_time=0x0001cfc1
--define_symbol platform_get_version=0x0001cfc5
--define_symbol platform_hrng=0x0001cfcd
--define_symbol platform_init_controller=0x0001cfd5
--define_symbol platform_os_idle_resumed_hook=0x0001cff1
--define_symbol platform_patch_rf_init_data=0x0001cff5
--define_symbol platform_post_sleep_processing=0x0001d001
--define_symbol platform_pre_sleep_processing=0x0001d007
--define_symbol platform_pre_suppress_ticks_and_sleep_processing=0x0001d00d
--define_symbol platform_printf=0x0001d011
--define_symbol platform_raise_assertion=0x0001d025
--define_symbol platform_rand=0x0001d039
--define_symbol platform_read_info=0x0001d03d
--define_symbol platform_read_persistent_reg=0x0001d059
--define_symbol platform_reset=0x0001d069
--define_symbol platform_set_evt_callback=0x0001d08d
--define_symbol platform_set_irq_callback=0x0001d0a1
--define_symbol platform_set_rf_clk_source=0x0001d0d9
--define_symbol platform_set_rf_init_data=0x0001d0e5
--define_symbol platform_set_rf_power_mapping=0x0001d0f1
--define_symbol platform_set_timer=0x0001d0fd
--define_symbol platform_shutdown=0x0001d101
--define_symbol platform_switch_app=0x0001d105
--define_symbol platform_trace_raw=0x0001d131
--define_symbol platform_write_persistent_reg=0x0001d149
--define_symbol printf_hexdump=0x0001d159
--define_symbol reverse_128=0x0001d495
--define_symbol reverse_24=0x0001d49b
--define_symbol reverse_48=0x0001d4a1
--define_symbol reverse_56=0x0001d4a7
--define_symbol reverse_64=0x0001d4ad
--define_symbol reverse_bd_addr=0x0001d4b3
--define_symbol reverse_bytes=0x0001d4b9
--define_symbol sm_add_event_handler=0x0001d625
--define_symbol sm_address_resolution_lookup=0x0001d77d
--define_symbol sm_authenticated=0x0001dad5
--define_symbol sm_authorization_decline=0x0001dae3
--define_symbol sm_authorization_grant=0x0001db03
--define_symbol sm_authorization_state=0x0001db23
--define_symbol sm_bonding_decline=0x0001db3d
--define_symbol sm_config=0x0001df5d
--define_symbol sm_config_conn=0x0001df75
--define_symbol sm_encryption_key_size=0x0001e12b
--define_symbol sm_just_works_confirm=0x0001e665
--define_symbol sm_le_device_key=0x0001e9a1
--define_symbol sm_passkey_input=0x0001ea37
--define_symbol sm_private_random_address_generation_get=0x0001ede5
--define_symbol sm_private_random_address_generation_get_mode=0x0001eded
--define_symbol sm_private_random_address_generation_set_mode=0x0001edf9
--define_symbol sm_private_random_address_generation_set_update_period=0x0001ee21
--define_symbol sm_register_oob_data_callback=0x0001ef5d
--define_symbol sm_request_pairing=0x0001ef69
--define_symbol sm_send_security_request=0x0001f987
--define_symbol sm_set_accepted_stk_generation_methods=0x0001f9ad
--define_symbol sm_set_authentication_requirements=0x0001f9b9
--define_symbol sm_set_encryption_key_size_range=0x0001f9c5
--define_symbol sscanf_bd_addr=0x0001fd21
--define_symbol sysSetPublicDeviceAddr=0x00020089
--define_symbol uuid128_to_str=0x00020671
--define_symbol uuid_add_bluetooth_prefix=0x000206c9
--define_symbol uuid_has_bluetooth_prefix=0x000206e9
