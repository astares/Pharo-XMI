"
An XMI Node
"
Class {
	#name : #XMINode,
	#superclass : #Object,
	#instVars : [
		'prefix',
		'children',
		'attributes',
		'tagName',
		'textString'
	],
	#category : #'XMI-Core-Model'
}

{ #category : #'instance creation' }
XMINode class >> from: aStringOrStream [

	^self fromXMLElement: (XMLDOMParser parse: aStringOrStream usingNamespaces: false) root
]

{ #category : #'instance creation' }
XMINode class >> fromXMLElement: anXMLElement [

	| instance |
	instance := self new.
	instance 
		prefix: anXMLElement name xmlPrefixBeforeLocalName;
		tagName: anXMLElement localName;
		attributes: anXMLElement attributes;
		children: (anXMLElement elements collect: [:each | (self fromXMLElement: each)]);
		textString: (anXMLElement hasStringNodes ifTrue: [ anXMLElement strings first ] ifFalse: [ '' ]).
	^instance

]

{ #category : #'instance creation' }
XMINode class >> prefix: aPrefix tagName: aTagName [ 
	^(self new)
		prefix: aPrefix;
		tagName: aTagName;
		yourself
]

{ #category : #accessing }
XMINode >> attributeAt: aKey [

	^ self attributes at: aKey
]

{ #category : #accessing }
XMINode >> attributeAt: aKey ifAbsent: aBlock [

	^ self attributes at: aKey ifAbsent: aBlock
]

{ #category : #accessing }
XMINode >> attributes [

	^ attributes
]

{ #category : #accessing }
XMINode >> attributes: anObject [

	attributes := anObject
]

{ #category : #accessing }
XMINode >> children [

	^ children
]

{ #category : #accessing }
XMINode >> children: anObject [

	children := anObject
]

{ #category : #'accessing - children' }
XMINode >> childrenWithTagName: aString [

	^ self children select: [ :each | each tagName = aString ]
]

{ #category : #testing }
XMINode >> hasAttribute: attributeName [

	^ self attributes includesKey: attributeName
]

{ #category : #testing }
XMINode >> hasAttribute: aKey withValue: aValue [

	| v |
	v := self attributes at: aKey ifAbsent: [ ^ false ].
	^ v = aValue
]

{ #category : #initialization }
XMINode >> initialize [

	super initialize.
	self prefix: ''.
	self tagName: ''.
	self attributes: OrderPreservingStringDictionary new.
	self children: OrderedCollection new
]

{ #category : #accessing }
XMINode >> name [

	^ self attributes at: 'name' ifAbsent: [ '' ]
]

{ #category : #accessing }
XMINode >> prefix [

	^ prefix
]

{ #category : #accessing }
XMINode >> prefix: anObject [

	prefix := anObject
]

{ #category : #'private - printing' }
XMINode >> printAsNodeOn: aStream [

	prefix ifNotNil: [
		aStream nextPutAll: self prefix.
		prefix ifNotEmpty: [ aStream nextPut: $: ] ].
	^ aStream nextPutAll: self tagName asString
]

{ #category : #'private - printing' }
XMINode >> printName: name on: aStream [

	name isEmpty ifTrue: [ ^ self ].
	aStream
		nextPutAll: '.name = "';
		nextPutAll: name asString;
		nextPut: $"
]

{ #category : #printing }
XMINode >> printOn: aStream [

	self printAsNodeOn: aStream.
	self attributes
		at: 'name'
		ifPresent: [ :name | self printName: name on: aStream ]
]

{ #category : #accessing }
XMINode >> referencesFromAttribute: aKey [

	| refIds |
	refIds := self attributes at: aKey ifAbsent: ''.
	^ refIds substrings: ' '
]

{ #category : #accessing }
XMINode >> tagName [

	^ tagName
]

{ #category : #accessing }
XMINode >> tagName: anObject [

	tagName := anObject
]

{ #category : #accessing }
XMINode >> textString [

	^ textString
]

{ #category : #accessing }
XMINode >> textString: anObject [

	textString := anObject
]
