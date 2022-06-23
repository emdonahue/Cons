tests-lazy
testAppend
	self assert: ((four select: [ :x | x < 3 ]) , threeFour) equals: fourCopy.
	self assert: (two , (four select: [ :x | 2 < x ])) equals: fourCopy.
	self assert: (four , zero) equals: fourCopy.
	self assert: (zero , four) equals: fourCopy.
	self assert: (four , (fourCopy select: [ :x | false ])) equals: fourCopy.
	self assert: ((fourCopy select: [ :x | false ]) , four) equals: fourCopy