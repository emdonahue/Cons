tests-testing
testIfEmptyIfNotEmpty
	self assert: (zero ifEmpty: true ifNotEmpty: [false]).
	self assert: (one ifEmpty: false ifNotEmpty: [true]).
	self assert: (four ifEmpty: false ifNotEmpty: [true]).
	self assert: (pair ifEmpty: false ifNotEmpty: [true])