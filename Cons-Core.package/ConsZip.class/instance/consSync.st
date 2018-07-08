streaming
consSync
	^ transducer ifNotEmpty: [ :t | transducer := t. list ifNotEmpty: [ :s | list := s. self ] ]