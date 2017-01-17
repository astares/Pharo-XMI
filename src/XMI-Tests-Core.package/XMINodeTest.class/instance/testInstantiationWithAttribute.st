tests
testInstantiationWithAttribute

	| node |
	node := XMINode from: '<XMI:Node key="value"/>'.
	self assert: node attributes size equals: 1.
	self assert: (node attributes at: 'key')  equals: 'value'