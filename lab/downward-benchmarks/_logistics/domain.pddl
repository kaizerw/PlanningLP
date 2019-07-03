(define (domain logistics)
  (:requirements :strips) 
  (:predicates 	
        (package ?obj)
        (truck ?truck)
        (location ?loc)
        (at ?obj ?loc)
        (in ?obj ?obj))
 
(:action load-truck
  :parameters
   (?obj
    ?truck
    ?loc)
  :precondition
   (and (package ?obj) (truck ?truck) (location ?loc)
   (at ?truck ?loc) (at ?obj ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?truck)))

(:action unload-truck
  :parameters
   (?obj
    ?truck
    ?loc)
  :precondition
   (and (package ?obj) (truck ?truck) (location ?loc)
        (at ?truck ?loc) (in ?obj ?truck))
  :effect
   (and (not (in ?obj ?truck)) (at ?obj ?loc)))

(:action drive-truck
  :parameters
   (?truck
    ?loc-from
    ?loc-to)
  :precondition
   (and (truck ?truck) (location ?loc-from) (location ?loc-to)
   (at ?truck ?loc-from))
  :effect
   (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))
)
