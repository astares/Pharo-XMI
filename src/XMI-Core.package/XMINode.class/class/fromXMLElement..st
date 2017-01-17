instance creation
fromXMLElement: anXMLElement

	| instance |
	instance := self new.
	instance prefix: anXMLElement name xmlPrefixBeforeLocalName.
	instance tagName: anXMLElement localName.
	instance attributes: anXMLElement attributes.
	instance children: (anXMLElement elements collect: [:each | (self fromXMLElement: each)]).
	^instance
