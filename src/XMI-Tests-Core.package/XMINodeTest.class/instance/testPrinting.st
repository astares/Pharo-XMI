tests
testPrinting

	| node |
	node := XMINode new.
	node prefix: 'XMI'.
	node name: 'Node'.
	self assert: node printString equals: 'XMI:Node'