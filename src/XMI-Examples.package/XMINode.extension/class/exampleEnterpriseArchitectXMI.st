*XMI-Examples-Model
exampleEnterpriseArchitectXMI
	<example>
	
	|umlSpec|
	umlSpec := ZnEasy get: 'https://raw.githubusercontent.com/staruml/XMI/master/unittest-files/EA_XMI21.xmi'.
	(XMINode from: umlSpec contents) inspect