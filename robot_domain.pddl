(define (domain moving-robot)
    (:requirements :strips :typing :fluents :disjunctive-preconditions :durative-actions)
    (:types
        robot
        waypoint
        object
    )
    (:predicates
        (robot_at ?r - robot ?w - waypoint)
        (object_at ?o - object ?w - waypoint)
        (holding ?r - robot ?o - object)
        (robot_free ?r - robot)
        (wp_free ?w - waypoint)
        ; (waypoint ?w - waypoint)
    )

    (:functions
        (distance ?wp1 ?wp2 - waypoint)
    )

    (:durative-action move
        :parameters (?r - robot ?from - waypoint ?to - waypoint)
        :duration (= ?duration (distance ?from ?to))
        :condition (at start (and
                    (robot_at ?r ?from)
                    (wp_free ?to)
        ))
        :effect (and
            (at start (and 
                (not (robot_at ?r ?from))
                (not (wp_free ?to))
            ))
            (at end (and 
                (robot_at ?r ?to)
                (wp_free ?from)
            ))
        )
    )

    (:durative-action pick-up
        :parameters (?r - robot ?w - waypoint ?o - object)
        :duration (= ?duration 1.0)
        :precondition (and 
                    (robot_at ?r ?w) 
                    (robot_free ?r)
                    (object_at ?o ?w)
                )
        :effect (and
			(not (robot_free ?r)) 
			(holding ?r ?o)
			(not (object_at ?o ?w))
        )
    )

    (:durative-action place
        :parameters (?r - robot ?w - waypoint ?o - object)
        :duration (= ?duration 1.0)
        :precondition (and 
                    (robot_at ?r ?w)
                    (holding ?r ?o)
                )
        :effect (and
			(robot_free ?r) 
			(not (holding ?r ?o))
			(object_at ?o ?w)
        )
    )
    
)