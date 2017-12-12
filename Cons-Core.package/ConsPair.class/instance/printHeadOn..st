printing
printHeadOn: aStream
	car printOn: aStream.
	cdr isCons ifTrue: [ 
	cdr printTailOn: aStream ] ifFalse: [ aStream nextPutAll: ' . '. cdr printOn: aStream. aStream nextPut: $) ]