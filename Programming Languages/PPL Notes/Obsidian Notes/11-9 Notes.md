C code:
```C
#include <stdio.h>
int i;
for(i = 0; i < 6; i++){
	printf("%d\n", i);
	i = i + 4;
}
printf("%d\n", i);
// prints 
// 0
// 5
// 10
```
Python code:
```python
for i in range(6):
    print(i)
    i = i+4
print(i)
# prints:
# 0
# 1
# 2
# 3
# 4
# 5
# 9
```
Python Classes:
```python
x = 7

class c1:
	print(x)
	x = "Oklahoma"
print(c1.x)
# prints:
# 7
# Oklahoma
class University:
    Purpose = "Education"
    def __init__(self, nm, lo, pre):
        # This is the constructor
        self.nm = nm
        self.lo = lo
        self.pre = pre
    def __call__(self, cn, dean):
	    return College(self.nm, self.lo, cn, dean)
	def is_good(self):
		return self.lo == "Norman"
ou = University("U. of Okla", "Norman", "Joseph Harroz")
print(ou.lo)
print(ou.is_good())
# prints Norman
# prints True
```
```python
```