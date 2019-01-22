\ENCODING=ISO-8859-1
\Problem name: ilog.cplex

Minimize
 obj: c1 + D1 + c2 + D2 + 3 c3 + 3 D3 + 3 c4 + 3 D4 + 2 c5 + 2 D5 + 0 X_0_1_1
      + 0 X_0_2_2 + 0 X_0_3_3 + 0 X_0_4_4 + 0 X_0_5_5 + 0 X_1_1_1 + 0 X_1_2_2
      + 0 X_1_3_3 + 0 X_1_4_4 + 0 X_1_5_5 + 0 X_2_1_1 + 0 X_2_2_2 + 0 X_2_3_3
      + 0 X_2_4_4 + 0 X_2_5_5
Subject To
 first_constraint:  X_0_0_1 + X_0_2_1 + X_0_3_1 + X_0_4_1 + X_0_5_1 + X_1_0_1
                    + X_1_2_1 + X_1_3_1 + X_1_4_1 + X_1_5_1 + X_2_0_1 + X_2_2_1
                    + X_2_3_1 + X_2_4_1 + X_2_5_1  = 1
 first_constraint:  X_0_0_2 + X_0_1_2 + X_0_3_2 + X_0_4_2 + X_0_5_2 + X_1_0_2
                    + X_1_1_2 + X_1_3_2 + X_1_4_2 + X_1_5_2 + X_2_0_2 + X_2_1_2
                    + X_2_3_2 + X_2_4_2 + X_2_5_2  = 1
 first_constraint:  X_0_0_3 + X_0_1_3 + X_0_2_3 + X_0_4_3 + X_0_5_3 + X_1_0_3
                    + X_1_1_3 + X_1_2_3 + X_1_4_3 + X_1_5_3 + X_2_0_3 + X_2_1_3
                    + X_2_2_3 + X_2_4_3 + X_2_5_3  = 1
 first_constraint:  X_0_0_4 + X_0_1_4 + X_0_2_4 + X_0_3_4 + X_0_5_4 + X_1_0_4
                    + X_1_1_4 + X_1_2_4 + X_1_3_4 + X_1_5_4 + X_2_0_4 + X_2_1_4
                    + X_2_2_4 + X_2_3_4 + X_2_5_4  = 1
 first_constraint:  X_0_0_5 + X_0_1_5 + X_0_2_5 + X_0_3_5 + X_0_4_5 + X_1_0_5
                    + X_1_1_5 + X_1_2_5 + X_1_3_5 + X_1_4_5 + X_2_0_5 + X_2_1_5
                    + X_2_2_5 + X_2_3_5 + X_2_4_5  = 1
 second_constraint: X_1_0_1 + X_1_0_2 + X_1_0_3 + X_1_0_4 + X_1_0_5 <= 1
 second_constraint: X_2_0_1 + X_2_0_2 + X_2_0_3 + X_2_0_4 + X_2_0_5 <= 1
 third_constraint:  X_0_0_1 + X_0_2_1 + X_0_3_1 + X_0_4_1 + X_0_5_1 - X_0_1_2
                    - X_0_1_3 - X_0_1_4 - X_0_1_5 - X_0_1_6  = 0
 third_constraint:  - X_0_2_1 + X_0_0_2 + X_0_1_2 + X_0_3_2 + X_0_4_2 + X_0_5_2
                    - X_0_2_3 - X_0_2_4 - X_0_2_5 - X_0_2_6  = 0
 third_constraint:  - X_0_3_1 - X_0_3_2 + X_0_0_3 + X_0_1_3 + X_0_2_3 + X_0_4_3
                    + X_0_5_3 - X_0_3_4 - X_0_3_5 - X_0_3_6  = 0
 third_constraint:  - X_0_4_1 - X_0_4_2 - X_0_4_3 + X_0_0_4 + X_0_1_4 + X_0_2_4
                    + X_0_3_4 + X_0_5_4 - X_0_4_5 - X_0_4_6  = 0
 third_constraint:  - X_0_5_1 - X_0_5_2 - X_0_5_3 - X_0_5_4 + X_0_0_5 + X_0_1_5
                    + X_0_2_5 + X_0_3_5 + X_0_4_5 - X_0_5_6  = 0
 third_constraint:  X_1_0_1 + X_1_2_1 + X_1_3_1 + X_1_4_1 + X_1_5_1 - X_1_1_2
                    - X_1_1_3 - X_1_1_4 - X_1_1_5 - X_1_1_6  = 0
 third_constraint:  - X_1_2_1 + X_1_0_2 + X_1_1_2 + X_1_3_2 + X_1_4_2 + X_1_5_2
                    - X_1_2_3 - X_1_2_4 - X_1_2_5 - X_1_2_6  = 0
 third_constraint:  - X_1_3_1 - X_1_3_2 + X_1_0_3 + X_1_1_3 + X_1_2_3 + X_1_4_3
                    + X_1_5_3 - X_1_3_4 - X_1_3_5 - X_1_3_6  = 0
 third_constraint:  - X_1_4_1 - X_1_4_2 - X_1_4_3 + X_1_0_4 + X_1_1_4 + X_1_2_4
                    + X_1_3_4 + X_1_5_4 - X_1_4_5 - X_1_4_6  = 0
 third_constraint:  - X_1_5_1 - X_1_5_2 - X_1_5_3 - X_1_5_4 + X_1_0_5 + X_1_1_5
                    + X_1_2_5 + X_1_3_5 + X_1_4_5 - X_1_5_6  = 0
 third_constraint:  X_2_0_1 + X_2_2_1 + X_2_3_1 + X_2_4_1 + X_2_5_1 - X_2_1_2
                    - X_2_1_3 - X_2_1_4 - X_2_1_5 - X_2_1_6  = 0
 third_constraint:  - X_2_2_1 + X_2_0_2 + X_2_1_2 + X_2_3_2 + X_2_4_2 + X_2_5_2
                    - X_2_2_3 - X_2_2_4 - X_2_2_5 - X_2_2_6  = 0
 third_constraint:  - X_2_3_1 - X_2_3_2 + X_2_0_3 + X_2_1_3 + X_2_2_3 + X_2_4_3
                    + X_2_5_3 - X_2_3_4 - X_2_3_5 - X_2_3_6  = 0
 third_constraint:  - X_2_4_1 - X_2_4_2 - X_2_4_3 + X_2_0_4 + X_2_1_4 + X_2_2_4
                    + X_2_3_4 + X_2_5_4 - X_2_4_5 - X_2_4_6  = 0
 third_constraint:  - X_2_5_1 - X_2_5_2 - X_2_5_3 - X_2_5_4 + X_2_0_5 + X_2_1_5
                    + X_2_2_5 + X_2_3_5 + X_2_4_5 - X_2_5_6  = 0
 forth_constraint:  c1 - 11 X_0_0_1 - 11 X_0_2_1 - 11 X_0_3_1 - 11 X_0_4_1
                    - 11 X_0_5_1 - 5 X_1_0_1 - 5 X_1_2_1 - 5 X_1_3_1
                    - 5 X_1_4_1 - 5 X_1_5_1 - 5 X_2_0_1 - 5 X_2_2_1 - 5 X_2_3_1
                    - 5 X_2_4_1 - 5 X_2_5_1 - P_1_0_1 - P_2_0_1 - P_1_2_1
                    - P_2_2_1 - P_1_3_1 - P_2_3_1 - P_1_4_1 - P_2_4_1 - P_1_5_1
                    - P_2_5_1  = 0
 forth_constraint:  c2 - 11 X_0_0_2 - 11 X_0_1_2 - 11 X_0_3_2 - 11 X_0_4_2
                    - 11 X_0_5_2 - 5 X_1_0_2 - 5 X_1_1_2 - 5 X_1_3_2
                    - 5 X_1_4_2 - 5 X_1_5_2 - 5 X_2_0_2 - 5 X_2_1_2 - 5 X_2_3_2
                    - 5 X_2_4_2 - 5 X_2_5_2 - P_1_0_2 - P_2_0_2 - P_1_1_2
                    - P_2_1_2 - P_1_3_2 - P_2_3_2 - P_1_4_2 - P_2_4_2 - P_1_5_2
                    - P_2_5_2  = 0
 forth_constraint:  c3 - 11 X_0_0_3 - 11 X_0_1_3 - 11 X_0_2_3 - 11 X_0_4_3
                    - 11 X_0_5_3 - 5 X_1_0_3 - 5 X_1_1_3 - 5 X_1_2_3
                    - 5 X_1_4_3 - 5 X_1_5_3 - 5 X_2_0_3 - 5 X_2_1_3 - 5 X_2_2_3
                    - 5 X_2_4_3 - 5 X_2_5_3 - P_1_0_3 - P_2_0_3 - P_1_1_3
                    - P_2_1_3 - P_1_2_3 - P_2_2_3 - P_1_4_3 - P_2_4_3 - P_1_5_3
                    - P_2_5_3  = 0
 forth_constraint:  c4 - 11 X_0_0_4 - 11 X_0_1_4 - 11 X_0_2_4 - 11 X_0_3_4
                    - 11 X_0_5_4 - 5 X_1_0_4 - 5 X_1_1_4 - 5 X_1_2_4
                    - 5 X_1_3_4 - 5 X_1_5_4 - 5 X_2_0_4 - 5 X_2_1_4 - 5 X_2_2_4
                    - 5 X_2_3_4 - 5 X_2_5_4 - P_1_0_4 - P_2_0_4 - P_1_1_4
                    - P_2_1_4 - P_1_2_4 - P_2_2_4 - P_1_3_4 - P_2_3_4 - P_1_5_4
                    - P_2_5_4  = 0
 forth_constraint:  c5 - 11 X_0_0_5 - 11 X_0_1_5 - 11 X_0_2_5 - 11 X_0_3_5
                    - 11 X_0_4_5 - 5 X_1_0_5 - 5 X_1_1_5 - 5 X_1_2_5
                    - 5 X_1_3_5 - 5 X_1_4_5 - 5 X_2_0_5 - 5 X_2_1_5 - 5 X_2_2_5
                    - 5 X_2_3_5 - 5 X_2_4_5 - P_1_0_5 - P_2_0_5 - P_1_1_5
                    - P_2_1_5 - P_1_2_5 - P_2_2_5 - P_1_3_5 - P_2_3_5 - P_1_4_5
                    - P_2_4_5  = 0
 fifth_constraint:  - 1000 X_1_0_1 + P_1_0_1 <= 0
 fifth_constraint:  P_1_0_1 - c0 <= 0
 fifth_constraint:  - 1000 X_1_0_1 + P_1_0_1 - c0 >= -1000
 fifth_constraint:  - 1000 X_1_0_2 + P_1_0_2 <= 0
 fifth_constraint:  P_1_0_2 - c0 <= 0
 fifth_constraint:  - 1000 X_1_0_2 + P_1_0_2 - c0 >= -1000
 fifth_constraint:  - 1000 X_1_0_3 + P_1_0_3 <= 0
 fifth_constraint:  P_1_0_3 - c0 <= 0
 fifth_constraint:  - 1000 X_1_0_3 + P_1_0_3 - c0 >= -1000
 fifth_constraint:  - 1000 X_1_0_4 + P_1_0_4 <= 0
 fifth_constraint:  P_1_0_4 - c0 <= 0
 fifth_constraint:  - 1000 X_1_0_4 + P_1_0_4 - c0 >= -1000
 fifth_constraint:  - 1000 X_1_0_5 + P_1_0_5 <= 0
 fifth_constraint:  P_1_0_5 - c0 <= 0
 fifth_constraint:  - 1000 X_1_0_5 + P_1_0_5 - c0 >= -1000
 fifth_constraint:  P_1_1_0 - 1000 X_1_1_0 <= 0
 fifth_constraint:  - c1 + P_1_1_0 <= 0
 fifth_constraint:  - c1 + P_1_1_0 - 1000 X_1_1_0 >= -1000
 fifth_constraint:  - 1000 X_1_1_2 + P_1_1_2 <= 0
 fifth_constraint:  - c1 + P_1_1_2 <= 0
 fifth_constraint:  - c1 - 1000 X_1_1_2 + P_1_1_2 >= -1000
 fifth_constraint:  - 1000 X_1_1_3 + P_1_1_3 <= 0
 fifth_constraint:  - c1 + P_1_1_3 <= 0
 fifth_constraint:  - c1 - 1000 X_1_1_3 + P_1_1_3 >= -1000
 fifth_constraint:  - 1000 X_1_1_4 + P_1_1_4 <= 0
 fifth_constraint:  - c1 + P_1_1_4 <= 0
 fifth_constraint:  - c1 - 1000 X_1_1_4 + P_1_1_4 >= -1000
 fifth_constraint:  - 1000 X_1_1_5 + P_1_1_5 <= 0
 fifth_constraint:  - c1 + P_1_1_5 <= 0
 fifth_constraint:  - c1 - 1000 X_1_1_5 + P_1_1_5 >= -1000
 fifth_constraint:  P_1_2_0 - 1000 X_1_2_0 <= 0
 fifth_constraint:  - c2 + P_1_2_0 <= 0
 fifth_constraint:  - c2 + P_1_2_0 - 1000 X_1_2_0 >= -1000
 fifth_constraint:  - 1000 X_1_2_1 + P_1_2_1 <= 0
 fifth_constraint:  - c2 + P_1_2_1 <= 0
 fifth_constraint:  - c2 - 1000 X_1_2_1 + P_1_2_1 >= -1000
 fifth_constraint:  - 1000 X_1_2_3 + P_1_2_3 <= 0
 fifth_constraint:  - c2 + P_1_2_3 <= 0
 fifth_constraint:  - c2 - 1000 X_1_2_3 + P_1_2_3 >= -1000
 fifth_constraint:  - 1000 X_1_2_4 + P_1_2_4 <= 0
 fifth_constraint:  - c2 + P_1_2_4 <= 0
 fifth_constraint:  - c2 - 1000 X_1_2_4 + P_1_2_4 >= -1000
 fifth_constraint:  - 1000 X_1_2_5 + P_1_2_5 <= 0
 fifth_constraint:  - c2 + P_1_2_5 <= 0
 fifth_constraint:  - c2 - 1000 X_1_2_5 + P_1_2_5 >= -1000
 fifth_constraint:  P_1_3_0 - 1000 X_1_3_0 <= 0
 fifth_constraint:  - c3 + P_1_3_0 <= 0
 fifth_constraint:  - c3 + P_1_3_0 - 1000 X_1_3_0 >= -1000
 fifth_constraint:  - 1000 X_1_3_1 + P_1_3_1 <= 0
 fifth_constraint:  - c3 + P_1_3_1 <= 0
 fifth_constraint:  - c3 - 1000 X_1_3_1 + P_1_3_1 >= -1000
 fifth_constraint:  - 1000 X_1_3_2 + P_1_3_2 <= 0
 fifth_constraint:  - c3 + P_1_3_2 <= 0
 fifth_constraint:  - c3 - 1000 X_1_3_2 + P_1_3_2 >= -1000
 fifth_constraint:  - 1000 X_1_3_4 + P_1_3_4 <= 0
 fifth_constraint:  - c3 + P_1_3_4 <= 0
 fifth_constraint:  - c3 - 1000 X_1_3_4 + P_1_3_4 >= -1000
 fifth_constraint:  - 1000 X_1_3_5 + P_1_3_5 <= 0
 fifth_constraint:  - c3 + P_1_3_5 <= 0
 fifth_constraint:  - c3 - 1000 X_1_3_5 + P_1_3_5 >= -1000
 fifth_constraint:  P_1_4_0 - 1000 X_1_4_0 <= 0
 fifth_constraint:  - c4 + P_1_4_0 <= 0
 fifth_constraint:  - c4 + P_1_4_0 - 1000 X_1_4_0 >= -1000
 fifth_constraint:  - 1000 X_1_4_1 + P_1_4_1 <= 0
 fifth_constraint:  - c4 + P_1_4_1 <= 0
 fifth_constraint:  - c4 - 1000 X_1_4_1 + P_1_4_1 >= -1000
 fifth_constraint:  - 1000 X_1_4_2 + P_1_4_2 <= 0
 fifth_constraint:  - c4 + P_1_4_2 <= 0
 fifth_constraint:  - c4 - 1000 X_1_4_2 + P_1_4_2 >= -1000
 fifth_constraint:  - 1000 X_1_4_3 + P_1_4_3 <= 0
 fifth_constraint:  - c4 + P_1_4_3 <= 0
 fifth_constraint:  - c4 - 1000 X_1_4_3 + P_1_4_3 >= -1000
 fifth_constraint:  - 1000 X_1_4_5 + P_1_4_5 <= 0
 fifth_constraint:  - c4 + P_1_4_5 <= 0
 fifth_constraint:  - c4 - 1000 X_1_4_5 + P_1_4_5 >= -1000
 fifth_constraint:  P_1_5_0 - 1000 X_1_5_0 <= 0
 fifth_constraint:  - c5 + P_1_5_0 <= 0
 fifth_constraint:  - c5 + P_1_5_0 - 1000 X_1_5_0 >= -1000
 fifth_constraint:  - 1000 X_1_5_1 + P_1_5_1 <= 0
 fifth_constraint:  - c5 + P_1_5_1 <= 0
 fifth_constraint:  - c5 - 1000 X_1_5_1 + P_1_5_1 >= -1000
 fifth_constraint:  - 1000 X_1_5_2 + P_1_5_2 <= 0
 fifth_constraint:  - c5 + P_1_5_2 <= 0
 fifth_constraint:  - c5 - 1000 X_1_5_2 + P_1_5_2 >= -1000
 fifth_constraint:  - 1000 X_1_5_3 + P_1_5_3 <= 0
 fifth_constraint:  - c5 + P_1_5_3 <= 0
 fifth_constraint:  - c5 - 1000 X_1_5_3 + P_1_5_3 >= -1000
 fifth_constraint:  - 1000 X_1_5_4 + P_1_5_4 <= 0
 fifth_constraint:  - c5 + P_1_5_4 <= 0
 fifth_constraint:  - c5 - 1000 X_1_5_4 + P_1_5_4 >= -1000
 fifth_constraint:  - 1000 X_2_0_1 + P_2_0_1 <= 0
 fifth_constraint:  P_2_0_1 - c0 <= 0
 fifth_constraint:  - 1000 X_2_0_1 + P_2_0_1 - c0 >= -1000
 fifth_constraint:  - 1000 X_2_0_2 + P_2_0_2 <= 0
 fifth_constraint:  P_2_0_2 - c0 <= 0
 fifth_constraint:  - 1000 X_2_0_2 + P_2_0_2 - c0 >= -1000
 fifth_constraint:  - 1000 X_2_0_3 + P_2_0_3 <= 0
 fifth_constraint:  P_2_0_3 - c0 <= 0
 fifth_constraint:  - 1000 X_2_0_3 + P_2_0_3 - c0 >= -1000
 fifth_constraint:  - 1000 X_2_0_4 + P_2_0_4 <= 0
 fifth_constraint:  P_2_0_4 - c0 <= 0
 fifth_constraint:  - 1000 X_2_0_4 + P_2_0_4 - c0 >= -1000
 fifth_constraint:  - 1000 X_2_0_5 + P_2_0_5 <= 0
 fifth_constraint:  P_2_0_5 - c0 <= 0
 fifth_constraint:  - 1000 X_2_0_5 + P_2_0_5 - c0 >= -1000
 fifth_constraint:  P_2_1_0 - 1000 X_2_1_0 <= 0
 fifth_constraint:  - c1 + P_2_1_0 <= 0
 fifth_constraint:  - c1 + P_2_1_0 - 1000 X_2_1_0 >= -1000
 fifth_constraint:  - 1000 X_2_1_2 + P_2_1_2 <= 0
 fifth_constraint:  - c1 + P_2_1_2 <= 0
 fifth_constraint:  - c1 - 1000 X_2_1_2 + P_2_1_2 >= -1000
 fifth_constraint:  - 1000 X_2_1_3 + P_2_1_3 <= 0
 fifth_constraint:  - c1 + P_2_1_3 <= 0
 fifth_constraint:  - c1 - 1000 X_2_1_3 + P_2_1_3 >= -1000
 fifth_constraint:  - 1000 X_2_1_4 + P_2_1_4 <= 0
 fifth_constraint:  - c1 + P_2_1_4 <= 0
 fifth_constraint:  - c1 - 1000 X_2_1_4 + P_2_1_4 >= -1000
 fifth_constraint:  - 1000 X_2_1_5 + P_2_1_5 <= 0
 fifth_constraint:  - c1 + P_2_1_5 <= 0
 fifth_constraint:  - c1 - 1000 X_2_1_5 + P_2_1_5 >= -1000
 fifth_constraint:  P_2_2_0 - 1000 X_2_2_0 <= 0
 fifth_constraint:  - c2 + P_2_2_0 <= 0
 fifth_constraint:  - c2 + P_2_2_0 - 1000 X_2_2_0 >= -1000
 fifth_constraint:  - 1000 X_2_2_1 + P_2_2_1 <= 0
 fifth_constraint:  - c2 + P_2_2_1 <= 0
 fifth_constraint:  - c2 - 1000 X_2_2_1 + P_2_2_1 >= -1000
 fifth_constraint:  - 1000 X_2_2_3 + P_2_2_3 <= 0
 fifth_constraint:  - c2 + P_2_2_3 <= 0
 fifth_constraint:  - c2 - 1000 X_2_2_3 + P_2_2_3 >= -1000
 fifth_constraint:  - 1000 X_2_2_4 + P_2_2_4 <= 0
 fifth_constraint:  - c2 + P_2_2_4 <= 0
 fifth_constraint:  - c2 - 1000 X_2_2_4 + P_2_2_4 >= -1000
 fifth_constraint:  - 1000 X_2_2_5 + P_2_2_5 <= 0
 fifth_constraint:  - c2 + P_2_2_5 <= 0
 fifth_constraint:  - c2 - 1000 X_2_2_5 + P_2_2_5 >= -1000
 fifth_constraint:  P_2_3_0 - 1000 X_2_3_0 <= 0
 fifth_constraint:  - c3 + P_2_3_0 <= 0
 fifth_constraint:  - c3 + P_2_3_0 - 1000 X_2_3_0 >= -1000
 fifth_constraint:  - 1000 X_2_3_1 + P_2_3_1 <= 0
 fifth_constraint:  - c3 + P_2_3_1 <= 0
 fifth_constraint:  - c3 - 1000 X_2_3_1 + P_2_3_1 >= -1000
 fifth_constraint:  - 1000 X_2_3_2 + P_2_3_2 <= 0
 fifth_constraint:  - c3 + P_2_3_2 <= 0
 fifth_constraint:  - c3 - 1000 X_2_3_2 + P_2_3_2 >= -1000
 fifth_constraint:  - 1000 X_2_3_4 + P_2_3_4 <= 0
 fifth_constraint:  - c3 + P_2_3_4 <= 0
 fifth_constraint:  - c3 - 1000 X_2_3_4 + P_2_3_4 >= -1000
 fifth_constraint:  - 1000 X_2_3_5 + P_2_3_5 <= 0
 fifth_constraint:  - c3 + P_2_3_5 <= 0
 fifth_constraint:  - c3 - 1000 X_2_3_5 + P_2_3_5 >= -1000
 fifth_constraint:  P_2_4_0 - 1000 X_2_4_0 <= 0
 fifth_constraint:  - c4 + P_2_4_0 <= 0
 fifth_constraint:  - c4 + P_2_4_0 - 1000 X_2_4_0 >= -1000
 fifth_constraint:  - 1000 X_2_4_1 + P_2_4_1 <= 0
 fifth_constraint:  - c4 + P_2_4_1 <= 0
 fifth_constraint:  - c4 - 1000 X_2_4_1 + P_2_4_1 >= -1000
 fifth_constraint:  - 1000 X_2_4_2 + P_2_4_2 <= 0
 fifth_constraint:  - c4 + P_2_4_2 <= 0
 fifth_constraint:  - c4 - 1000 X_2_4_2 + P_2_4_2 >= -1000
 fifth_constraint:  - 1000 X_2_4_3 + P_2_4_3 <= 0
 fifth_constraint:  - c4 + P_2_4_3 <= 0
 fifth_constraint:  - c4 - 1000 X_2_4_3 + P_2_4_3 >= -1000
 fifth_constraint:  - 1000 X_2_4_5 + P_2_4_5 <= 0
 fifth_constraint:  - c4 + P_2_4_5 <= 0
 fifth_constraint:  - c4 - 1000 X_2_4_5 + P_2_4_5 >= -1000
 fifth_constraint:  P_2_5_0 - 1000 X_2_5_0 <= 0
 fifth_constraint:  - c5 + P_2_5_0 <= 0
 fifth_constraint:  - c5 + P_2_5_0 - 1000 X_2_5_0 >= -1000
 fifth_constraint:  - 1000 X_2_5_1 + P_2_5_1 <= 0
 fifth_constraint:  - c5 + P_2_5_1 <= 0
 fifth_constraint:  - c5 - 1000 X_2_5_1 + P_2_5_1 >= -1000
 fifth_constraint:  - 1000 X_2_5_2 + P_2_5_2 <= 0
 fifth_constraint:  - c5 + P_2_5_2 <= 0
 fifth_constraint:  - c5 - 1000 X_2_5_2 + P_2_5_2 >= -1000
 fifth_constraint:  - 1000 X_2_5_3 + P_2_5_3 <= 0
 fifth_constraint:  - c5 + P_2_5_3 <= 0
 fifth_constraint:  - c5 - 1000 X_2_5_3 + P_2_5_3 >= -1000
 fifth_constraint:  - 1000 X_2_5_4 + P_2_5_4 <= 0
 fifth_constraint:  - c5 + P_2_5_4 <= 0
 fifth_constraint:  - c5 - 1000 X_2_5_4 + P_2_5_4 >= -1000
 sixthConstraint:   c1 - l_0 <= 0
 sixthConstraint:   c2 - l_1 <= 0
 sixthConstraint:   c3 - l_2 <= 0
 sixthConstraint:   c4 - l_3 <= 0
 sixthConstraint:   c5 - l_4 <= 0
 seventhConstraint: l_0 - 1000 y_1 <= 0
 seventhConstraint: - c1 + l_0 <= 0
 seventhConstraint: - c1 + l_0 - 1000 y_1 >= -1000
 seventhConstraint: l_1 - 1000 y_2 <= 0
 seventhConstraint: - c2 + l_1 <= 0
 seventhConstraint: - c2 + l_1 - 1000 y_2 >= -1000
 seventhConstraint: l_2 - 1000 y_3 <= 0
 seventhConstraint: - c3 + l_2 <= 0
 seventhConstraint: - c3 + l_2 - 1000 y_3 >= -1000
 seventhConstraint: l_3 - 1000 y_4 <= 0
 seventhConstraint: - c4 + l_3 <= 0
 seventhConstraint: - c4 + l_3 - 1000 y_4 >= -1000
 seventhConstraint: l_4 - 1000 y_5 <= 0
 seventhConstraint: - c5 + l_4 <= 0
 seventhConstraint: - c5 + l_4 - 1000 y_5 >= -1000
Bounds
      c1 >= -1000
      D1 = -5
      c2 >= -1000
      D2 = -5
      c3 >= -1000
      D3 = -5
      c4 >= -1000
      D4 = -10
      c5 >= -1000
      D5 = -10
 0 <= X_0_0_1 <= 1
 0 <= X_0_2_1 <= 1
 0 <= X_0_3_1 <= 1
 0 <= X_0_4_1 <= 1
 0 <= X_0_5_1 <= 1
 0 <= X_1_0_1 <= 1
 0 <= X_1_2_1 <= 1
 0 <= X_1_3_1 <= 1
 0 <= X_1_4_1 <= 1
 0 <= X_1_5_1 <= 1
 0 <= X_2_0_1 <= 1
 0 <= X_2_2_1 <= 1
 0 <= X_2_3_1 <= 1
 0 <= X_2_4_1 <= 1
 0 <= X_2_5_1 <= 1
 0 <= X_0_0_2 <= 1
 0 <= X_0_1_2 <= 1
 0 <= X_0_3_2 <= 1
 0 <= X_0_4_2 <= 1
 0 <= X_0_5_2 <= 1
 0 <= X_1_0_2 <= 1
 0 <= X_1_1_2 <= 1
 0 <= X_1_3_2 <= 1
 0 <= X_1_4_2 <= 1
 0 <= X_1_5_2 <= 1
 0 <= X_2_0_2 <= 1
 0 <= X_2_1_2 <= 1
 0 <= X_2_3_2 <= 1
 0 <= X_2_4_2 <= 1
 0 <= X_2_5_2 <= 1
 0 <= X_0_0_3 <= 1
 0 <= X_0_1_3 <= 1
 0 <= X_0_2_3 <= 1
 0 <= X_0_4_3 <= 1
 0 <= X_0_5_3 <= 1
 0 <= X_1_0_3 <= 1
 0 <= X_1_1_3 <= 1
 0 <= X_1_2_3 <= 1
 0 <= X_1_4_3 <= 1
 0 <= X_1_5_3 <= 1
 0 <= X_2_0_3 <= 1
 0 <= X_2_1_3 <= 1
 0 <= X_2_2_3 <= 1
 0 <= X_2_4_3 <= 1
 0 <= X_2_5_3 <= 1
 0 <= X_0_0_4 <= 1
 0 <= X_0_1_4 <= 1
 0 <= X_0_2_4 <= 1
 0 <= X_0_3_4 <= 1
 0 <= X_0_5_4 <= 1
 0 <= X_1_0_4 <= 1
 0 <= X_1_1_4 <= 1
 0 <= X_1_2_4 <= 1
 0 <= X_1_3_4 <= 1
 0 <= X_1_5_4 <= 1
 0 <= X_2_0_4 <= 1
 0 <= X_2_1_4 <= 1
 0 <= X_2_2_4 <= 1
 0 <= X_2_3_4 <= 1
 0 <= X_2_5_4 <= 1
 0 <= X_0_0_5 <= 1
 0 <= X_0_1_5 <= 1
 0 <= X_0_2_5 <= 1
 0 <= X_0_3_5 <= 1
 0 <= X_0_4_5 <= 1
 0 <= X_1_0_5 <= 1
 0 <= X_1_1_5 <= 1
 0 <= X_1_2_5 <= 1
 0 <= X_1_3_5 <= 1
 0 <= X_1_4_5 <= 1
 0 <= X_2_0_5 <= 1
 0 <= X_2_1_5 <= 1
 0 <= X_2_2_5 <= 1
 0 <= X_2_3_5 <= 1
 0 <= X_2_4_5 <= 1
 0 <= X_0_1_1 <= 1
 0 <= X_0_1_6 <= 1
 0 <= X_0_2_2 <= 1
 0 <= X_0_2_6 <= 1
 0 <= X_0_3_3 <= 1
 0 <= X_0_3_6 <= 1
 0 <= X_0_4_4 <= 1
 0 <= X_0_4_6 <= 1
 0 <= X_0_5_5 <= 1
 0 <= X_0_5_6 <= 1
 0 <= X_1_1_1 <= 1
 0 <= X_1_1_6 <= 1
 0 <= X_1_2_2 <= 1
 0 <= X_1_2_6 <= 1
 0 <= X_1_3_3 <= 1
 0 <= X_1_3_6 <= 1
 0 <= X_1_4_4 <= 1
 0 <= X_1_4_6 <= 1
 0 <= X_1_5_5 <= 1
 0 <= X_1_5_6 <= 1
 0 <= X_2_1_1 <= 1
 0 <= X_2_1_6 <= 1
 0 <= X_2_2_2 <= 1
 0 <= X_2_2_6 <= 1
 0 <= X_2_3_3 <= 1
 0 <= X_2_3_6 <= 1
 0 <= X_2_4_4 <= 1
 0 <= X_2_4_6 <= 1
 0 <= X_2_5_5 <= 1
 0 <= X_2_5_6 <= 1
 0 <= P_1_0_1 <= 1000
 0 <= P_2_0_1 <= 1000
 0 <= P_1_2_1 <= 1000
 0 <= P_2_2_1 <= 1000
 0 <= P_1_3_1 <= 1000
 0 <= P_2_3_1 <= 1000
 0 <= P_1_4_1 <= 1000
 0 <= P_2_4_1 <= 1000
 0 <= P_1_5_1 <= 1000
 0 <= P_2_5_1 <= 1000
 0 <= P_1_0_2 <= 1000
 0 <= P_2_0_2 <= 1000
 0 <= P_1_1_2 <= 1000
 0 <= P_2_1_2 <= 1000
 0 <= P_1_3_2 <= 1000
 0 <= P_2_3_2 <= 1000
 0 <= P_1_4_2 <= 1000
 0 <= P_2_4_2 <= 1000
 0 <= P_1_5_2 <= 1000
 0 <= P_2_5_2 <= 1000
 0 <= P_1_0_3 <= 1000
 0 <= P_2_0_3 <= 1000
 0 <= P_1_1_3 <= 1000
 0 <= P_2_1_3 <= 1000
 0 <= P_1_2_3 <= 1000
 0 <= P_2_2_3 <= 1000
 0 <= P_1_4_3 <= 1000
 0 <= P_2_4_3 <= 1000
 0 <= P_1_5_3 <= 1000
 0 <= P_2_5_3 <= 1000
 0 <= P_1_0_4 <= 1000
 0 <= P_2_0_4 <= 1000
 0 <= P_1_1_4 <= 1000
 0 <= P_2_1_4 <= 1000
 0 <= P_1_2_4 <= 1000
 0 <= P_2_2_4 <= 1000
 0 <= P_1_3_4 <= 1000
 0 <= P_2_3_4 <= 1000
 0 <= P_1_5_4 <= 1000
 0 <= P_2_5_4 <= 1000
 0 <= P_1_0_5 <= 1000
 0 <= P_2_0_5 <= 1000
 0 <= P_1_1_5 <= 1000
 0 <= P_2_1_5 <= 1000
 0 <= P_1_2_5 <= 1000
 0 <= P_2_2_5 <= 1000
 0 <= P_1_3_5 <= 1000
 0 <= P_2_3_5 <= 1000
 0 <= P_1_4_5 <= 1000
 0 <= P_2_4_5 <= 1000
      c0 = 0
 0 <= P_1_1_0 <= 1000
 0 <= X_1_1_0 <= 1
 0 <= P_1_2_0 <= 1000
 0 <= X_1_2_0 <= 1
 0 <= P_1_3_0 <= 1000
 0 <= X_1_3_0 <= 1
 0 <= P_1_4_0 <= 1000
 0 <= X_1_4_0 <= 1
 0 <= P_1_5_0 <= 1000
 0 <= X_1_5_0 <= 1
 0 <= P_2_1_0 <= 1000
 0 <= X_2_1_0 <= 1
 0 <= P_2_2_0 <= 1000
 0 <= X_2_2_0 <= 1
 0 <= P_2_3_0 <= 1000
 0 <= X_2_3_0 <= 1
 0 <= P_2_4_0 <= 1000
 0 <= X_2_4_0 <= 1
 0 <= P_2_5_0 <= 1000
 0 <= X_2_5_0 <= 1
 1000 <= l_0 <= -1000
 1000 <= l_1 <= -1000
 1000 <= l_2 <= -1000
 1000 <= l_3 <= -1000
 1000 <= l_4 <= -1000
 0 <= y_1 <= 1
 0 <= y_2 <= 1
 0 <= y_3 <= 1
 0 <= y_4 <= 1
 0 <= y_5 <= 1
Binaries
 X_0_0_1  X_0_2_1  X_0_3_1  X_0_4_1  X_0_5_1  X_1_0_1  X_1_2_1  X_1_3_1 
 X_1_4_1  X_1_5_1  X_2_0_1  X_2_2_1  X_2_3_1  X_2_4_1  X_2_5_1  X_0_0_2 
 X_0_1_2  X_0_3_2  X_0_4_2  X_0_5_2  X_1_0_2  X_1_1_2  X_1_3_2  X_1_4_2 
 X_1_5_2  X_2_0_2  X_2_1_2  X_2_3_2  X_2_4_2  X_2_5_2  X_0_0_3  X_0_1_3 
 X_0_2_3  X_0_4_3  X_0_5_3  X_1_0_3  X_1_1_3  X_1_2_3  X_1_4_3  X_1_5_3 
 X_2_0_3  X_2_1_3  X_2_2_3  X_2_4_3  X_2_5_3  X_0_0_4  X_0_1_4  X_0_2_4 
 X_0_3_4  X_0_5_4  X_1_0_4  X_1_1_4  X_1_2_4  X_1_3_4  X_1_5_4  X_2_0_4 
 X_2_1_4  X_2_2_4  X_2_3_4  X_2_5_4  X_0_0_5  X_0_1_5  X_0_2_5  X_0_3_5 
 X_0_4_5  X_1_0_5  X_1_1_5  X_1_2_5  X_1_3_5  X_1_4_5  X_2_0_5  X_2_1_5 
 X_2_2_5  X_2_3_5  X_2_4_5  X_0_1_1  X_0_1_6  X_0_2_2  X_0_2_6  X_0_3_3 
 X_0_3_6  X_0_4_4  X_0_4_6  X_0_5_5  X_0_5_6  X_1_1_1  X_1_1_6  X_1_2_2 
 X_1_2_6  X_1_3_3  X_1_3_6  X_1_4_4  X_1_4_6  X_1_5_5  X_1_5_6  X_2_1_1 
 X_2_1_6  X_2_2_2  X_2_2_6  X_2_3_3  X_2_3_6  X_2_4_4  X_2_4_6  X_2_5_5 
 X_2_5_6  X_1_1_0  X_1_2_0  X_1_3_0  X_1_4_0  X_1_5_0  X_2_1_0  X_2_2_0 
 X_2_3_0  X_2_4_0  X_2_5_0  y_1  y_2  y_3  y_4  y_5 
Generals
 c1  D1  c2  D2  c3  D3  c4  D4  c5  D5  P_1_0_1  P_2_0_1  P_1_2_1  P_2_2_1 
 P_1_3_1  P_2_3_1  P_1_4_1  P_2_4_1  P_1_5_1  P_2_5_1  P_1_0_2  P_2_0_2 
 P_1_1_2  P_2_1_2  P_1_3_2  P_2_3_2  P_1_4_2  P_2_4_2  P_1_5_2  P_2_5_2 
 P_1_0_3  P_2_0_3  P_1_1_3  P_2_1_3  P_1_2_3  P_2_2_3  P_1_4_3  P_2_4_3 
 P_1_5_3  P_2_5_3  P_1_0_4  P_2_0_4  P_1_1_4  P_2_1_4  P_1_2_4  P_2_2_4 
 P_1_3_4  P_2_3_4  P_1_5_4  P_2_5_4  P_1_0_5  P_2_0_5  P_1_1_5  P_2_1_5 
 P_1_2_5  P_2_2_5  P_1_3_5  P_2_3_5  P_1_4_5  P_2_4_5  c0  P_1_1_0  P_1_2_0 
 P_1_3_0  P_1_4_0  P_1_5_0  P_2_1_0  P_2_2_0  P_2_3_0  P_2_4_0  P_2_5_0  l_0 
 l_1  l_2  l_3  l_4 
End
