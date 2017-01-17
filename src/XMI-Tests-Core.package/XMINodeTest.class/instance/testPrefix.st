tests
testPrefix

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node prefix equals: 'XMI'