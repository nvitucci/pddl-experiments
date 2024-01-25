(define
    (domain maze)
    (:requirements :strips :typing :durative-actions :fluents)
    (:types cell - object)
    (:constants goal - cell)
    (:predicates
        (is-at ?x - cell)
        (is-open ?x - cell)
        (connected ?x - cell ?y - cell)
    )
    (:functions
        (distance ?from ?to - cell)
    )
    (:durative-action move
        :parameters (?from - cell ?to - cell)
        :duration (= ?duration (distance ?from ?to))
        :condition (and
            (at start (is-at ?from))
            (at start (is-open ?to))
            (over all (connected ?from ?to))
        )
        :effect (and
            (at end (is-at ?to))
            (at end (not (is-at ?from)))
        )
    )
)
