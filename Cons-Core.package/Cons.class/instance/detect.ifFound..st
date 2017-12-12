eager
detect: detectBlock ifFound: foundBlock
	^ self detect: detectBlock ifFound: foundBlock ifNone: [ NotFound signalFor: detectBlock ]