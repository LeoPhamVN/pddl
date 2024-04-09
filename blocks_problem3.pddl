(define (problem blocks-1)
(:domain blocks)
(:objects A B C D)

(:init ; initial state of the world
	(on-table C)
       (not (clear C))
       (on  A C)
       (on B A)
       (clear B)
       (not (handempty))
       (holding D)
)
 
 
(:goal (and 
        (on A C)
        (on C D)
        (on D B)
        (on-table B)
       )
)
)
