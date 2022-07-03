generating
generate: aValuable from: aValue to: atEnd
	"Generate a list seeded with aValue and continuing until atEnd is true of the current value. Includes the final value."
	^ self generate: aValuable from: aValue to: atEnd inclusive: true.