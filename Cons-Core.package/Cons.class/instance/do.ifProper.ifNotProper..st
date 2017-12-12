eager
do: aBlock ifProper: properBlock ifNotProper: improperBlock
	self do: aBlock separatedBy:  nil ifProper:  properBlock ifNotProper: improperBlock 