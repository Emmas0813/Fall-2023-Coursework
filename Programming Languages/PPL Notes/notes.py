print([[i for i in range(j)] for j in range(10)])

l = ["ohio", 8,"dallas", 0, 0, 0]
while l[-1] == 0:
    del l[-1]
print(
)
print(l)

x = 3
def f():
    # print(x) taking this out of comment will generate unboundlocalerror (cannot access local variable 'x' where
    # it is not associated with a value)
    x = 'houston'
    print(x)

f()

