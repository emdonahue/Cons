laziness
carcdr: aPair
	aPair ifEmpty: [ ^ self empty ].
	car := aPair car.
	cdr := aPair cdr.