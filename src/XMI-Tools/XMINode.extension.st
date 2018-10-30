Extension { #name : #XMINode }

{ #category : #'*XMI-Tools' }
XMINode >> gtInspectorAttributesIn: composite [
    <gtInspectorPresentationOrder: 30>
    <gtInspectorTag: #basic> 
    <gtInspectorTag: #xmi> 
 
 ^ (composite table)
		title: 'Attributes';
		display: [ self attributes associations ];
		children: [ :each | 
			(each value isDictionary) 
				ifTrue: [ each value associations ] 
				ifFalse: [ (each value isArray and: [ each value allSatisfy: #isDictionary ])
						ifTrue: [ each value collectWithIndex: [:x :i | i -> x ] ]
						ifFalse: [ #() ] ] ];
		column: 'Key' 
			evaluated: [:each | each key asString ];
		column: 'Value' 
			evaluated: [:each | each value asString]
		 
]

{ #category : #'*XMI-Tools' }
XMINode >> gtInspectorChildrenElementsIn: composite [
    <gtInspectorPresentationOrder: 40>
    <gtInspectorTag: #basic> 
    <gtInspectorTag: #xmi> 
 
 composite list
    title: 'Children';
    display: [ self children ];
    when: [ self children notEmpty ]
]

{ #category : #'*XMI-Tools' }
XMINode >> gtInspectorChildrenRecursiveElementsIn: composite [
    <gtInspectorPresentationOrder: 20>
    <gtInspectorTag: #basic> 
    <gtInspectorTag: #xmi> 
 
 composite tree
	 rootsExpanded;
    title: 'Hierarchy';
    display: [ :root | self ];
	 children: [:each | each children ]
]
