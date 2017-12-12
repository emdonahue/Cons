eager
atKey: aKey ifPresent: presentBlock
	^ self atKey: aKey ifPresent: presentBlock ifAbsent: [ KeyNotFound signalFor: aKey ]