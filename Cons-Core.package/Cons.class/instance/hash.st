comparing
hash
	| hash |
	hash := Cons hash.
	self do: [ :x | hash := (hash + x hash) hashMultiply ] ifProper: [ ^ hash hashMultiply ] ifNotProper: [ :x | ^ (hash + x hash) hashMultiply  ].
	^ hash.