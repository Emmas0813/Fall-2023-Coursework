# Yield
```python
def g():
	yield 1
	yield 2
	yield "Tulsa"
for i in g():
	print(i)
# prints: 
# 1
# 2
# Tulsa
def squares(): 
	i = 0;
	while True:
		yield i*i
		i = i + 1
for s in squares():
	print(s)
	if s > 10000:
		break
```