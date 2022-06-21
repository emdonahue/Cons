element
do: aBlock
	^ self linksDo: [ :p | p isCons ifTrue: [ aBlock value: p car ]].