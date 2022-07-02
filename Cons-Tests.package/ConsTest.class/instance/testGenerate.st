tests-infinite
testGenerate
	self assert: (Cons generate: [ :x | x + 1] from: [1] upTo: [ :x | x > 4 ]) equals: four.
	self assert: (Cons generate: [ :x | x + 1] from: [1] to: [ :x | x = 4 ]) equals: four.
	self assert: ((Cons generate: [ :x | x + 1] from: [1] to: [ :x | x = 4 ]) select: [ true ]) sum equals: 10.
	self assert: ((Cons generate: [ :x | (x car + 1) cons ] from: [1 cons] to: [ :x | x car = 3 ]) inject: Cons empty into: [ :es :e | es append: e  ]) equals: three.