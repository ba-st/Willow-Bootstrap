private
arguments

	^ functionName ifNil: [ super arguments ] ifNotNil: [ :argument | Array with: argument ]