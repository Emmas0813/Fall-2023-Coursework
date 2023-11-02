- how to get range in python list ( [1:length] ) and know it starts as inclusive up to exclusive 
- how to multiply list (* list)
- insert and delete in lists
- construct lists
- 
```python
l = [1, 3, 'oklahoma', 3]
print(l[1:3])
# prints [3,'oklahoma']

(l*3)[2:-3]
# ['oklahoma', 3, 1, 3, 'oklahoma', 3, 1]

[i for i in range(100)]
# creates a list of elements 0 - 99

[c for c in 'oklahoma' * 3]
# creates a list. Each element is a character in 'oklahoma' and is added 3 times 
# ['o', 'k', etc... 'o', 'k', etc]


```
Quiz : 5 questions
What will python program print?
list comprehension