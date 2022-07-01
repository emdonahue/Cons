comparing
hash
	| hash tail |
	hash := Cons hash.
	tail := self do: [ :x | hash := (hash + x hash) hashMultiply ].
	^ tail isCons ifTrue: [ hash hashMultiply ]
		ifFalse: [ (hash + tail hash) hashMultiply  ].