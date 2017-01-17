printing
printOn: aStream
	self printAsNodeOn: aStream.
   self attributes
				at: 'name'
				ifPresent: [ :name | self printName: name on: aStream ]