*XMI-Tools-Model
importFile
	<script>
	|inspector filename|
	filename := UITheme builder
		fileOpen: 'Choose an *.xmi file'
		extensions: #('xmi' 'xml').
	filename isNil
		ifTrue: [ ^ self ].
 
	inspector := GTInspector new.
 	inspector title: 'XMI Model'.
 	inspector presentationFilter: 
               (GTInspectorTagFilter new 
                    defaultTag: #xmi;
                    addAndSelectTag: #xmi).
 	inspector openOn: (self from: filename  contentsOfEntireFile) rootNode.
	filename close