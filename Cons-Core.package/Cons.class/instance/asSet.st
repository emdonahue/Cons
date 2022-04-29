converting
asSet
	^ self inject: Set new into: [ :oc :x | oc add: x; yourself ]