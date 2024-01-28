def degreenonepoly():
    poly = [0,0]
    yield poly
    sign = -1
    n = 1
    while True:
        for i in range(n):
            poly[1] += sign
            yield poly
        for i in range(n):
            poly[0] += sign
            yield poly
        n += 1
        sign *= -1

gen = degreenonepoly()
for _ in range(10):
    print(next(gen))
