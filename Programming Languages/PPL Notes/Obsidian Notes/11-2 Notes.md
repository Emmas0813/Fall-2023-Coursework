- how to get range in python list ( [0 : length -1] ) starts as inclusive up to exclusive 
- how to multiply list (* list)
- insert and delete in lists
- construct lists
```python
l = [1, 3, 'oklahoma', 3]
print(l[1:3]) # prints [3,'oklahoma']

result = (l*3)[2:-3] # ['oklahoma', 3, 1, 3, 'oklahoma', 3, 1]

[i for i in range(100)] # creates a list of elements 0 - 99

[c for c in 'oklahoma' * 3] # creates a list. Each element is a character in 'oklahoma' and is added 3 times: ['o', 'k', etc... 'o', 'k', etc]

print([[i for i in range(j)] for j in range(10)])
# prints [[], [0], [0, 1], [0, 1, 2], [0, 1, 2, 3], [0, 1, 2, 3, 4], [0, 1, 2, 3, 4, 5], [0, 1, 2, 3, 4, 5, 6], [0, 1, 2, 3, 4, 5, 6, 7], [0, 1, 2, 3, 4, 5, 6, 7, 8]]

l = ["ohio", 8,"dallas", 0, 0, 0]
while l[-1] == 0:
    del l[-1]
print(l) # prints ['ohio', 8, 'dallas']

```
# Unbound local error
```python
x = 3
def f():
    # print(x) taking this out of comment will generate unboundlocalerror
    x = 'houston'
    print(x) # prints houston
f()
print(x) # prints 3
```
# Tuples
```python
x = (1, 3, "littlerock") # tuples are immutable
print (x) # (1, 3, "littlerock")
```