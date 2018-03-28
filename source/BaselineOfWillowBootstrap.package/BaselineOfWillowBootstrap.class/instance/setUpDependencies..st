baselines
setUpDependencies: spec

	spec
		baseline: 'Seaside3'
			with: [ spec repository: 'github://SeasideSt/Seaside:v3.2.4/repository' ];
		project: 'Seaside3-Tests'
			copyFrom: 'Seaside3'
			with: [ spec loads: #('Javascript-Tests-Core') ].
	spec
		baseline: 'Willow'
			with: [ spec
				repository: 'github://ba-st/Willow:v7.0.0/source';
				loads: #('Willow') ];
		project: 'Willow-Tests' copyFrom: 'Willow' with: [ spec loads: #('Willow-Tests') ]
