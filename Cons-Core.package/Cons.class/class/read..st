meta-object-protocol
read: aSexpr
	| h |
	aSexpr isArray ifFalse: [ ^ aSexpr ].
	h := self empty.
	aSexpr reverseDo: [ :e | 
		h := e == #'.' ifTrue: [ h car ] ifFalse: [
			(e isArray ifTrue: [ self read: e ] ifFalse: e) cons: h ]].
	^ h.