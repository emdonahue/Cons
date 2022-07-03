list
merge: aCons
	"Merge step of merge sort. Merges two sorted lists."
	^ self merge: aCons block: [ :a :b | a < b ].