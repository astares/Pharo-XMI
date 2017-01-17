tests
testPrintingWithName

	| node |
	node := XMINode from: '<XMI:NamedObject name="Named Thing"/>'.
	self assert: node printString equals: 'XMI:NamedObject.name = "Named Thing"'