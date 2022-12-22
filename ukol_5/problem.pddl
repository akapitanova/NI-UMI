(define (problem problem_shakey)
    (:domain domain_shakey)

    (:objects 
            shakey 
    
            room1 room2 room3 room4 corridor
            
            box1 box2 box3 box4
            
            switch1 switch2 switch3 switch4
    )
    
    (:init 
        ; shakey
        (is_robot shakey)
        
        (at shakey room3)
        
        ; rooms
        (is_room room1)
        (is_room room2)
        (is_room room3)
        (is_room room4)
        (is_room corridor)
        
        (next_to room1 corridor) 
        (next_to corridor room1)
        
        (next_to room2 corridor) 
        (next_to corridor room2)
        
        (next_to room3 corridor) 
        (next_to corridor room3)
        
        (next_to room4 corridor) 
        (next_to corridor room4)
        
        ; boxes
        (is_box box1)
        (is_box box2)
        (is_box box3)
        (is_box box4)
        
        (at box1 room1)
        (at box2 room1)
        (at box3 room1)
        (at box4 room1)
        (at switch1 room1)
        
        (at switch2 room2)
        
        (at switch3 room3)
        
        (at switch4 room4)
        
        
        ; lights
        (is_light switch1)
        
        (is_light switch2)
        (switched_on switch2)
        
        (is_light switch3)
        (switched_on switch3)
        
        (is_light switch4)
        
        )
    
    
    (:goal (switched_on switch4))

)
