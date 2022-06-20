printing
printOn: aStream
	| first |
	first := true.
	aStream nextPut: $(.
	self doLinks: [ :p | first ifFalse: [ aStream nextPut: Character space ]. 
		p isCons ifTrue: [ p car printOn: aStream ] 
			ifFalse: [ aStream nextPutAll: '. '. p printOn: aStream ]. 
		first := false. ]
		lazy: [ 
			first ifFalse: [ aStream nextPut: Character space ].
			aStream nextPutAll: '...' ].
	aStream nextPut: $).