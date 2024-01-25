(define
    (domain maze)
    (:requirements :strips :typing :fluents)
    (:types cell - object)
    (:constants goal - cell)
    (:predicates
        (is-at ?x - cell)
        (is-open ?x - cell)
        (connected ?x - cell ?y - cell)
    )
    (:functions
        (cost ?from ?to - cell)
        (total-cost)
    )
    (:action move
        :parameters (?from - cell ?to - cell)
        :precondition (and
            (is-at ?from)
            (is-open ?to)
            (connected ?from ?to)
        )
        :effect (and
            (is-at ?to)
            (not (is-at ?from))
            (increase (total-cost) (cost ?from ?to))
        )
    )
)
