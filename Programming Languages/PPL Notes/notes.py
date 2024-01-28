#print([[i for i in range(j)] for j in range(10)])

l = ["ohio", 8,"dallas", 0, 0, 0]
while l[-1] == 0:
    del l[-1]
#print()
#print(l)

x = 3
def f():
    # print(x) taking this out of comment will generate unboundlocalerror (cannot access local variable 'x' where
    # it is not associated with a value)
    x = 'houston'
   #print (x)
# cannot add anything to a 'tuple'

#print((lambda y: y*y+3)(10))

l = [i*i+1 for i in range (100) if i%2!=0]
#print(l)


#---------11/7 Notes------------------
n1 = [[2,3],[1,4],[4,5]]
#print(sorted(n1, key = lambda a:a[0]))
#output: [[1,4],[2,3],[4,5]]

#print(n1)
#output: [[2,3],[1,4],[4,5]]

#print(sorted(n1, key=lambda a:a[0]**2 + a[1]**2)) #square function
#print(sorted(n1, key=lambda a:a[1]-a[0]))

for i in range(6):
    #print(i)
    i = i+4
#print(i)


x = 7

class c1:
	#print(x)
	x = "Oklahoma"
     
#print(c1.x)

class University:
    Purpose = "Education"

    def __init__(self, nm, lo, pre):
        # This is the constructor
        self.nm = nm
        self.lo = lo
        self.pre = pre
u = University("U. of Okla", "Norman", "Joseph Harroz")
# print(u.lo)

def sofsq():
     n = 1
     sum = 0
     while True:
          sum += n * n
          yield sum
          n += 1

def sofcu(n):
    current_cube = 1
    while n > 0:
        current_cube += n * n * n
        yield current_cube
        n -= 1

print(sofcu(3))
