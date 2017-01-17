tests
testPrintingByName

	| node |
	node := XMINode from: '<XMI:NamedObject name="Named Thing"/>'.
	self assert: node printString equals: 'Named Thing'