"
Baseline for Pharo-XMI project
"
Class {
	#name : #BaselineOfXMI,
	#superclass : #BaselineOf,
	#category : #BaselineOfXMI
}

{ #category : #baselines }
BaselineOfXMI >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo' ].
			
			spec
				package: #'XMI-Core' with: [ spec requires: #(#'XMLParser')];
				package: #'XMI-Core-Examples'
					with: [ spec requires: #(#'XMI-Core') ];
				package: #'XMI-Tests-Core'
					with: [ spec requires: #(#'XMI-Core') ];
				package: #'XMI-Tools' with: [ spec requires: #(#'XMI-Core') ].
			spec
				group: 'Core' with: #(#'XMI-Core');
				group: 'Examples' with: #(#'XMI-Core-Examples');
				group: 'Tests' with: #(#'XMI-Tests-Core');
				group: 'Tools' with: #(#'XMI-Tools') ]
]
