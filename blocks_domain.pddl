
(define (domain blocks)
  (:requirements :strips)
  (:predicates 
  	(clear ?b)
  	(on ?a ?b) ; a is on b
  	(on-table ?b)
  	(holding ?a)
  	(handempty)
  )

  (:action pick-up
	     :parameters (?x)
	     :precondition (and
		 			(clear ?x) 
					(handempty) 
					(on-table ?x) 
				)
	     :effect (and 
		 	(not (on-table ?x)) 
			(not (handempty)) 
			(holding ?x)
			(not (clear ?x))
		 )

  )

  (:action put-down
	     :parameters (?x)
	     :precondition (and
		 			(holding ?x)
				)
	     :effect (and 
		 	(on-table ?x) 
			(handempty) 
			(clear ?x) 
			(not (holding ?x))
		 )

  )

  (:action stack
	     :parameters (?x, ?y)
	     :precondition (and
		 			(clear ?y) 
					(holding ?x)
				)
	     :effect (and 
		 	(not (clear ?y)) 
			(handempty) 
			(not (holding ?x))
			(clear ?x)
			(on ?x ?y)
			(not (clear ?x))
		 )

  )

  (:action unstack
	     :parameters (?x, ?y)
	     :precondition (and
		 			(clear ?x) 
					(on ?x ?y)
					(handempty)
				)
	     :effect (and 
		 	(clear ?y)
			(not (on ?x ?y))
			(not (handempty)) 
			(holding ?x)
		 )

  )

)
