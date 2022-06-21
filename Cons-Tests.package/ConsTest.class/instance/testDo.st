tests-eager
testDo
	| sum |
	sum := OrderedCollection new.
	four do: [ :x | sum add: x ].
	self assert: sum equals: #(1 2 3 4) asOrderedCollection.