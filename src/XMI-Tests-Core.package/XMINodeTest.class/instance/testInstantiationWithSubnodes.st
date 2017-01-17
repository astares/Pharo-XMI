tests
testInstantiationWithSubnodes

	| node |
	node := XMINode from: '<XMI:Node key="value"><XMI:Subnode/></XMI:Node>'.
	self 
		assert: node children size equals: 1;
		assert: (node children first) tagName  equals: 'Subnode'