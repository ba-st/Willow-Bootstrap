*Willow-Bootstrap
isNullCommand

	^ commands isEmpty or: [ commands allSatisfy: [ :command | command isNullCommand ] ]