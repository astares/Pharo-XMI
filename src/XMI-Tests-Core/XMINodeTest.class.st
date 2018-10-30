"
A unit test for XMINode
"
Class {
	#name : #XMINodeTest,
	#superclass : #TestCase,
	#category : 'XMI-Tests-Core-Model'
}

{ #category : #tests }
XMINodeTest >> testInstantiationFromEmptyNode [

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node children isEmpty
]

{ #category : #tests }
XMINodeTest >> testInstantiationWithAttribute [

	| node |
	node := XMINode from: '<XMI:Node key="value"/>'.
	self assert: node attributes size equals: 1.
	self assert: (node attributes at: 'key')  equals: 'value'
]

{ #category : #tests }
XMINodeTest >> testInstantiationWithSubnodes [

	| node |
	node := XMINode from: '<XMI:Node key="value"><XMI:Subnode/></XMI:Node>'.
	self 
		assert: node children size equals: 1;
		assert: (node children first) tagName  equals: 'Subnode'
]

{ #category : #tests }
XMINodeTest >> testPrefix [

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node prefix equals: 'XMI'
]

{ #category : #tests }
XMINodeTest >> testPrintingAsNode [

	| node |
	node := XMINode prefix: 'XMI' tagName: 'Node'.
	self assert: node printString equals: 'XMI:Node'
]

{ #category : #tests }
XMINodeTest >> testPrintingAsNodeWithoutPrefix [

	| node |
	node := XMINode from: '<Node/>'. 
	self assert: node printString equals: 'Node'
]

{ #category : #tests }
XMINodeTest >> testPrintingWithName [

	| node |
	node := XMINode from: '<XMI:NamedObject name="Named Thing"/>'.
	self assert: node printString equals: 'XMI:NamedObject.name = "Named Thing"'
]

{ #category : #tests }
XMINodeTest >> testTagName [

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node tagName equals: 'Node'
]
