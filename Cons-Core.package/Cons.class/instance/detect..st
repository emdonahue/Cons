element
detect: detectBlock
	^ self detect: detectBlock ifFound: [ :v | v ] ifNone: [ NotFound signalFor: detectBlock ]