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
		do: [
			self xmlParserOn: spec.

			spec
				package: #'XMI-Core' with: [ spec requires: #(#'XMLParser') ];
				package: #'XMI-Core-Examples'
					with: [ spec requires: #(#'XMI-Core') ];
				package: #'XMI-Tests-Core'
					with: [ spec requires: #(#'XMI-Core') ];
				package: #'XMI-Tools' with: [ spec requires: #(#'XMI-Core') ].

			spec
				group: 'Core' with: #(#'XMI-Core');
				group: 'Examples' with: #(#'XMI-Core-Examples');
				group: 'Tests' with: #(#'XMI-Tests-Core');
				group: 'Tools' with: #(#'XMI-Tools');
				group: 'CI' with: #(#'Tests').

			spec
				group: 'all' with: #(#'Core' 'Examples' 'Tests' 'Tools');
				group: 'default' with: #(#'all')
		]
]

{ #category : #dependencies }
BaselineOfXMI >> xmlParserOn: spec [
	spec
		baseline: 'XMLParser'
      with: [
			spec
				loads: #('Core');
				repository: 'github://pharo-contributions/XML-XMLParser:v3.6.1/src' ].

	spec
		project: 'XMLParser Tests' copyFrom: 'XMLParser' with: [ spec loads: #('Tests') ];
		project: 'XMLParser Tools' copyFrom: 'XMLParser' with: [ spec loads: #('Tools') ]
]
