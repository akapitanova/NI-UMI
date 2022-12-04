(define (domain zmateni_domain)


    (:predicates
    
        (at ?o ?p)
        (on ?m ?b)
        (over ?b ?m)
        
        (is_monkey ?m)
        (is_place ?p)
        (is_banana ?b)
        (is_box ?b)
        
        (has ?m ?o)
        
    )


    (:action go
        :parameters (?monkey ?start ?end)
        :precondition (and (is_monkey ?monkey) (is_place ?start) (is_place ?end) (at ?monkey ?start))
        :effect (and (at ?monkey ?end) (not(at ?monkey ?start)))
    )
    
    (:action push
        :parameters (?monkey ?box ?start ?end)
        :precondition (and (is_monkey ?monkey) (is_box ?box) (is_place ?start) (is_place ?end) 
        (at ?monkey ?start) (at ?box ?start) (not(on ?monkey ?box)))
        :effect (and  (not(at ?monkey ?start)) (not(at ?box ?start))  (at ?monkey ?end) (at ?box ?end))
    )
    
    (:action climb_up
        :parameters (?monkey ?box ?place)
        :precondition (and (is_monkey ?monkey) (is_box ?box) (is_place ?place) (not(on ?monkey ?box)) (at ?monkey ?place) (at ?box ?place))
        :effect (and (on ?monkey ?box))
    )
    
    (:action climb_down
        :parameters (?monkey ?box ?place)
        :precondition (and (is_monkey ?monkey) (is_box ?box) (is_place ?place) (on ?monkey ?box) (at ?monkey ?place) (at ?box ?place))
        :effect (and (not(on ?monkey ?box)))
    )
    
    (:action grasp
        :parameters (?monkey ?place ?banana ?box)
        :precondition (and (is_monkey ?monkey) (is_banana ?banana) (is_place ?place) (is_box ?box) 
        (on ?monkey ?box) (over ?banana ?monkey) (at ?monkey ?place) (at ?banana ?place) (at ?box ?place) (not(has ?monkey ?banana)))
        :effect (and (has ?monkey ?banana) (not(over ?banana ?monkey)))
    )
    
    (:action ungrasp
        :parameters (?monkey ?place ?banana ?box)
        :precondition (and (is_monkey ?monkey) (is_banana ?banana) (is_place ?place) (is_box ?box) 
        (on ?monkey ?box) (at ?monkey ?place) (at ?banana ?place) (has ?monkey ?banana))
        :effect (and (not(has ?monkey ?banana)) (over ?banana ?monkey))
    )
)
