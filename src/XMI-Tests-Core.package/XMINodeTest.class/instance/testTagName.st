tests
testTagName

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node tagName equals: 'Node'