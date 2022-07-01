printing
printOn: aStream
	| first tail |
	first := true.
	aStream nextPut: $(.
	tail := self doLazy: 
		[ :p | first ifFalse: [ aStream nextPut: Character space ]. 
			p printOn: aStream.
			first := false. ].
	tail isCons
		ifTrue: [ 
			tail isLazy ifTrue: [
			  first ifFalse: [ aStream nextPut: Character space ].
				aStream nextPutAll: '...' ]]
		ifFalse: [ first ifFalse: [ aStream nextPut: Character space ].
			aStream nextPutAll: '. '.
			tail printOn: aStream ].
	aStream nextPut: $).