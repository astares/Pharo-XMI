tests
testPrintingAsNode

	| node |
	node := XMINode prefix: 'XMI' tagName: 'Node'.
	self assert: node printString equals: 'XMI:Node'