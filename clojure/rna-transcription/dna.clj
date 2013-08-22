(ns dna
  (require [clojure.string :as str]))

(def thymine \T)
(def uracil  \U)

(defn to-rna
  "Replace all occurrences of thymine with uracil."
  [sequence]
  (str/replace sequence thymine uracil))
