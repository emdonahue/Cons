tests-infinite
testRepeat
	| fives |
	fives := Cons repeat: 5.
	self assert: fives car equals: 5.
	self assert: fives car equals: 5.
	self assert: fives cdr car equals: 5.
	self assert: fives cdr cdr car equals: 5.