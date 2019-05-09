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
		for: #pharo
		do: [ self
				setUpDependencies: spec;
				baselineWillowBootstrap: spec.
			spec
				group: 'CI' with: 'Tests';
				group: 'Dependent-SUnit-Extensions' with: 'Willow-SUnit';
				group: 'Tools' with: 'Willow-Tools';
				group: 'Development' with: #('Tests' 'Tools')
			]
]

{ #category : #baselines }
BaselineOfWillowBootstrap >> baselineWillowBootstrap: spec [

	spec
		package: 'Willow-Bootstrap' with: [ spec requires: #('Willow-Deployment') ];
		group: 'Deployment' with: #('Willow-Bootstrap');
		package: 'Willow-Bootstrap-Tests' with: [ spec requires: #('Willow-Bootstrap' 'Willow-Tests') ];
		group: 'Tests' with: 'Willow-Bootstrap-Tests'
]

{ #category : #accessing }
BaselineOfWillowBootstrap >> projectClass [

	^ MetacelloCypressBaselineProject
]

{ #category : #baselines }
BaselineOfWillowBootstrap >> setUpDependencies: spec [

	spec
		baseline: 'Willow' with: [ spec repository: 'github://ba-st/Willow:v12/source' ];
		project: 'Willow-Deployment' copyFrom: 'Willow' with: [ spec loads: 'Deployment' ];
		project: 'Willow-SUnit' copyFrom: 'Willow' with: [ spec loads: 'Dependent-SUnit-Extensions' ];
		project: 'Willow-Tests' copyFrom: 'Willow' with: [ spec loads: 'Tests' ];
		project: 'Willow-Tools' copyFrom: 'Willow' with: [ spec loads: 'Tools' ]
]
