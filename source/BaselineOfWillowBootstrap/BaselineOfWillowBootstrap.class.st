"
Metacello Baseline definition for Willow-Bootstrap
"
Class {
	#name : #BaselineOfWillowBootstrap,
	#superclass : #BaselineOf,
	#category : 'BaselineOfWillowBootstrap'
}

{ #category : #baselines }
BaselineOfWillowBootstrap >> baseline: spec [

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'Willow-Bootstrap' with: [ spec requires: #('Willow') ];
				package: 'Willow-Bootstrap-Tests'
					with: [ spec requires: #('Willow-Bootstrap' 'Willow-Tests' 'Seaside3-Tests') ].
			spec
				group: 'Deployment' with: #('Willow-Bootstrap');
				group: 'Development' with: #('Deployment' 'Willow-Bootstrap-Tests');
				group: 'default' with: #('Deployment') ]
]

{ #category : #baselines }
BaselineOfWillowBootstrap >> setUpDependencies: spec [

	spec
		baseline: 'Seaside3'
			with: [ spec repository: 'github://SeasideSt/Seaside:v3.2.4/repository' ];
		project: 'Seaside3-Tests'
			copyFrom: 'Seaside3'
			with: [ spec loads: #('Javascript-Tests-Core') ].
	spec
		baseline: 'Willow'
			with: [ spec
				repository: 'github://ba-st/Willow:v10/source';
				loads: #('Willow') ];
		project: 'Willow-Tests' copyFrom: 'Willow' with: [ spec loads: #('Willow-Tests') ]

]
