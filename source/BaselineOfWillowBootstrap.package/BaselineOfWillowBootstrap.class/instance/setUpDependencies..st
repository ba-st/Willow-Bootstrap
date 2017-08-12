baselines
setUpDependencies: spec

	spec
		baseline: 'Willow'
			with: [ spec
				repository: 'github://ba-st/Willow:master/source';
				loads: #('Willow') ];
		project: 'Willow-Tests' copyFrom: 'Willow' with: [ spec loads: #('Willow-Tests') ]