versions
v0_1_0: spec
	<version: 'v0.1.0'>
	spec
      for: #'common'
      do: [ 
         spec
            baseline: 'Cons'
            with: [ spec repository: 'github://apocalypsemystic/Cons:v0.1.0' ];
            import: 'Cons' ]