```C
# difference is 256 so they are equivalent
char a = 250;
char b = -6; 

if(a == b) printf("%s\n", "Really?");
# outputs "Really?" 
# although, if their difference is not 256, they are not equivalent.
```
char = (real number) / 256
int = (real number) / 232
long = (real number) / 264

overflow occurs at 2^31

no "out of bounds" warning for array. Just instantiates it to random number. 
UNDEFINED.

Note: C is ROW MAJOR. So matrix[3] refers to 3rd row.

```C
char upper[26] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

int main(){
	printf("%c\n", upper['k'-'a']);
	# prints K
	printf("%c\n", *(upper + 'k'-'a'));
	# prints K
	printf("%c\n", *(upper+100));
	# prints something random. UNDEFINED
}
```

First high level programming language was Fortran.
Middle level programming language is C

```C
double matrix[10][10] = {
	0.0, 1.0, 2.0, 3.0, 4.0, ...
	10.0, 11.0, 12.0, ..........
	20.0, 21.0, ................
	............................
	..................88.0, 99.0
};
int main(){
	printf("%2.1f", matrix[3][4]); // prints 34.0
	double* dp = matrix[3]
	printf("%2.1f %2.1f\n", *dp, dp[4]); // prints 30.0 34.0
	
	printf("%2.1f %2.1f %2.1f\n", *(dp + 4), *(dp + 14), matrix[3][14]); 
	// prints 34.0 44.0 44.0
	
	printf("%f\n", **(matrix + 2)); // prints 20.0
	printf("%f\n", *( *(matrix + 2) + 3)); // prints 23.0
	
}
```