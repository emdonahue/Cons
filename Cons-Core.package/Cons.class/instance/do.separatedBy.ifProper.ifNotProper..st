eager
do: aBlock separatedBy: separatedBlock ifProper: properBlock ifNotProper: improperBlock
	| tail |
	tail := self do: aBlock separatedBy: separatedBlock.
	tail isCons ifTrue: properBlock
		ifFalse: [ improperBlock value: tail ]