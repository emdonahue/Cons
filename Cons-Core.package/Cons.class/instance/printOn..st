printing
printOn: aStream
	| first |
	first := true.
	aStream nextPut: $(.
	self doLinks: [ :p | first ifFalse: [ aStream nextPut: Character space ]. 
			p car printOn: aStream.
			first := false. ]
		improper: [ :e | 
			first ifFalse: [ aStream nextPut: Character space ].
			aStream nextPutAll: '. '.
			e printOn: aStream ]
		lazy: [ 
			first ifFalse: [ aStream nextPut: Character space ].
			aStream nextPutAll: '...' ].
	aStream nextPut: $).