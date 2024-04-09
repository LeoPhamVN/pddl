(define (problem blocks-1)
(:domain blocks)
(:objects A B C)

(:init ; initial state of the world
	(on-table C)
       (not (clear C))
       (on  A C)
       (on B A)
       (clear B)
       (handempty)
)
 
 
(:goal (and 
        (on C A)
        (on A B)
        (on-table B)
       )
)
)
