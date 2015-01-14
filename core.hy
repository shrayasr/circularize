(defn get_quadrant [char]
  (int (/ (- (ord char) 64) 7)))

(defn get_quadrant_counts [name]
  (setv name (-> name (.strip) (.upper)))
  (setv quadrant_count [0 0 0 0])
  (for [char name]
       (let [[quadrant (get_quadrant char)]
             [curr_quadrant_count (get quadrant_count quadrant)]
             [new_quadrant_count (+ curr_quadrant_count 1)]]
         (setv (. quadrant_count [quadrant]) new_quadrant_count)))
  (tuple quadrant_count))
