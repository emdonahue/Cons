generating
fromStream: aStream
	^ self generate: [ aStream next ] to: [ aStream atEnd ].