*XMI-Tools-Model
openInspectorOn: anXMIFile
 
	| inspector |
	inspector := GTInspector new.
 	inspector title: 'XMI Model'.
 	inspector presentationFilter: 
               (GTInspectorTagFilter new 
                    defaultTag: #xmi;
                    addAndSelectTag: #xmi).
 	inspector openOn: anXMIFile rootNode.
 