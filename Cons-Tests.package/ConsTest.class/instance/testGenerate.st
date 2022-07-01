tests-infinite
testGenerate
	self assert: (Cons generate: [ :x | x + 1] from: [1] upTo: [ :x | x > 4 ]) equals: four.
	self assert: (Cons generate: [ :x | x + 1] from: [1] to: [ :x | x = 4 ]) equals: four.