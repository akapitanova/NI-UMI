(define (problem baseline_problem)
    (:domain baseline_domain)

    (:objects monkey banana box_a box_b place_a place_b place_c)
    
    (:init (is_monkey monkey)
           (is_banana banana)
           (is_box box_a)
           (is_box box_b)
    
           (is_place place_a)
           (is_place place_b)
           (is_place place_c)          
            
           (at box_b place_a)  
           (at box_a place_c)
           (at banana place_b)
           (at monkey place_c)
           
           (over banana monkey)
           
           (is_heavy box_a)
           )
    (:goal (has monkey banana)))

