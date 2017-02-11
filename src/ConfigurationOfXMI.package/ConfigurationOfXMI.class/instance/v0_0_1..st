versions
v0_0_1: spec
	<version: '0.0.1'>

	spec for: #'common' do: [ 
		spec blessing: #'stable'.
		spec
			baseline: 'XMI' with: [ 
				spec 
					className: 'BaselineOfXMI';
					repository: 'github://astares/Pharo-XMI:0.0.1/src' ]]