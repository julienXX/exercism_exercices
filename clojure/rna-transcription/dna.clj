(ns dna
  (require [clojure.string :as str]))

(defn to-rna [sequence]
  (str/replace sequence #"T" "U"))
