(define (problem zmateni_problem)
    (:domain zmateni_domain)

    (:objects monkey banana box place_a place_b place_c)
    
    (:init (is_monkey monkey)
           (is_banana banana)
           (is_box box)
    
           (is_place place_a)
           (is_place place_b)
           (is_place place_c)          
            
           (at box place_a)  
           (at banana place_b)
           (at monkey place_c)
           
           (over banana monkey)
           )
    (:goal (and (has monkey banana)
                (at box place_a)
                (at monkey place_c)
        )
    )
    
)

