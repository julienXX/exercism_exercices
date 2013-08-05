(ns dna
  (require [clojure.string :as str]))

(defn to-rna
  "Replace all occurrences of thymine with uracil."
  [sequence]
  (str/replace sequence #"T" "U"))
