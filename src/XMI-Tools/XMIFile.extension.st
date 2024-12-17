Extension { #name : 'XMIFile' }

{ #category : '*XMI-Tools-Model' }
XMIFile class >> importFile [
	<script>
	| file |
	file := UIManager default chooseFullFileNameMatching: #('xmi' 'xml') label: 'Choose an *.xmi file'.
	file ifNil: [ ^ self ].
	Smalltalk tools inspector inspect: (self from: file contents).
 
]
