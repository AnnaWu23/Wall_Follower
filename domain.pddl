(define (domain turtlebot3-domain)

  (:types
    room robot item
  )

  (:predicates
    (at ?rbt - robot ?rm - room)
    (in ?itm - item ?rm - room)
    (holding ?rbt - robot ?itm - item)
    (hand_empty ?rbt - robot)
  )

  (:action move
    :parameters (?rbt - robot ?from - room ?to - room)
    :precondition (at ?rbt ?from)
    :effect (and (not (at ?rbt ?from))
                 (at ?rbt ?to))
  )

  (:action pick
    :parameters(?rbt - robot ?rm - room ?itm - item)
    :precondition (and(not (holding ?rbt ?itm))
                      (at ?rbt ?rm)
                      (in ?itm ?rm)
                      (hand_empty ?rbt))
    :effect (and (not (hand_empty ?rbt))
                 (holding ?rbt ?itm)
                 (at ?rbt ?rm)
                 (not (in ?itm ?rm)))
  )

  (:action place
    :parameters(?rbt - robot ?rm - room ?itm - item)
    :precondition (and (holding ?rbt ?itm)
                       (not (hand_empty ?rbt))
                       (at ?rbt ?rm))
    :effect (and (not(holding ?rbt ?itm))
                 (hand_empty ?rbt)
                 (at ?rbt ?rm)
                 (in ?itm ?rm))
  )
)