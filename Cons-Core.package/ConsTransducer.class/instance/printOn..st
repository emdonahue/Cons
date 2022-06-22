laziness
printOn: aStream
	self class printOn: aStream.
	aStream nextPut: $(.
	block printOn: aStream.
	aStream nextPut: $).