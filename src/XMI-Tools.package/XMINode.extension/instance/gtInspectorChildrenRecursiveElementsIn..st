*XMI-Tools
gtInspectorChildrenRecursiveElementsIn: composite
    <gtInspectorPresentationOrder: 20>
    <gtInspectorTag: #basic> 
    <gtInspectorTag: #xmi> 
 
 composite tree
	 rootsExpanded;
    title: 'Hierarchy';
    display: [ :root | self ];
	 children: [:each | each children ]