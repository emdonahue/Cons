laziness
carcdr: aPair
	"Sets state to eager with an eager tail."
	aPair ifEmpty: [ ^ self empty ].
	car := aPair car.
	cdr := aPair cdr.
	block := nil.