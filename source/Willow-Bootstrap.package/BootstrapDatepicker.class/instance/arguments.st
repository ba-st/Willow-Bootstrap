private
arguments

	^ arguments ifNil: [ super arguments ] ifNotNil: [ :additionalArguments | super arguments , additionalArguments ]