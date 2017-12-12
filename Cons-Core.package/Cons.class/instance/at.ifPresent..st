eager
at: anIndex ifPresent: presentBlock
	^ self at: anIndex ifPresent: presentBlock ifAbsent: [ SubscriptOutOfBounds signalFor: anIndex ]