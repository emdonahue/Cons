eager
atKey: aKey
	^ self atKey: aKey ifPresent: [ :v | v ] ifAbsent: [ KeyNotFound signalFor: aKey ]