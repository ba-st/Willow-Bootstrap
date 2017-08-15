baselines
setUpDependencies: spec

	| repoLocation |

	repoLocation := 'github://ba-st/Willow:master/source'.
	spec
		baseline: 'Willow'
		with: [ spec
				repository: repoLocation;
				loads: #('Willow') ].
	spec
		baseline: 'Willow-Tests'
		with: [ spec
				repository: repoLocation;
				loads: #('Willow-Tests') ]