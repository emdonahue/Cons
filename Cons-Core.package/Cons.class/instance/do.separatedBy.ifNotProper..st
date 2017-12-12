eager
do: aBlock separatedBy: separatedBlock ifNotProper: improperBlock
	self do: aBlock separatedBy: separatedBlock ifProper: nil ifNotProper: improperBlock 