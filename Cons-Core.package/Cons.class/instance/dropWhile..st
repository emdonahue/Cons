list
dropWhile: aBlock
	^ ConsDropWhile new transducer: self; block: aBlock