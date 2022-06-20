element
pairsDo: aBlock
	^ self do: [ :x | aBlock value: x car value: x cdr ]