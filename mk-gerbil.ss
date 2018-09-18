;;; -*- Gerbil -*-

(import :std/sort
        :std/format)

(def (list-sort f l) (sort l f))
(def (remp p l)
  (if (null? l)
    []
    (if (p (car l))
      (remp p (cdr l))
      (cons (car l) (remp p (cdr l))))))
(def (call-with-string-output-port f)
  (def p (open-output-string))
  (f p)
  (get-output-string p))
(def sub1 1-)
(def exists ormap)
(def for-all andmap)
(def memp memf)
(def (var*? v) (var? (car v)))

(load "mk.scm")