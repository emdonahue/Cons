lazy
reject: aBlock
	^ self select: [ :x | (aBlock value: x) not ]