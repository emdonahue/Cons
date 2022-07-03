generating
generate: aValuable from: aValue upTo: atEnd
	"Generate a list seeded with aValue and continuing until atEnd is true of the current value. Do not include the final value."
	^ self generate: aValuable from: aValue to: atEnd inclusive: false.