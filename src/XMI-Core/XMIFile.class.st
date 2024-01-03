"
An XMI file
"
Class {
	#name : #XMIFile,
	#superclass : #Object,
	#instVars : [
		'rootNode'
	],
	#category : #'XMI-Core-Model'
}

{ #category : #'instance creation' }
XMIFile class >> from: aStringOrStream [ 
	
	^self on: (XMINode from: aStringOrStream)
]

{ #category : #'instance creation' }
XMIFile class >> fromURL: anURLPointingToAnXMI [
	
	|response|
	response := ZnEasy get: anURLPointingToAnXMI.
	^self from: response contents
]

{ #category : #'instance creation' }
XMIFile class >> on: anXMINode [

	^(self new)
		rootNode: anXMINode;
		yourself
]

{ #category : #accessing }
XMIFile >> rootNode [

	^ rootNode
]

{ #category : #accessing }
XMIFile >> rootNode: anObject [

	rootNode := anObject
]
