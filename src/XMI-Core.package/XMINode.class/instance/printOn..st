printing
printOn: aStream
	self attributes
		ifNotNil: [ self attributes
				at: 'name'
				ifPresent: [ :name | self printWithName: name on: aStream ]
				ifAbsent: [ self printAsNodeOn: aStream ] ]