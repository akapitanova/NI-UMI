(define (domain rush_hour_domain)

    (:predicates
        (is_place ?p)
        (is_car ?c)
        (is_truck ?t)
        
        (is_occupied ?p)
        (at ?c ?p)
        (next_to ?p1 ?p2)
        (is_horizontal ?c)
        (is_vertical ?c)
        (in_same_row ?p1 ?p2)
        (in_same_column ?p1 ?p2)
        
    )


    ; moving the car
    
    (:action move_car_horizontal
        :parameters (?car ?place_a ?place_b ?to_place)
        :precondition (and (is_car ?car) (is_place ?place_a) (is_place ?place_b) 
                            (is_horizontal ?car) (next_to ?place_a ?place_b) 
                            (at ?car ?place_a) (at ?car ?place_b) (not(is_occupied ?to_place))
                            (next_to ?place_b ?to_place) (in_same_row ?place_b ?to_place)
        
        )
        :effect (and (is_occupied ?to_place) (not(is_occupied ?place_a))
                    (not(at ?car ?place_a)) (at ?car ?to_place)
        )
    )


    
    
     (:action move_car_vertical
        :parameters (?car ?place_a ?place_b ?to_place)
        :precondition (and (is_car ?car) (is_place ?place_a) (is_place ?place_b) 
                            (is_vertical ?car) (next_to ?place_a ?place_b) 
                            (at ?car ?place_a) (at ?car ?place_b) (not(is_occupied ?to_place))
                            (next_to ?place_a ?to_place) (in_same_column ?place_a ?to_place)
        
        )
        :effect (and (is_occupied ?to_place) (not(is_occupied ?place_b))
                    (not(at ?car ?place_b)) (at ?car ?to_place)
        )
    )

    
    ; move truck
    (:action move_truck_horizontal
        :parameters (?truck ?place_a ?place_b ?place_c ?to_place)
        :precondition (and (is_truck ?truck) (is_place ?place_a) (is_place ?place_b) (is_place ?place_c)
                            (is_horizontal ?truck) (next_to ?place_a ?place_b)  (next_to ?place_c ?place_b) 
                            (at ?truck ?place_a) (at ?truck ?place_b) (at ?truck ?place_c) (not(is_occupied ?to_place))
                            (next_to ?place_c ?to_place) (in_same_row ?place_b ?to_place)
        
        )
        :effect (and (is_occupied ?to_place) (not(is_occupied ?place_a))
                    (not(at ?truck ?place_a)) (at ?truck ?to_place)
        )
    )


    
    
     (:action move_truck_vertical
        :parameters (?truck ?place_a ?place_b ?place_c ?to_place)
        :precondition (and (is_truck ?truck) (is_place ?place_a) (is_place ?place_b) (is_place ?place_c)
                            (is_vertical ?truck) (next_to ?place_a ?place_b)  (next_to ?place_c ?place_b)
                            (at ?truck ?place_a) (at ?truck ?place_b) (at ?truck ?place_c) (not(is_occupied ?to_place))
                            (next_to ?place_a ?to_place) (in_same_column ?place_b ?to_place)
        
        )
        :effect (and (is_occupied ?to_place) (not(is_occupied ?place_c))
                    (not(at ?truck ?place_c)) (at ?truck ?to_place)
        )
    )

)