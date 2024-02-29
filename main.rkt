#lang racket


(require redex)

;; Υ → Ethereum state transition function.
;; σ → Valid state transition.
;; T → Transition. 
;; B → Block.
;; Π → Block-level state-transition function.


#|
(1) σ_(t+1) ≡  Υ(σ_t, T )
(2) σ_(t+1) ≡  Π(σ_t, B)
(3)       B ≡  (..., (T_0, T_1, ...), ...)
(4)       Π(σ, B) ≡  Υ(Υ(σ, T_0 ), T_1 )...
|#

(define-language ETH
  [σ ::= Y
         Π]
  
  [T ::= x] ;; idk how to write it yet
  [Y ::= x] ;;           ||
  
  [B ::= ((T_0 T_1 ...) ...)]
  [Π ::= (Y_0 Y_1 ...)]
  [x ::= variable-not-otherwise-mentioned])

#;(define-extended-language VState ETH
  [σ ::= Y
     Π])

#;(define-extended-language B ETH
  [B ::= ((T_0 T_1 ...) ...) ])

#;(define-extended-language Π ETH
  [Π ::= (Y_0 Y_1 ...)])
