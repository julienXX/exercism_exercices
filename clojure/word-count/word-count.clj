(ns phrase
  (require [clojure.string :as str]))

(defn- split-words
  "Split a string on spaces"
  [phrase]
  (str/split phrase #"[^\w]+"))

(defn- downcase
  "Lower-case a string"
  [phrase]
  (str/lower-case phrase))

(defn word-count
  "Count words occurence in a string"
  [phrase]
  (frequencies (split-words (downcase phrase))))
