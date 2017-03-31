private
arguments

	^ functionAsArgument ifNil: [ super arguments ] ifNotNil: [ :argument | Array with: argument ]