*XMI-Examples-Model
exampleUML
	<example>
	
	|umlSpec|
	umlSpec := ZnEasy get: 'http://www.omg.org/spec/UML/20131001/UML.xmi'.
	(XMINode from: umlSpec contents) inspect