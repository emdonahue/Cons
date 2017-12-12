eager
at: anIndex
	^ self at: anIndex ifPresent: [ :v | v ] ifAbsent: [ SubscriptOutOfBounds signalFor: anIndex ]