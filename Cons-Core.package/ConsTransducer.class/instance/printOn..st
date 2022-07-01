laziness
printOn: aStream
	self class printOn: aStream.
	aStream nextPut: $(.
	block ifNotNil: [ block printOn: aStream. aStream nextPutAll: ' asCons' ].
	aStream nextPut: $).