"
A unit test for XMINode
"
Class {
	#name : #XMINodeTest,
	#superclass : #TestCase,
	#category : #'XMI-Tests-Core-Model'
}

{ #category : #tests }
XMINodeTest >> testChildrenWithTagName [

	| node childs |
	node := XMINode from: '<XMI:Node key="value">
		<XMI:Child name="First"></XMI:Child>
		<XMI:Child name="Second"></XMI:Child>
	</XMI:Node>'.
	childs := node childrenWithTagName: 'Child'.
	self 
		assert: childs notEmpty;
		assert: childs size equals: 2.
]

{ #category : #'tests - instance creation' }
XMINodeTest >> testInstantiationFromEmptyNode [

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node children isEmpty
]

{ #category : #'tests - instance creation' }
XMINodeTest >> testInstantiationWithAttribute [

	| node |
	node := XMINode from: '<XMI:Node key="value"/>'.
	self assert: node attributes size equals: 1.
	self assert: (node attributes at: 'key')  equals: 'value'
]

{ #category : #'tests - instance creation' }
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

{ #category : #'tests - printing' }
XMINodeTest >> testPrintingAsNode [

	| node |
	node := XMINode prefix: 'XMI' tagName: 'Node'.
	self assert: node printString equals: 'XMI:Node'
]

{ #category : #'tests - printing' }
XMINodeTest >> testPrintingAsNodeWithoutPrefix [

	| node |
	node := XMINode from: '<Node/>'.
	self assert: node printString equals: 'Node'
]

{ #category : #'tests - printing' }
XMINodeTest >> testPrintingWithName [

	| node |
	node := XMINode from: '<XMI:NamedObject name="Named Thing"/>'.
	self assert: node printString equals: 'XMI:NamedObject.name = "Named Thing"'
]

{ #category : #tests }
XMINodeTest >> testReferenceAttributes [

	| node |
	node := XMINode from: '<XMI:Node key="value1 value2 value3"/>'.
	self assert: node attributes size equals: 1.
	self assert: (node referencesFromAttribute: 'key') equals: #('value1' 'value2' 'value3')
]

{ #category : #tests }
XMINodeTest >> testTagName [

	| node |
	node := XMINode from: '<XMI:Node/>'.
	self assert: node tagName equals: 'Node'
]

{ #category : #tests }
XMINodeTest >> testTextStringOnly [

	| node |
	node := XMINode from: '<XMI.owner>astares.com</XMI.owner>'.
	self assert: node textString equals: 'astares.com'
]
