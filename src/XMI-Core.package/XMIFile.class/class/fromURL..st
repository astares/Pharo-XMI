instance creation
fromURL: anURLPointingToAnXMI
	
	|response|
	response := ZnEasy get: anURLPointingToAnXMI.
	^self from:response contents