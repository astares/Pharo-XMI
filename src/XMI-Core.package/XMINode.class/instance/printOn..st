printing
printOn: aStream

	prefix ifNotNil: [
		aStream nextPutAll: self prefix.
		prefix ifNotEmpty: [ aStream nextPut: $: ]].
	aStream nextPutAll: self name asString		
	