(ns bob
  (require [clojure.string :as str]))

(defn- silent?   [sentence] (= "" sentence))
(defn- shout?    [sentence] (= (str/upper-case sentence) sentence))
(defn- question? [sentence] (= \? (last sentence)))

(defn response-for [sentence]
  (cond
   (silent?   sentence) "Fine, be that way."
   (shout?    sentence) "Woah, chill out!"
   (question? sentence) "Sure."
   :else                "Whatever."))
