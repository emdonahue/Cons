subclassresponsibility
sync
"Must consume enough laziness (and imperatively update state) so that the next call to #peek will return my first element. Returns either self, if this lazy computation has more computing to do on the rest of the list, or just the list itself if this computation is complete. At the very least, all transducers must return ConsEmpty when the entire list has been consumed."
	(transducer := transducer sync) consAtEnd
		ifTrue: [ ^ self class empty ]