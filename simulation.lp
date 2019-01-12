\ENCODING=ISO-8859-1
\Problem name: ilog.cplex

Maximize
 obj: 10 x(0) + 10 x(1)
Subject To
 node_cpu_constraint_0:          yh(0) + y(0,0) + y(0,1) <= 1
 node_memory_constraint_0:       yh(0) + y(0,0) + 2 y(0,1) <= 1
 node_cpu_constraint_1:          yh(1) + y(1,0) + y(1,1) <= 1
 node_memory_constraint_1:       yh(1) + y(1,0) + 2 y(1,1) <= 1
 node_cpu_constraint_2:          yh(2) + y(2,0) + y(2,1) <= 2
 node_memory_constraint_2:       yh(2) + y(2,0) + 2 y(2,1) <= 4
 node_cpu_constraint_3:          yh(3) + y(3,0) + y(3,1) <= 1
 node_memory_constraint_3:       yh(3) + y(3,0) + 2 y(3,1) <= 1
 node_cpu_constraint_4:          yh(4) + y(4,0) + y(4,1) <= 1
 node_memory_constraint_4:       yh(4) + y(4,0) + 2 y(4,1) <= 1
 service_place_constraint_0_0:   - y(0,0) + z(0,0,0_0) + z(0,0,1_0)
                                 + z(0,0,1_1) + z(0,0,1_2) <= 0
 service_place_constraint_0_1:   - y(1,0) + z(0,1,0_0) + z(0,1,1_0)
                                 + z(0,1,1_1) + z(0,1,1_2) <= 0
 service_place_constraint_0_2:   - y(2,0) + z(0,2,0_0) + z(0,2,1_0)
                                 + z(0,2,1_1) + z(0,2,1_2) <= 0
 service_place_constraint_0_3:   - y(3,0) + z(0,3,0_0) + z(0,3,1_0)
                                 + z(0,3,1_1) + z(0,3,1_2) <= 0
 service_place_constraint_0_4:   - y(4,0) + z(0,4,0_0) + z(0,4,1_0)
                                 + z(0,4,1_1) + z(0,4,1_2) <= 0
 service_place_constraint_1_0:   - y(0,1) + z(1,0,0_0) + z(1,0,1_0)
                                 + z(1,0,1_1) + z(1,0,1_2) <= 0
 service_place_constraint_1_1:   - y(1,1) + z(1,1,0_0) + z(1,1,1_0)
                                 + z(1,1,1_1) + z(1,1,1_2) <= 0
 service_place_constraint_1_2:   - y(2,1) + z(1,2,0_0) + z(1,2,1_0)
                                 + z(1,2,1_1) + z(1,2,1_2) <= 0
 service_place_constraint_1_3:   - y(3,1) + z(1,3,0_0) + z(1,3,1_0)
                                 + z(1,3,1_1) + z(1,3,1_2) <= 0
 service_place_constraint_1_4:   - y(4,1) + z(1,4,0_0) + z(1,4,1_0)
                                 + z(1,4,1_1) + z(1,4,1_2) <= 0
 service_constraint_chain{0}_node{0}: - x(0) + z(0,0,0_0) + z(0,1,0_0)
                                 + z(0,2,0_0) + z(0,3,0_0) + z(0,4,0_0)  = 0
 service_constraint_chain{1}_node{0}: - x(1) + z(0,0,1_0) + z(0,1,1_0)
                                 + z(0,2,1_0) + z(0,3,1_0) + z(0,4,1_0)  = 0
 service_constraint_chain{1}_node{1}: - x(1) + z(1,0,1_1) + z(1,1,1_1)
                                 + z(1,2,1_1) + z(1,3,1_1) + z(1,4,1_1)  = 0
 service_constraint_chain{1}_node{2}: - x(1) + z(0,0,1_2) + z(0,1,1_2)
                                 + z(0,2,1_2) + z(0,3,1_2) + z(0,4,1_2)  = 0
 manage_constraint_0:            - x(0) + zh(0,0) + zh(0,1) + zh(0,2) + zh(0,3)
                                 + zh(0,4)  = 0
 manage_constraint_1:            - x(1) + zh(1,0) + zh(1,1) + zh(1,2) + zh(1,3)
                                 + zh(1,4)  = 0
 manage_place_constraint_0:      - yh(0) + zh(0,0) + zh(1,0) <= 0
 manage_place_constraint_1:      - yh(1) + zh(0,1) + zh(1,1) <= 0
 manage_place_constraint_2:      - yh(2) + zh(0,2) + zh(1,2) <= 0
 manage_place_constraint_3:      - yh(3) + zh(0,3) + zh(1,3) <= 0
 manage_place_constraint_4:      - yh(4) + zh(0,4) + zh(1,4) <= 0
 manager_capacity_constraint_0:  zh(0,0) + 3 zh(1,0) <= 5
 manager_capacity_constraint_1:  zh(0,1) + 3 zh(1,1) <= 5
 manager_capacity_constraint_2:  zh(0,2) + 3 zh(1,2) <= 5
 manager_capacity_constraint_3:  zh(0,3) + 3 zh(1,3) <= 5
 manager_capacity_constraint_4:  zh(0,4) + 3 zh(1,4) <= 5
 flow_conservation:              - z(0,0,1_0) + z(1,0,1_1) + tau(0,1,1_0)
                                 + tau(0,2,1_0) - tau(2,0,1_0)  = 0
 flow_conservation:              - z(0,0,1_0) + z(0,0,1_2) + tau(0,1,1_1)
                                 + tau(0,2,1_1) - tau(2,0,1_1)  = 0
 flow_conservation:              - z(0,1,1_0) + z(1,1,1_1) - tau(0,1,1_0)
                                 + tau(1,2,1_0)  = 0
 flow_conservation:              - z(0,1,1_0) + z(0,1,1_2) - tau(0,1,1_1)
                                 + tau(1,2,1_1)  = 0
 flow_conservation:              - z(0,2,1_0) + z(1,2,1_1) - tau(0,2,1_0)
                                 + tau(2,0,1_0) - tau(1,2,1_0)  = 0
 flow_conservation:              - z(0,2,1_0) + z(0,2,1_2) - tau(0,2,1_1)
                                 + tau(2,0,1_1) - tau(1,2,1_1)  = 0
 flow_conservation:              - z(0,3,1_0) + z(1,3,1_1) + tau(3,4,1_0)  = 0
 flow_conservation:              - z(0,3,1_0) + z(0,3,1_2) + tau(3,4,1_1)  = 0
 flow_conservation:              - z(0,4,1_0) + z(1,4,1_1) - tau(3,4,1_0)  = 0
 flow_conservation:              - z(0,4,1_0) + z(0,4,1_2) - tau(3,4,1_1)  = 0
 management_flow_conservation:   - z(0,0,0_0) + zh(0,0) + tauh(0,1,0_0)
                                 + tauh(0,2,0_0) - tauh(2,0,0_0)  = 0
 management_flow_conservation:   - z(0,1,0_0) + zh(0,1) - tauh(0,1,0_0)
                                 + tauh(1,2,0_0)  = 0
 management_flow_conservation:   - z(0,2,0_0) + zh(0,2) - tauh(0,2,0_0)
                                 + tauh(2,0,0_0) - tauh(1,2,0_0)  = 0
 management_flow_conservation:   - z(0,3,0_0) + zh(0,3) + tauh(3,4,0_0)  = 0
 management_flow_conservation:   - z(0,4,0_0) + zh(0,4) - tauh(3,4,0_0)  = 0
 management_flow_conservation:   - z(0,0,1_0) + zh(1,0) + tauh(0,1,1_0)
                                 + tauh(0,2,1_0) - tauh(2,0,1_0)  = 0
 management_flow_conservation:   - z(1,0,1_1) + zh(1,0) + tauh(0,1,1_1)
                                 + tauh(0,2,1_1) - tauh(2,0,1_1)  = 0
 management_flow_conservation:   - z(0,0,1_2) + zh(1,0) + tauh(0,1,1_2)
                                 + tauh(0,2,1_2) - tauh(2,0,1_2)  = 0
 management_flow_conservation:   - z(0,1,1_0) + zh(1,1) - tauh(0,1,1_0)
                                 + tauh(1,2,1_0)  = 0
 management_flow_conservation:   - z(1,1,1_1) + zh(1,1) - tauh(0,1,1_1)
                                 + tauh(1,2,1_1)  = 0
 management_flow_conservation:   - z(0,1,1_2) + zh(1,1) - tauh(0,1,1_2)
                                 + tauh(1,2,1_2)  = 0
 management_flow_conservation:   - z(0,2,1_0) + zh(1,2) - tauh(0,2,1_0)
                                 + tauh(2,0,1_0) - tauh(1,2,1_0)  = 0
 management_flow_conservation:   - z(1,2,1_1) + zh(1,2) - tauh(0,2,1_1)
                                 + tauh(2,0,1_1) - tauh(1,2,1_1)  = 0
 management_flow_conservation:   - z(0,2,1_2) + zh(1,2) - tauh(0,2,1_2)
                                 + tauh(2,0,1_2) - tauh(1,2,1_2)  = 0
 management_flow_conservation:   - z(0,3,1_0) + zh(1,3) + tauh(3,4,1_0)  = 0
 management_flow_conservation:   - z(1,3,1_1) + zh(1,3) + tauh(3,4,1_1)  = 0
 management_flow_conservation:   - z(0,3,1_2) + zh(1,3) + tauh(3,4,1_2)  = 0
 management_flow_conservation:   - z(0,4,1_0) + zh(1,4) - tauh(3,4,1_0)  = 0
 management_flow_conservation:   - z(1,4,1_1) + zh(1,4) - tauh(3,4,1_1)  = 0
 management_flow_conservation:   - z(0,4,1_2) + zh(1,4) - tauh(3,4,1_2)  = 0
 link_bandwidth_constraint:      tau(0,1,1_0) + tau(0,1,1_1) + tauh(0,1,0_0)
                                 + tauh(0,1,1_0) + tauh(0,1,1_1)
                                 + tauh(0,1,1_2) <= 10
 link_bandwidth_constraint:      tau(0,2,1_0) + tau(0,2,1_1) + tauh(0,2,0_0)
                                 + tauh(0,2,1_0) + tauh(0,2,1_1)
                                 + tauh(0,2,1_2) <= 10
 link_bandwidth_constraint:      tau(1,2,1_0) + tau(1,2,1_1) + tauh(1,2,0_0)
                                 + tauh(1,2,1_0) + tauh(1,2,1_1)
                                 + tauh(1,2,1_2) <= 10
 link_bandwidth_constraint:      tau(2,0,1_0) + tau(2,0,1_1) + tauh(2,0,0_0)
                                 + tauh(2,0,1_0) + tauh(2,0,1_1)
                                 + tauh(2,0,1_2) <= 10
 link_bandwidth_constraint:      tau(3,4,1_0) + tau(3,4,1_1) + tauh(3,4,0_0)
                                 + tauh(3,4,1_0) + tauh(3,4,1_1)
                                 + tauh(3,4,1_2) <= 10
 management_radius_constraint:   tauh(0,1,0_0) + tauh(0,2,0_0) + tauh(2,0,0_0)
                                 + tauh(1,2,0_0) + tauh(3,4,0_0) <= 5
 management_radius_constraint:   tauh(0,1,1_0) + tauh(0,2,1_0) + tauh(2,0,1_0)
                                 + tauh(1,2,1_0) + tauh(3,4,1_0) <= 5
 management_radius_constraint:   tauh(0,1,1_1) + tauh(0,2,1_1) + tauh(2,0,1_1)
                                 + tauh(1,2,1_1) + tauh(3,4,1_1) <= 5
 management_radius_constraint:   tauh(0,1,1_2) + tauh(0,2,1_2) + tauh(2,0,1_2)
                                 + tauh(1,2,1_2) + tauh(3,4,1_2) <= 5
Bounds
 0 <= x(0) <= 1
 0 <= x(1) <= 1
      yh(0) >= 0
      y(0,0) >= 0
      y(0,1) >= 0
      yh(1) >= 0
      y(1,0) >= 0
      y(1,1) >= 0
      yh(2) >= 0
      y(2,0) >= 0
      y(2,1) >= 0
      yh(3) >= 0
      y(3,0) >= 0
      y(3,1) >= 0
      yh(4) >= 0
      y(4,0) >= 0
      y(4,1) >= 0
 0 <= z(0,0,0_0) <= 1
 0 <= z(0,0,1_0) <= 1
 0 <= z(0,0,1_1) <= 1
 0 <= z(0,0,1_2) <= 1
 0 <= z(0,1,0_0) <= 1
 0 <= z(0,1,1_0) <= 1
 0 <= z(0,1,1_1) <= 1
 0 <= z(0,1,1_2) <= 1
 0 <= z(0,2,0_0) <= 1
 0 <= z(0,2,1_0) <= 1
 0 <= z(0,2,1_1) <= 1
 0 <= z(0,2,1_2) <= 1
 0 <= z(0,3,0_0) <= 1
 0 <= z(0,3,1_0) <= 1
 0 <= z(0,3,1_1) <= 1
 0 <= z(0,3,1_2) <= 1
 0 <= z(0,4,0_0) <= 1
 0 <= z(0,4,1_0) <= 1
 0 <= z(0,4,1_1) <= 1
 0 <= z(0,4,1_2) <= 1
 0 <= z(1,0,0_0) <= 1
 0 <= z(1,0,1_0) <= 1
 0 <= z(1,0,1_1) <= 1
 0 <= z(1,0,1_2) <= 1
 0 <= z(1,1,0_0) <= 1
 0 <= z(1,1,1_0) <= 1
 0 <= z(1,1,1_1) <= 1
 0 <= z(1,1,1_2) <= 1
 0 <= z(1,2,0_0) <= 1
 0 <= z(1,2,1_0) <= 1
 0 <= z(1,2,1_1) <= 1
 0 <= z(1,2,1_2) <= 1
 0 <= z(1,3,0_0) <= 1
 0 <= z(1,3,1_0) <= 1
 0 <= z(1,3,1_1) <= 1
 0 <= z(1,3,1_2) <= 1
 0 <= z(1,4,0_0) <= 1
 0 <= z(1,4,1_0) <= 1
 0 <= z(1,4,1_1) <= 1
 0 <= z(1,4,1_2) <= 1
 0 <= zh(0,0) <= 1
 0 <= zh(0,1) <= 1
 0 <= zh(0,2) <= 1
 0 <= zh(0,3) <= 1
 0 <= zh(0,4) <= 1
 0 <= zh(1,0) <= 1
 0 <= zh(1,1) <= 1
 0 <= zh(1,2) <= 1
 0 <= zh(1,3) <= 1
 0 <= zh(1,4) <= 1
 0 <= tau(0,1,1_0) <= 1
 0 <= tau(0,2,1_0) <= 1
 0 <= tau(2,0,1_0) <= 1
 0 <= tau(0,1,1_1) <= 1
 0 <= tau(0,2,1_1) <= 1
 0 <= tau(2,0,1_1) <= 1
 0 <= tau(1,2,1_0) <= 1
 0 <= tau(1,2,1_1) <= 1
 0 <= tau(3,4,1_0) <= 1
 0 <= tau(3,4,1_1) <= 1
 0 <= tauh(0,1,0_0) <= 1
 0 <= tauh(0,2,0_0) <= 1
 0 <= tauh(2,0,0_0) <= 1
 0 <= tauh(1,2,0_0) <= 1
 0 <= tauh(3,4,0_0) <= 1
 0 <= tauh(0,1,1_0) <= 1
 0 <= tauh(0,2,1_0) <= 1
 0 <= tauh(2,0,1_0) <= 1
 0 <= tauh(0,1,1_1) <= 1
 0 <= tauh(0,2,1_1) <= 1
 0 <= tauh(2,0,1_1) <= 1
 0 <= tauh(0,1,1_2) <= 1
 0 <= tauh(0,2,1_2) <= 1
 0 <= tauh(2,0,1_2) <= 1
 0 <= tauh(1,2,1_0) <= 1
 0 <= tauh(1,2,1_1) <= 1
 0 <= tauh(1,2,1_2) <= 1
 0 <= tauh(3,4,1_0) <= 1
 0 <= tauh(3,4,1_1) <= 1
 0 <= tauh(3,4,1_2) <= 1
Binaries
 x(0)  x(1)  z(0,0,0_0)  z(0,0,1_0)  z(0,0,1_1)  z(0,0,1_2)  z(0,1,0_0) 
 z(0,1,1_0)  z(0,1,1_1)  z(0,1,1_2)  z(0,2,0_0)  z(0,2,1_0)  z(0,2,1_1) 
 z(0,2,1_2)  z(0,3,0_0)  z(0,3,1_0)  z(0,3,1_1)  z(0,3,1_2)  z(0,4,0_0) 
 z(0,4,1_0)  z(0,4,1_1)  z(0,4,1_2)  z(1,0,0_0)  z(1,0,1_0)  z(1,0,1_1) 
 z(1,0,1_2)  z(1,1,0_0)  z(1,1,1_0)  z(1,1,1_1)  z(1,1,1_2)  z(1,2,0_0) 
 z(1,2,1_0)  z(1,2,1_1)  z(1,2,1_2)  z(1,3,0_0)  z(1,3,1_0)  z(1,3,1_1) 
 z(1,3,1_2)  z(1,4,0_0)  z(1,4,1_0)  z(1,4,1_1)  z(1,4,1_2)  zh(0,0)  zh(0,1) 
 zh(0,2)  zh(0,3)  zh(0,4)  zh(1,0)  zh(1,1)  zh(1,2)  zh(1,3)  zh(1,4) 
 tau(0,1,1_0)  tau(0,2,1_0)  tau(2,0,1_0)  tau(0,1,1_1)  tau(0,2,1_1) 
 tau(2,0,1_1)  tau(1,2,1_0)  tau(1,2,1_1)  tau(3,4,1_0)  tau(3,4,1_1) 
 tauh(0,1,0_0)  tauh(0,2,0_0)  tauh(2,0,0_0)  tauh(1,2,0_0)  tauh(3,4,0_0) 
 tauh(0,1,1_0)  tauh(0,2,1_0)  tauh(2,0,1_0)  tauh(0,1,1_1)  tauh(0,2,1_1) 
 tauh(2,0,1_1)  tauh(0,1,1_2)  tauh(0,2,1_2)  tauh(2,0,1_2)  tauh(1,2,1_0) 
 tauh(1,2,1_1)  tauh(1,2,1_2)  tauh(3,4,1_0)  tauh(3,4,1_1)  tauh(3,4,1_2) 
Generals
 yh(0)  y(0,0)  y(0,1)  yh(1)  y(1,0)  y(1,1)  yh(2)  y(2,0)  y(2,1)  yh(3) 
 y(3,0)  y(3,1)  yh(4)  y(4,0)  y(4,1) 
End
