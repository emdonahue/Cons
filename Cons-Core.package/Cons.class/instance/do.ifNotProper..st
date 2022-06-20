element
do: aBlock ifNotProper: improperBlock
	self do: aBlock separatedBy:  nil ifProper:  nil ifNotProper: improperBlock 