laziness
isLazy
	^ self == cdr & car isBlock | cdr isBlock.