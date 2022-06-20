element
do: aBlock
	^ self linksDo: [ :d | aBlock cull: d peek cull: d ]