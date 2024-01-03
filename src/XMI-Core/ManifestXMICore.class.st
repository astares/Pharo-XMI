"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestXMICore,
	#superclass : #PackageManifest,
	#category : #'XMI-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestXMICore class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#XMIFile)) #'2024-01-03T01:25:07.957+01:00') )
]
