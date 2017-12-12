eager
detect: detectBlock ifNone: noneBlock
	^ self detect: detectBlock ifFound: [ :v | v ] ifNone: noneBlock