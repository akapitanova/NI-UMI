(define (problem rush_hour_problem)
    (:domain rush_hour_domain)
    
    (:objects
        car_y car_r car_g car_b 
        
        
        truck_g truck_b
        
        
        place_00 place_01 place_02 place_03 place_04 place_05 
        place_10 place_11 place_12 place_13 place_14 place_15 
        place_20 place_21 place_22 place_23 place_24 place_25 
        place_30 place_31 place_32 place_33 place_34 place_35 
        place_40 place_41 place_42 place_43 place_44 place_45 
        place_50 place_51 place_52 place_53 place_54 place_55 
    )

    (:init
        (is_car car_y)
        (is_horizontal car_y)
        (is_car car_r)
        (is_vertical car_r)
        (is_car car_g)
        (is_vertical car_g)
        (is_car car_b)
        (is_horizontal car_b)
        
        
        (is_truck truck_b)
        (is_horizontal truck_b)
        (is_truck truck_g)
        (is_horizontal truck_g)
        
        
        (is_place place_00) (is_place place_01) (is_place place_02) (is_place place_03) (is_place place_04) (is_place place_05) 
        (is_place place_10) (is_place place_11) (is_place place_12) (is_place place_13) (is_place place_14) (is_place place_15) 
        (is_place place_20) (is_place place_21) (is_place place_22) (is_place place_23) (is_place place_24) (is_place place_25) 
        (is_place place_30) (is_place place_31) (is_place place_32) (is_place place_33) (is_place place_34) (is_place place_35) 
        (is_place place_40) (is_place place_41) (is_place place_42) (is_place place_43) (is_place place_44) (is_place place_45) 
        (is_place place_50) (is_place place_51) (is_place place_52) (is_place place_53) (is_place place_54) (is_place place_55)
        

        (at car_y place_03)
        (at car_y place_13)
        
        (is_occupied place_03)
        (is_occupied place_13)
        
        (at car_r place_31)
        (at car_r place_32)
        
        (is_occupied place_31)
        (is_occupied place_32)
        
        (at car_g place_53)
        (at car_g place_54)
        
        (is_occupied place_53)
        (is_occupied place_54)
        
        (at car_b place_42)
        (at car_b place_52)
        
        (is_occupied place_42)
        (is_occupied place_52)
        
        (at truck_g place_24)
        (at truck_g place_34)
        (at truck_g place_44)
        
        (is_occupied place_24)
        (is_occupied place_34)
        (is_occupied place_44)
        
        (at truck_b place_35)
        (at truck_b place_45)
        (at truck_b place_55)
        
        (is_occupied place_35)
        (is_occupied place_45)
        (is_occupied place_55)
        
        
        ; mista uvnitr
        
        (next_to place_11 place_01)
        (next_to place_11 place_10)
        (next_to place_11 place_21)
        (next_to place_11 place_12)
        
        
        (next_to place_12 place_02)
        (next_to place_12 place_11)
        (next_to place_12 place_22)
        (next_to place_12 place_13)
        
        
        (next_to place_13 place_03)
        (next_to place_13 place_12)
        (next_to place_13 place_23)
        (next_to place_13 place_14)
        
        
        (next_to place_14 place_04)
        (next_to place_14 place_13)
        (next_to place_14 place_24)
        (next_to place_14 place_15)
        
        
        (next_to place_21 place_11)
        (next_to place_21 place_20)
        (next_to place_21 place_31)
        (next_to place_21 place_22)
        
        
        (next_to place_22 place_12)
        (next_to place_22 place_21)
        (next_to place_22 place_32)
        (next_to place_22 place_23)
        
        
        (next_to place_23 place_13)
        (next_to place_23 place_22)
        (next_to place_23 place_33)
        (next_to place_23 place_24)
        
        
        (next_to place_24 place_14)
        (next_to place_24 place_23)
        (next_to place_24 place_34)
        (next_to place_24 place_25)
        
        
        (next_to place_31 place_21)
        (next_to place_31 place_30)
        (next_to place_31 place_41)
        (next_to place_31 place_32)
        
        
        (next_to place_32 place_22)
        (next_to place_32 place_31)
        (next_to place_32 place_42)
        (next_to place_32 place_33)
        
        
        (next_to place_33 place_23)
        (next_to place_33 place_32)
        (next_to place_33 place_43)
        (next_to place_33 place_34)
        
        
        (next_to place_34 place_24)
        (next_to place_34 place_33)
        (next_to place_34 place_44)
        (next_to place_34 place_35)
        
        
        (next_to place_41 place_31)
        (next_to place_41 place_40)
        (next_to place_41 place_51)
        (next_to place_41 place_42)
        
        
        (next_to place_42 place_32)
        (next_to place_42 place_41)
        (next_to place_42 place_52)
        (next_to place_42 place_43)
        
        
        (next_to place_43 place_33)
        (next_to place_43 place_42)
        (next_to place_43 place_53)
        (next_to place_43 place_44)
        
        (next_to place_44 place_34)
        (next_to place_44 place_43)
        (next_to place_44 place_54)
        (next_to place_44 place_45)
        
        ;mista u hrany
        (next_to place_01 place_00)
        (next_to place_01 place_11)
        (next_to place_01 place_02)
        
        (next_to place_51 place_50)
        (next_to place_51 place_41)
        (next_to place_51 place_52)
        
        (next_to place_02 place_01)
        (next_to place_02 place_12)
        (next_to place_02 place_03)
        
        (next_to place_52 place_51)
        (next_to place_52 place_42)
        (next_to place_52 place_53)
        
        (next_to place_03 place_02)
        (next_to place_03 place_13)
        (next_to place_03 place_04)
        
        (next_to place_53 place_52)
        (next_to place_53 place_43)
        (next_to place_53 place_54)
        
        (next_to place_04 place_03)
        (next_to place_04 place_14)
        (next_to place_04 place_05)
        
        (next_to place_54 place_53)
        (next_to place_54 place_44)
        (next_to place_54 place_55)
        
        
        (next_to place_10 place_11)
        (next_to place_10 place_20)
        (next_to place_10 place_00)
        
        (next_to place_15 place_14)
        (next_to place_15 place_25)
        (next_to place_15 place_05)
        
        (next_to place_20 place_21)
        (next_to place_20 place_30)
        (next_to place_20 place_10)
        
        (next_to place_25 place_24)
        (next_to place_25 place_35)
        (next_to place_25 place_15)
        
        (next_to place_30 place_31)
        (next_to place_30 place_40)
        (next_to place_30 place_20)
        
        (next_to place_35 place_34)
        (next_to place_35 place_45)
        (next_to place_35 place_25)
        
        (next_to place_40 place_41)
        (next_to place_40 place_50)
        (next_to place_40 place_30)
        
        (next_to place_45 place_44)
        (next_to place_45 place_55)
        (next_to place_45 place_35)
        
        ; v rohu 
        (next_to place_00 place_10)
        (next_to place_00 place_01)
        
        (next_to place_50 place_51)
        (next_to place_50 place_40)
        
        
        
        
        (next_to place_05 place_15)
        (next_to place_05 place_04)
        
        (next_to place_55 place_54)
        (next_to place_55 place_45)
        
        
        
        ;same column
        (in_same_column place_00 place_01)
        (in_same_column place_10 place_11)
        (in_same_column place_20 place_21)
        (in_same_column place_30 place_31)
        (in_same_column place_40 place_41)
        (in_same_column place_50 place_51)
        
        (in_same_column place_01 place_02)
        (in_same_column place_11 place_12)
        (in_same_column place_21 place_22)
        (in_same_column place_31 place_32)
        (in_same_column place_41 place_42)
        (in_same_column place_51 place_52)
        
        (in_same_column place_02 place_03)
        (in_same_column place_12 place_13)
        (in_same_column place_22 place_23)
        (in_same_column place_32 place_33)
        (in_same_column place_42 place_43)
        (in_same_column place_52 place_53)
        
        (in_same_column place_03 place_04)
        (in_same_column place_13 place_14)
        (in_same_column place_23 place_24)
        (in_same_column place_33 place_34)
        (in_same_column place_43 place_44)
        (in_same_column place_53 place_54)
        
        (in_same_column place_04 place_05)
        (in_same_column place_14 place_15)
        (in_same_column place_24 place_25)
        (in_same_column place_34 place_35)
        (in_same_column place_44 place_45)
        (in_same_column place_54 place_55)
        
        (in_same_column place_05 place_04)
        (in_same_column place_15 place_14)
        (in_same_column place_25 place_24)
        (in_same_column place_35 place_34)
        (in_same_column place_45 place_44)
        (in_same_column place_55 place_54)
        
        (in_same_column place_04 place_03)
        (in_same_column place_14 place_13)
        (in_same_column place_24 place_23)
        (in_same_column place_34 place_33)
        (in_same_column place_44 place_43)
        (in_same_column place_54 place_53)
        
        (in_same_column place_03 place_02)
        (in_same_column place_13 place_12)
        (in_same_column place_23 place_22)
        (in_same_column place_33 place_32)
        (in_same_column place_43 place_42)
        (in_same_column place_53 place_52)
        
        (in_same_column place_02 place_01)
        (in_same_column place_12 place_11)
        (in_same_column place_22 place_21)
        (in_same_column place_32 place_31)
        (in_same_column place_42 place_41)
        (in_same_column place_52 place_51)
        
        (in_same_column place_01 place_00)
        (in_same_column place_11 place_10)
        (in_same_column place_21 place_20)
        (in_same_column place_31 place_30)
        (in_same_column place_41 place_40)
        (in_same_column place_51 place_50)
        
        
        
        ; same row
        (in_same_row place_00 place_10)
        (in_same_row place_01 place_11)
        (in_same_row place_02 place_12)
        (in_same_row place_03 place_13)
        (in_same_row place_04 place_14)
        (in_same_row place_05 place_15)
        
        (in_same_row place_10 place_20)
        (in_same_row place_11 place_21)
        (in_same_row place_12 place_22)
        (in_same_row place_13 place_23)
        (in_same_row place_14 place_24)
        (in_same_row place_15 place_25)
        
        (in_same_row place_20 place_30)
        (in_same_row place_21 place_31)
        (in_same_row place_22 place_32)
        (in_same_row place_23 place_33)
        (in_same_row place_24 place_34)
        (in_same_row place_25 place_35)
        
        (in_same_row place_30 place_40)
        (in_same_row place_31 place_41)
        (in_same_row place_32 place_42)
        (in_same_row place_33 place_43)
        (in_same_row place_34 place_44)
        (in_same_row place_35 place_45)
        
        (in_same_row place_40 place_50)
        (in_same_row place_41 place_51)
        (in_same_row place_42 place_52)
        (in_same_row place_43 place_53)
        (in_same_row place_44 place_54)
        (in_same_row place_45 place_55)
        
        (in_same_row place_50 place_40)
        (in_same_row place_51 place_41)
        (in_same_row place_52 place_42)
        (in_same_row place_53 place_43)
        (in_same_row place_54 place_44)
        (in_same_row place_55 place_45)
        
        (in_same_row place_40 place_30)
        (in_same_row place_41 place_31)
        (in_same_row place_42 place_32)
        (in_same_row place_43 place_33)
        (in_same_row place_44 place_34)
        (in_same_row place_45 place_35)
        
        (in_same_row place_30 place_20)
        (in_same_row place_31 place_21)
        (in_same_row place_32 place_22)
        (in_same_row place_33 place_23)
        (in_same_row place_34 place_24)
        (in_same_row place_35 place_25)
        
        (in_same_row place_20 place_10)
        (in_same_row place_21 place_11)
        (in_same_row place_22 place_12)
        (in_same_row place_23 place_13)
        (in_same_row place_24 place_14)
        (in_same_row place_25 place_15)
        
        (in_same_row place_10 place_00)
        (in_same_row place_11 place_01)
        (in_same_row place_12 place_02)
        (in_same_row place_13 place_03)
        (in_same_row place_14 place_04)
        (in_same_row place_15 place_05)
        
    )
    
    (:goal (and
        (at car_y place_53)
        (at car_y place_43)
    )
    
    )


)
