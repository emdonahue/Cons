laziness
printOn: aStream
	aStream nextPutAll: 'ConsStream('.
	car printOn: aStream.
	aStream nextPut: Character space.
	car printOn: aStream.
	aStream nextPut: Character space.
	car printOn: aStream.
	aStream nextPut: $).