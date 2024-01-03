Extension { #name : #XMIFile }

{ #category : #'*XMI-Core-Examples-Model' }
XMIFile class >> exampleArchimate [
	<sampleInstance>

	^ self fromURL: 'https://www.reflektis.com/repos/archimate-3.0.xmi'
]

{ #category : #'*XMI-Core-Examples-Model' }
XMIFile class >> exampleEnterpriseArchitectXMI [
	<example>

	^ (self fromURL:
		   'https://raw.githubusercontent.com/staruml/XMI/master/unittest-files/EA_XMI21.xmi')
		  inspect
]

{ #category : #'*XMI-Core-Examples-Model' }
XMIFile class >> exampleUML [
	<sampleInstance>

	^ self fromURL: 'http://www.omg.org/spec/UML/20131001/UML.xmi'
]

{ #category : #'*XMI-Core-Examples-Model' }
XMIFile class >> exampleVisualParadigm [
	<sampleInstance>

	^(self fromURL:
		 'https://raw.githubusercontent.com/staruml/XMI/master/unittest-files/VP_XMI21.xmi')
]
