(define
    (problem solve-maze)
    (:domain maze)
    (:objects
        a - cell
        b - cell
        c - cell
        d - cell
    )
    (:init
        (is-open b)
        (is-open c)
        (is-open d)
        (is-open goal)

        (connected a b)
        (connected b c)
        (connected c d)
        (connected b goal)
        (connected d goal)

        (is-at a)
    )
    (:goal
        (is-at goal)
    )
)
