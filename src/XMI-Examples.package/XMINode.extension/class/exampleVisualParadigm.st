*XMI-Examples-Model
exampleVisualParadigm
	<example>
	
	|umlSpec|
	umlSpec := ZnEasy get: 'https://raw.githubusercontent.com/staruml/XMI/master/unittest-files/VP_XMI21.xmi'.
	(XMINode from: umlSpec contents) inspect