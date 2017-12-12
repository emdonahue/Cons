converting
asOrderedCollection
	^ self inject: OrderedCollection new into: [ :oc :x | oc add: x; yourself ]