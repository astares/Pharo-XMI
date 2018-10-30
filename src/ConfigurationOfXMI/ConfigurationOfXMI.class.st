"
Configuration for GitHub API
"
Class {
	#name : #ConfigurationOfXMI,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : 'ConfigurationOfXMI'
}

{ #category : #'development support' }
ConfigurationOfXMI class >> DevelopmentSupport [

"See the methods in the 'development support' category on the class-side of MetacelloBaseConfiguration. Decide what development support methods you would like to use and copy them the the class-side of your configuration."
	<apiDocumentation>
]

{ #category : #private }
ConfigurationOfXMI class >> baseConfigurationClassIfAbsent: aBlock [

	^Smalltalk
		at: #'ConfigurationOf'
		ifAbsent: [ 
			self ensureMetacelloBaseConfiguration.
			Smalltalk at: #'ConfigurationOf' ifAbsent: aBlock ].
]

{ #category : #catalog }
ConfigurationOfXMI class >> catalogChangeLog [
	"Returns a paragraph describing the most important changes in the configuration class."
	^ ''
]

{ #category : #catalog }
ConfigurationOfXMI class >> catalogContactInfo [
	"Returns a paragraph describing contact information such as email, mailing lists and website."
	^ ''
]

{ #category : #catalog }
ConfigurationOfXMI class >> catalogDescription [
	"Returns a paragraph describing the project"
	^ 'A XMI wrapper for Pharo to easily access XML Metadata informations.'
]

{ #category : #catalog }
ConfigurationOfXMI class >> catalogKeyClassesAndExample [
	"Returns a paragraph or more describing the key classes of your project. You can use Pillar/Pier syntax to layout out the text i.e., ==Code== and - for bullet."
	^ ''
]

{ #category : #catalog }
ConfigurationOfXMI class >> catalogKeywords [
	"Returns an array of symbols"
	^ #(xmi uml xml omg) 
]

{ #category : #private }
ConfigurationOfXMI class >> ensureMetacello [

	(self baseConfigurationClassIfAbsent: []) ensureMetacello
]

{ #category : #private }
ConfigurationOfXMI class >> ensureMetacelloBaseConfiguration [
  Smalltalk
    at: #'ConfigurationOf'
    ifAbsent: [ 
      | repository version |
      repository := MCHttpRepository
        location: 'http://smalltalkhub.com/mc/dkh/metacello/main'
        user: ''
        password: ''.
      repository
        versionReaderForFileNamed: 'Metacello-Base-dkh.107'
        do: [ :reader | 
          version := reader version.
          version load.
          version workingCopy repositoryGroup addRepository: repository ] ]
]

{ #category : #'metacello tool support' }
ConfigurationOfXMI class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #loading }
ConfigurationOfXMI class >> load [
	"Load the #stable version defined for this platform. The #stable version is the version that is recommended to be used on this platform."

	"self load"

	<apiDocumentation>
	^(self project version: #stable) load
]

{ #category : #loading }
ConfigurationOfXMI class >> loadBleedingEdge [
	"Load the latest versions of the mcz files defined for this project. It is not likely that the #bleedingEdge has been tested."

	"self loadBleedingEdge"

	<apiDocumentation>
	^(self project version: #bleedingEdge) load
]

{ #category : #loading }
ConfigurationOfXMI class >> loadDevelopment [
	"Load the #development version defined for this platform. The #development version will change over time and is not expected to be stable."

	"self loadDevelopment"

	<apiDocumentation>
	^(self project version: #development) load
]

{ #category : #accessing }
ConfigurationOfXMI class >> project [

	^self new project
]

{ #category : #'development support' }
ConfigurationOfXMI class >> validate [
	"Check the configuration for Errors, Critical Warnings, and Warnings (see class comment for MetacelloMCVersionValidator for more information). 
	Errors identify specification issues that will result in unexpected behaviour when you load the configuration. 
	Critical Warnings identify specification issues that may result in unexpected behavior when you load the configuration.
	Warnings identify specification issues that are technically correct, but are worth take a look at."

	"self validate"

	<apiDocumentation>
	self ensureMetacello.
	^ ((Smalltalk at: #MetacelloToolBox) validateConfiguration: self debug: #() recurse: false) explore
]

{ #category : #accessing }
ConfigurationOfXMI >> customProjectAttributes [
    "Edit to return a collection of any custom attributes e.g. for conditional loading: Array with: #'Condition1' with: #'Condition2.
	For more information see: http://code.google.com/p/metacello/wiki/CustomProjectAttrributes "

    ^ #()
]

{ #category : #versions }
ConfigurationOfXMI >> dev: spec [
	<version: 'dev'>

	spec for: #'common' do: [ 
		spec blessing: #'development'.
		spec
			baseline: 'XMI' with: [ 
				spec 
					className: 'BaselineOfXMI';
					repository: 'github://astares/Pharo-XMI:master/src' ]].
]

{ #category : #'symbolic versions' }
ConfigurationOfXMI >> development: spec [
	<symbolicVersion: #'development'>

	spec for: #'common' version: 'dev'.

]

{ #category : #accessing }
ConfigurationOfXMI >> project [
    ^ project
        ifNil: [ 
            "Bootstrap Metacello if it is not already loaded"
            self class ensureMetacello.
            project := MetacelloMCProject new projectAttributes: self customProjectAttributes.	"Create the Metacello project"
            (Smalltalk at: #'MetacelloVersionConstructor') on: self project: project.	"Construct the project"
            project loadType: #'linear'.	"change to #atomic if desired"
            project ]
]

{ #category : #'symbolic versions' }
ConfigurationOfXMI >> stable: spec [
	<symbolicVersion: #'stable'>

	spec for: #'common' version: '0.0.1'.
	spec for: #'pharo5.x' version: '0.0.2'.
	spec for: #'pharo6.x' version: '0.0.2'.	
]

{ #category : #versions }
ConfigurationOfXMI >> v0_0_1: spec [
	<version: '0.0.1'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'XMI' with: [ 
				spec 
					className: 'BaselineOfXMI';
					repository: 'github://astares/Pharo-XMI:0.0.1/src' ]]
]

{ #category : #versions }
ConfigurationOfXMI >> v0_0_2: spec [
	<version: '0.0.2'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'XMI' with: [ 
				spec 
					className: 'BaselineOfXMI';
					repository: 'github://astares/Pharo-XMI:0.0.2/src' ]]
]
