tests
testPrintingAsNodeWithoutPrefix

	| node |
	node := XMINode from: '<Node/>'. 
	self assert: node printString equals: 'Node'