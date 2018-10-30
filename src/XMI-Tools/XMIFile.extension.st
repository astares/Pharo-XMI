Extension { #name : #XMIFile }

{ #category : #'*XMI-Tools-Model' }
XMIFile class >> importFile [
	<script>
	| filename |
	filename := UITheme builder fileOpen: 'Choose an *.xmi file' extensions: #('xmi' 'xml').
	filename isNil
		ifTrue: [ ^ self ].
	self openInspectorOn: (self from: filename contentsOfEntireFile).
	filename close
]

{ #category : #'*XMI-Tools-Model' }
XMIFile class >> openInspectorOn: anXMIFile [
 
	| inspector |
	inspector := GTInspector new.
 	inspector title: 'XMI Model'.
 	inspector presentationFilter: 
               (GTInspectorTagFilter new 
                    defaultTag: #xmi;
                    addAndSelectTag: #xmi).
 	inspector openOn: anXMIFile rootNode.
 
]
