Extension { #name : #XMIFile }

{ #category : #'*XMI-Tools-Model' }
XMIFile class >> importFile [
	<script>
	| file |
	file := UIManager default chooseExistingFileReference: 'Choose an *.xmi file'
							extensions: #('xmi' 'xml') 
							path: ''.
	file ifNil: [ ^ self ].
	self openInspectorOn: (self from: file contents).
 
]

{ #category : #'*XMI-Tools-Model' }
XMIFile class >> openInspectorOn: anXMIFile [
 
	| inspector |
	inspector := GTInspector new.
 	inspector title: 'XMI Model' translated.
 	inspector presentationFilter: 
               (GTInspectorTagFilter new 
                    defaultTag: #xmi;
                    addAndSelectTag: #xmi).
 	inspector openOn: anXMIFile rootNode.
 
]
