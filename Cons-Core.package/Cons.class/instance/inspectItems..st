inspecting
inspectItems: aBuilder
	<inspectorPresentationOrder: 1 title: 'Lazy'>
	aBuilder inspect.
	^ aBuilder newList send: [ :x | 10 ];
		beMultipleSelection;
		items: self;
		whenSelectionChangedDo: [ :sel | sel inspect ];
		yourself.