instance creation
from: aStringOrStream

	^self fromXMLElement: (XMLDOMParser parse: aStringOrStream usingNamespaces: false) root