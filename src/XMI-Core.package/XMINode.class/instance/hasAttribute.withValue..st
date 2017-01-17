testing
hasAttribute: aKey withValue: aValue 
	| v |
	v := self attributes at: aKey ifAbsent: [ ^false ].
	^v = aValue 