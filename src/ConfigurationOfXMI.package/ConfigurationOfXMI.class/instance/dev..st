versions
dev: spec
	<version: 'dev'>

	spec for: #'common' do: [ 
		spec blessing: #'development'.
		spec
			baseline: 'XMI' with: [ 
				spec 
					className: 'BaselineOfXMI';
					repository: 'github://astares/Pharo-XMI:master/src' ]].