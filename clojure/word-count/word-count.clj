(ns phrase
  (require [clojure.string :as str]))

(defn- split-words
  "Split a string on spaces"
  [phrase]
  (str/split phrase #"\s"))

(defn- downcase
  "Lower-case a string"
  [phrase]
  (str/lower-case phrase))

(defn- cleanup
  "Remove non-alphanumeric chars from a string"
  [phrase]
  (str/replace phrase #"\W+" " "))

(defn word-count
  "Count words occurence in a string"
  [phrase]
  (frequencies (split-words (downcase (cleanup phrase)))))
