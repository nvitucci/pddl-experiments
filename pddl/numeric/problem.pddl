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

        (= (cost a b) 1)
        (= (cost b c) 1)
        (= (cost c d) 1)
        (= (cost b goal) 10)
        (= (cost d goal) 1)
        (= (total-cost) 0)

    )
    (:goal
        (is-at goal)
    )
    (:metric minimize (total-cost))
)
