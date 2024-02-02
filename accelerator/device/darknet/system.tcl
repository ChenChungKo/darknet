package require -exact qsys 12.1
set_validation_property AUTOMATIC_VALIDATION false

add_instance darknet_system darknet_system

add_connection acl_iface.kernel_clk darknet_system.clock_reset
add_connection acl_iface.kernel_clk2x darknet_system.clock_reset2x
add_connection acl_iface.kernel_reset darknet_system.clock_reset_reset

add_connection darknet_system.avm_memgmem0_port_0_0_rw acl_iface.kernel_mem0
add_connection acl_iface.kernel_irq darknet_system.kernel_irq

add_instance cra_root cra_ring_root
set_instance_parameter_value cra_root ASYNC_RESET 1
set_instance_parameter_value cra_root SYNCHRONIZE_RESET 0
set_instance_parameter_value cra_root DATA_W 64
set_instance_parameter_value cra_root ADDR_W 5
set_instance_parameter_value cra_root ID_W 2
add_connection acl_iface.kernel_clk cra_root.clock
add_connection acl_iface.kernel_reset cra_root.reset
add_connection acl_iface.kernel_cra cra_root.cra_slave
set_connection_parameter_value acl_iface.kernel_cra/cra_root.cra_slave baseAddress "0x0"
add_instance avs_batchnorm_cra_cra_ring cra_ring_node
set_instance_parameter_value avs_batchnorm_cra_cra_ring ASYNC_RESET 1
set_instance_parameter_value avs_batchnorm_cra_cra_ring SYNCHRONIZE_RESET 0
set_instance_parameter_value avs_batchnorm_cra_cra_ring DATA_W 64
set_instance_parameter_value avs_batchnorm_cra_cra_ring RING_ADDR_W 5
set_instance_parameter_value avs_batchnorm_cra_cra_ring CRA_ADDR_W 5
set_instance_parameter_value avs_batchnorm_cra_cra_ring ID_W 2
set_instance_parameter_value avs_batchnorm_cra_cra_ring ID 0
add_connection acl_iface.kernel_clk avs_batchnorm_cra_cra_ring.clock
add_connection acl_iface.kernel_reset avs_batchnorm_cra_cra_ring.reset
add_connection cra_root.ring_out avs_batchnorm_cra_cra_ring.ring_in
add_connection avs_batchnorm_cra_cra_ring.cra_master darknet_system.avs_batchnorm_cra
set_connection_parameter_value avs_batchnorm_cra_cra_ring.cra_master/darknet_system.avs_batchnorm_cra baseAddress "0x0"
add_instance avs_conv_cra_cra_ring cra_ring_node
set_instance_parameter_value avs_conv_cra_cra_ring ASYNC_RESET 1
set_instance_parameter_value avs_conv_cra_cra_ring SYNCHRONIZE_RESET 0
set_instance_parameter_value avs_conv_cra_cra_ring DATA_W 64
set_instance_parameter_value avs_conv_cra_cra_ring RING_ADDR_W 5
set_instance_parameter_value avs_conv_cra_cra_ring CRA_ADDR_W 5
set_instance_parameter_value avs_conv_cra_cra_ring ID_W 2
set_instance_parameter_value avs_conv_cra_cra_ring ID 1
add_connection acl_iface.kernel_clk avs_conv_cra_cra_ring.clock
add_connection acl_iface.kernel_reset avs_conv_cra_cra_ring.reset
add_connection avs_batchnorm_cra_cra_ring.ring_out avs_conv_cra_cra_ring.ring_in
add_connection avs_conv_cra_cra_ring.cra_master darknet_system.avs_conv_cra
set_connection_parameter_value avs_conv_cra_cra_ring.cra_master/darknet_system.avs_conv_cra baseAddress "0x0"
add_instance avs_conv1x1_cra_cra_ring cra_ring_node
set_instance_parameter_value avs_conv1x1_cra_cra_ring ASYNC_RESET 1
set_instance_parameter_value avs_conv1x1_cra_cra_ring SYNCHRONIZE_RESET 0
set_instance_parameter_value avs_conv1x1_cra_cra_ring DATA_W 64
set_instance_parameter_value avs_conv1x1_cra_cra_ring RING_ADDR_W 5
set_instance_parameter_value avs_conv1x1_cra_cra_ring CRA_ADDR_W 5
set_instance_parameter_value avs_conv1x1_cra_cra_ring ID_W 2
set_instance_parameter_value avs_conv1x1_cra_cra_ring ID 2
add_connection acl_iface.kernel_clk avs_conv1x1_cra_cra_ring.clock
add_connection acl_iface.kernel_reset avs_conv1x1_cra_cra_ring.reset
add_connection avs_conv_cra_cra_ring.ring_out avs_conv1x1_cra_cra_ring.ring_in
add_connection avs_conv1x1_cra_cra_ring.cra_master darknet_system.avs_conv1x1_cra
set_connection_parameter_value avs_conv1x1_cra_cra_ring.cra_master/darknet_system.avs_conv1x1_cra baseAddress "0x0"
add_instance avs_pool_cra_cra_ring cra_ring_node
set_instance_parameter_value avs_pool_cra_cra_ring ASYNC_RESET 1
set_instance_parameter_value avs_pool_cra_cra_ring SYNCHRONIZE_RESET 0
set_instance_parameter_value avs_pool_cra_cra_ring DATA_W 64
set_instance_parameter_value avs_pool_cra_cra_ring RING_ADDR_W 5
set_instance_parameter_value avs_pool_cra_cra_ring CRA_ADDR_W 5
set_instance_parameter_value avs_pool_cra_cra_ring ID_W 2
set_instance_parameter_value avs_pool_cra_cra_ring ID 3
add_connection acl_iface.kernel_clk avs_pool_cra_cra_ring.clock
add_connection acl_iface.kernel_reset avs_pool_cra_cra_ring.reset
add_connection avs_conv1x1_cra_cra_ring.ring_out avs_pool_cra_cra_ring.ring_in
add_connection avs_pool_cra_cra_ring.cra_master darknet_system.avs_pool_cra
set_connection_parameter_value avs_pool_cra_cra_ring.cra_master/darknet_system.avs_pool_cra baseAddress "0x0"
add_connection avs_pool_cra_cra_ring.ring_out cra_root.ring_in


save_system