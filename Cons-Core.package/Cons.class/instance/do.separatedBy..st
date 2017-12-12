eager
do: doBlock separatedBy: separatedBlock
	| beforeFirst |
	beforeFirst := true.
	^ self
		do: [ :a | 
			beforeFirst
				ifFalse: [ separatedBlock value ].
			doBlock value: a.
			beforeFirst := false ]