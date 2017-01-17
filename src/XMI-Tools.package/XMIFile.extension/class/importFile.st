*XMI-Tools-Model
importFile
	<script>
	| filename |
	filename := UITheme builder fileOpen: 'Choose an *.xmi file' extensions: #('xmi' 'xml').
	filename isNil
		ifTrue: [ ^ self ].
	self openInspectorOn: (self from: filename contentsOfEntireFile).
	filename close