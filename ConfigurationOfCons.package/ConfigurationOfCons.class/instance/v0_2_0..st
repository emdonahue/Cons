versions
v0_2_0: spec
	<version: 'v0.2.0'>
	spec
		for: #common
		do: [ spec
				baseline: 'Cons' with: [ spec repository: 'github://apocalypsemystic/Cons:v0.2.0' ];
				import: 'Cons' ]