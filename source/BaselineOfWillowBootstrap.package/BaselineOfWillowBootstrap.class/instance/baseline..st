baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Willow-Bootstrap' with: [ spec requires: #('Willow') ];
				package: 'Willow-Bootstrap-Tests' with: [ spec requires: #('Willow-Bootstrap' 'Willow-Tests') ].
			spec
				group: 'Deployment' with: #('Willow-Bootstrap');
				group: 'Development' with: #('Deployment' 'Willow-Bootstrap-Tests');
				group: 'default' with: #('Deployment') ]