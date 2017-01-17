tests
testInstantiationFromEmptyNode

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node children isEmpty