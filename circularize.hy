(import [PIL [Image ImageDraw ImageColor]])
(import core)
(import sys)

(defn darker [times rgb]
  (setv mul-factor (pow 0.75 times))
  (setv r (get rgb 0))
  (setv g (get rgb 1))
  (setv b (get rgb 2))
  (, (int (* r mul-factor)) (int (* g mul-factor)) (int (* b mul-factor))))


(if (< (len sys.argv) 2)
  (exit (+ "Usage: " (str (get sys.argv 0)) " <filepath>")))

(setv filepath (get sys.argv 1))

(with [[f (open filepath)]]
      (setv people (f.readlines))
      (for [person people]
           (let [[i (Image.new "RGB" (, 500 500))]
                 [d (ImageDraw.Draw i)]
                 [quadrant_counts (core.get_quadrant_counts person)]]

             (for [(, idx quadrant_count) (enumerate quadrant_counts)]
                  (let [[start (* idx 90)]
                        [end (+ start 90)]]
                    (setv args [[10 10 200 200] start end])
                    (setv kwargs { "fill" (darker quadrant_count
                                                  (ImageColor.getrgb "#ba1a1a"))})
                    (apply d.pieslice args kwargs)))

             (setv i (i.resize [250 250] Image.ANTIALIAS))
             (setv filename (+ (.strip person) ".png"))
             (i.save filename))))
