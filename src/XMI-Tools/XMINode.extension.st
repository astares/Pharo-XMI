Extension { #name : #XMINode }

{ #category : #'*XMI-Tools' }
XMINode >> inspectionAttributes: aBuilder [
	<inspectorPresentationOrder: 0 title: 'Attributes'> 
	
	^ aBuilder newTable		
		addColumn: (SpStringTableColumn 
			title: 'Key'
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each key ])
			beSortable;
		addColumn: (SpStringTableColumn new  
			title: 'Value'; 
			evaluated: [ :each | StObjectPrinter asTruncatedTextFrom: each value ];
			sortFunction: #printString ascending;
			yourself);
		items: self attributes associations;
		yourself
]

{ #category : #'*XMI-Tools' }
XMINode >> inspectionChildren: aBuilder [
	<inspectorPresentationOrder: 0 title: 'Children'> 
	
	^ aBuilder newList		
		items: self children;
		display: [:each | each printString ];
		yourself
]

{ #category : #'*XMI-Tools' }
XMINode >> inspectionChildrenTree: aBuilder [
	<inspectorPresentationOrder: 0 title: 'Nodes'> 
	
	^ aBuilder newTree	
		roots: self children;
		children: [ :aNode | aNode children ];
		display: [ :aNode | aNode asString ] 
]
