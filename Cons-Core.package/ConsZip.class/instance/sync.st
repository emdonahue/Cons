streaming
sync
	^ transducer ifNotEmpty: [ :t | transducer := t. list ifNotEmpty: [ :s | list := s. self ] ]