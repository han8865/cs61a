(define-macro (when condition exprs)
  `(if ,condition
    ,(cons `begin exprs)
    `okay
  )
)

(define-macro (switch expr cases)
  (cons 'cond
        (map (lambda (case)
                        (cons (eq? (car case) (eval expr)) (cdr case)))
             cases)))
