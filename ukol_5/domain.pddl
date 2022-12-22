(define (domain domain_shakey)


    (:predicates
    
        (at ?o ?p)
        (on ?m ?b)
        (next_to ?r1 ?r2)
        (has ?r ?o)
        
        (is_robot ?r)
        (is_room ?p)
        (is_light ?b)
        (is_box ?b)
        
        (switched_on ?l)
        (robot_on_box ?r)
        (robot_has_box ?r)
        
    )


    (:action go
        :parameters (?robot ?start_room ?end_room)
        :precondition (and (is_robot ?robot) (is_room ?start_room) (is_room ?end_room) (at ?robot ?start_room) 
        (next_to ?start_room ?end_room) (not(robot_on_box ?robot)))
        :effect (and (at ?robot ?end_room) (not(at ?robot ?start_room)))
    )
    
    ; taking box
    (:action take_box
        :parameters (?robot ?box ?room)
        :precondition (and (is_robot ?robot) (is_box ?box) (is_room ?room)
        (at ?robot ?room) (at ?box ?room) (not(robot_on_box ?robot)) (not(robot_has_box ?robot)) )
        :effect (and (has ?robot ?box) (robot_has_box ?robot))
    )
    
    (:action place_box
        :parameters (?robot ?box ?room)
        :precondition (and (is_robot ?robot) (is_box ?box) (is_room ?room)
        (at ?robot ?room) (not(robot_on_box ?robot)) (robot_has_box ?robot) (has ?robot ?box) )
        :effect (and (not(has ?robot ?box)) (not(robot_has_box ?robot)) (at ?box ?room))
    )
    
    
    ; climbing on box
    (:action climb_up
        :parameters (?robot ?box ?room)
        :precondition (and (is_robot ?robot) (is_box ?box) (is_room ?room) (not(on ?robot ?box)) 
        (at ?robot ?room) (at ?box ?room))
        :effect (and (on ?robot ?box) (robot_on_box ?robot) )
    )
    
    (:action climb_down
        :parameters (?robot ?box ?room)
        :precondition (and (is_robot ?robot) (is_box ?box) (is_room ?room) (on ?robot ?box) 
        (at ?robot ?room) (at ?box ?room))
        :effect (and (not(on ?robot ?box)) (not(robot_on_box ?robot)) )
    )
    
    
    ; switching the light
    (:action switch_on
        :parameters (?robot ?room ?light ?box)
        :precondition (and (is_robot ?robot) (is_light ?light) (is_room ?room) (is_box ?box) 
        (on ?robot ?box) (at ?robot ?room) (at ?light ?room) (at ?box ?room) (not(switched_on ?light)))
        :effect (and (switched_on ?light) )
    )
    
    (:action switch_off
        :parameters (?robot ?room ?light ?box)
        :precondition (and (is_robot ?robot) (is_light ?light) (is_room ?room) (is_box ?box) 
        (on ?robot ?box) (at ?robot ?room) (at ?light ?room) (switched_on ?light))
        :effect (and (not(switched_on ?light)) )
    )
)
