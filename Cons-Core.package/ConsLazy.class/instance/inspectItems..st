inspecting
inspectItems: aBuilder
	<inspectorPresentationOrder: 1 title: 'Items'>
	| items list button |
	items := list := button := Object new.
	items := OrderedCollection new.
	self do: [ :x | items add: x ]
		lazy: [ items add: (button := aBuilder newButton
						           label: 'Force';
						           action: [ list items: self force. ])]
		improper: [ :x | items add: x ].
		
	^ list := aBuilder newList
		items: items;
		display: [ :x | 
			x == button
				ifTrue: [ x build ]
				ifFalse: [ x ] ].
	"beMultipleSelection;
		items: items;
		whenSelectionChangedDo: [ :sel | sel inspect ];
		yourself."