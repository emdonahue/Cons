eager
doWithIndex: twoBlock
	| index |
	index := 0.
	self do: [ :x | twoBlock value: x value: (index := index + 1) ]