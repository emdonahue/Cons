laziness
isGenerator
	"Tests whether we are processing a list or are generating a list from successive elements via #generate:"
	^ car isCons not.