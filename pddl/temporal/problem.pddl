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

        (= (distance a b) 1)
        (= (distance b c) 1)
        (= (distance c d) 1)
        (= (distance b goal) 10)
        (= (distance d goal) 1)

        (is-at a)
    )
    (:goal
        (is-at goal)
    )
    (:metric minimize (total-time))
)
