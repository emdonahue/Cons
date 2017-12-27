baselines
baseline: spec
	<baseline>
	spec for: #common do: [ spec package: 'Cons-Core'; package: 'Cons-Tests' with: [ spec  requires: #('Cons-Core') ] ]