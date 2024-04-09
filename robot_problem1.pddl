
(define (problem moving-robot-problem)
  (:domain moving-robot)
  (:objects
       robot1 - robot
       robot2 - robot

       wp1 - waypoint; Define waypoints as objects
       wp2 - waypoint
       wp3 - waypoint
       wp4 - waypoint
       wp5 - waypoint
       wp6 - waypoint
       wp7 - waypoint
       wp8 - waypoint
       wp9 - waypoint
       wp10 - waypoint

       obj1 - object
       obj2 - object    
  )
  (:init
       (robot_at robot1 wp1) ; Initial location of the robot
       (robot_at robot2 wp6)
       (= (distance wp1 wp2) 1.0) ; Define waypoint
       (= (distance wp2 wp3) 1.0) ; Define waypoint
       (= (distance wp3 wp4) 1.0) ; Define waypoint
       (= (distance wp4 wp5) 1.0) ; Define waypoint
       (= (distance wp5 wp6) 1.0) ; Define waypoint
       (= (distance wp6 wp7) 1.0) ; Define waypoint
       (= (distance wp7 wp8) 1.0) ; Define waypoint
       (= (distance wp8 wp9) 1.0) ; Define waypoint
       (= (distance wp9 wp10) 1.0) ; Define waypoint
       (= (distance wp2 wp9) 1.0) ; Define waypoint
       (= (distance wp3 wp8) 1.0) ; Define waypoint
       (= (distance wp4 wp7) 1.0) ; Define waypoint

       (= (distance wp2 wp1) 1.0) ; Define waypoint
       (= (distance wp3 wp2) 1.0) ; Define waypoint
       (= (distance wp4 wp3) 1.0) ; Define waypoint
       (= (distance wp5 wp4) 1.0) ; Define waypoint
       (= (distance wp6 wp5) 1.0) ; Define waypoint
       (= (distance wp7 wp6) 1.0) ; Define waypoint
       (= (distance wp8 wp7) 1.0) ; Define waypoint
       (= (distance wp9 wp8) 1.0) ; Define waypoint
       (= (distance wp10 wp9) 1.0) ; Define waypoint
       (= (distance wp9 wp2) 1.0) ; Define waypoint
       (= (distance wp8 wp3) 1.0) ; Define waypoint
       (= (distance wp7 wp4) 1.0) ; Define waypoint

       (wp_free wp1)
       (wp_free wp2)
       (wp_free wp3)
       (wp_free wp4)
       (wp_free wp5)
       (wp_free wp6)
       (wp_free wp7)
       (wp_free wp8)
       (wp_free wp9)
       (wp_free wp10)    
       
       (robot_free robot1)
       (robot_free robot2)

       (object_at obj1 wp5)
       (object_at obj2 wp10)
       ; Add other initial state conditions as needed
  )
  (:goal(and
       (robot_at robot1 wp3) ; Goal state where the robot needs to be
       (robot_at robot2 wp6) ; Goal state where the robot needs to be
       (object_at obj1 wp1)
       (object_at obj2 wp5)
       ; Define other goal conditions as needed
       )
  )
)