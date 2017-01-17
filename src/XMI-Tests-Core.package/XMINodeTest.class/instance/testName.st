tests
testName

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node name equals: 'Node'