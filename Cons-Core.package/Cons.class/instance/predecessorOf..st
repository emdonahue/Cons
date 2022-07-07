list
predecessorOf: aCons
	| predecessor |
	"Returns the list of which aCons is the immediate tail. Returns aCons if they are equal. Behavior undefuned if aCons not a sublist of self."
	predecessor := self.
	self linksDo: [ :x | 
		x = aCons ifTrue: [ ^ predecessor ].
		predecessor := x.
	].
	^ predecessor.