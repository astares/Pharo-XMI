initialization
initialize
	super initialize.
	self prefix: ''.
	self tagName: ''.
	self attributes: OrderPreservingStringDictionary new.
	self children: OrderedCollection new.