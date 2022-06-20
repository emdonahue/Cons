initialization
setUp
	four := Cons with: 1 with: 2 with: 3 with: 4.
	fourCopy := Cons with: 1 with: 2 with: 3 with: 4.
	one := Cons with: 1.
	two := Cons with: 1 with: 2.
	three := Cons with: 1 with: 2 with: 3.
	threeFour := Cons with: 3 with: 4.
	odds := Cons with: 1 with: 3.
	evens := Cons with: 2 with: 4.
	zero := Cons empty.
	pair := Cons car: 1 cdr: 2.
	assoc := Cons with: (Cons car: 1 cdr: 2) with: (Cons car: 3 cdr: 4).
	improper := Cons car: 1 cdr: (Cons car: 2 cdr: (Cons car: 3 cdr: 4))