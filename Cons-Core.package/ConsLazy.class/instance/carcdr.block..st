laziness
carcdr: aPair block: aBlock
	aPair ifEmpty: [ ^ self empty ].
	self car: aPair car cdr: aPair cdr block: aBlock.