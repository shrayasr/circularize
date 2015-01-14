from PIL import Image, ImageDraw, ImageColor
import hy
import core
import sys

def darker(times, rgb):
    for x in xrange(times):
        r = rgb[0]
        g = rgb[1]
        b = rgb[2]
        rgb = (int(r*0.75), int(g*0.75), int(b*0.75))
    return rgb

if len(sys.argv) < 2:
    exit("Usage: %s <filepath>" % sys.argv[0])

filepath = sys.argv[1]

with open(filepath) as f:
    people = f.readlines()
    for person in people:
        i = Image.new("RGB", (500,500))
        d = ImageDraw.Draw(i)
        quadrant_counts = core.get_quadrant_counts(person)

        for idx, quadrant_count in enumerate(quadrant_counts):
            start = idx*90
            end = start+90
            d.pieslice([10,10,200,200], start, end, fill=darker(quadrant_count,ImageColor.getrgb("#ba1a1a")))

        i = i.resize ([250,250], Image.ANTIALIAS)
        filename = "%s.png" % person.strip()
        i.save(filename)

