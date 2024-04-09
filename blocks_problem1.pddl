(define (problem blocks-1)
(:domain blocks)
(:objects A B C)

(:init ; initial state of the world
	(on C A)
       (clear C) ; the default is always False
       (on-table A)
       (clear B)
       (on-table B)
       (handempty)
)
 
 
(:goal (and 
        (on C A)
        (on A B)
        (on-table B)
       )
)
)
