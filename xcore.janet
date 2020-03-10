
(defn deep-merge
  [& dicts]
  (defn deep-merge-pair [a b]
    (def t (merge a b))
    (eachk k t
      (def ak (a k))
      (def tk (t k))
      (when (and (dictionary? ak) (dictionary? tk))
        (put t k (deep-merge ak tk))))
    t)
  (reduce deep-merge-pair @{} dicts))


(defmacro error-match
  [expr & cases]
  (with-syms [err f v]
   ~(try
      ,(tuple 'match ~[:ok ,expr] ;cases)
      ([,err ,f]
        ,(tuple
          'match ~[:error ,err]
          ;(array/concat @[] cases [~[:error ,v] ~(propagate ,err ,f)]))))))

(defmacro chr
  [c]
  (unless (and (string? c) (= (length c) 1))
    (error "chr only accepts strings of length 1"))
  (c 0))