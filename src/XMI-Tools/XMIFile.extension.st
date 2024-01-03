Extension { #name : #XMIFile }

{ #category : #'*XMI-Tools-Model' }
XMIFile class >> importFile [
	<script>
	| file |
	file := UIManager default chooseExistingFileReference: 'Choose an *.xmi file'
							extensions: #('xmi' 'xml') 
							path: ''.
	file ifNil: [ ^ self ].
	Smalltalk tools inspector inspect: (self from: file contents).
 
]
