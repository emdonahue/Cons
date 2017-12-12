tests-eager
testIncludes
	self deny: (zero includes: 1).
	self assert: (one includes: 1).
	self deny: (one includes: 2).
	self assert: (four includes: 1).
	self reset.
	self assert: (four includes: 2).
	self reset.
	self assert: (four includes: 3).
	self reset.
	self assert: (four includes: 4).
	self reset.
	self assert: ((four select: [ :x | 1 < x ]) includes: 4).
	self reset.
	self deny: ((four select: [ :x | 1 < x ]) includes: 1)