private - printing
printAsNodeOn: aStream
	prefix
		ifNotNil: [ aStream nextPutAll: self prefix.
			prefix ifNotEmpty: [ aStream nextPut: $: ] ].
	^ aStream nextPutAll: self tagName asString