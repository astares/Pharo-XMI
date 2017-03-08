versions
v0_0_2: spec
	<version: '0.0.2'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'XMI' with: [ 
				spec 
					className: 'BaselineOfXMI';
					repository: 'github://astares/Pharo-XMI:0.0.2/src' ]]