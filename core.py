def get_quadrant(char):
    return (ord(char) - 64) / 7

def get_quadrant_counts(name):
    name = name.strip().upper()
    quadrant_count=[0,0,0,0]
    for char in name:
        quadrant = get_quadrant(char)
        quadrant_count[quadrant] += 1
    return tuple(quadrant_count)
