*XMI-Tools
gtInspectorAttributesIn: composite
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
		 