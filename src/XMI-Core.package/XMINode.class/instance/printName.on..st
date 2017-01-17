private - printing
printName: name on: aStream	
		 
		name isEmpty ifTrue: [ ^self ].
		aStream 
			nextPutAll: '.name = "';					
			nextPutAll: name asString;
			nextPut: $"

