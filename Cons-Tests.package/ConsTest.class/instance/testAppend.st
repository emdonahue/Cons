tests-lazy
testAppend
	self assert: ((four select: [ :x | x < 3 ]) , threeFour) equals: fourCopy.
	self reset.
	self assert: (two , (four select: [ :x | 2 < x ])) equals: fourCopy.
	self reset.
	self assert: (four , zero) equals: fourCopy.
	self reset.
	self assert: (zero , four) equals: fourCopy.
	self reset.
	self assert: (four , (fourCopy select: [ :x | false ])) equals: fourCopy.
	self reset.
	self assert: ((fourCopy select: [ :x | false ]) , four) equals: fourCopy