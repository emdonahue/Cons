accessing
consSync
	transducer
		linksDo: [ :d | 
			0 < number
				ifFalse: [ ^ transducer := d ].
			number := number - 1 ].
	^ transducer := self class empty	"If we hit the right number of drops, we broke out of the loop, so at this point we must be out of elements."