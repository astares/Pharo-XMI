baselines
baseline: spec
	 
	<baseline>
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'Pastell' with: [
				spec
					className: #ConfigurationOfPastell;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/' ].
		spec 
			package: #'XMI-Core';
			package: #'XMI-Examples' with: [
				spec requires: #(#'XMI-Core' ). ];
			package: #'XMI-Tests-Core' with: [
				spec requires: #(#'XMI-Core' ). ];
			package: #'XMI-Tools' with: [
				spec requires: #(#'XMI-Core' ). ].
		spec 
			group: 'Core' with: #(#'XMI-Core' );
			group: 'Examples' with: #(#'XMI-Examples' );
			group: 'Tests' with: #(#'XMI-Tests-Core' );
			group: 'Tools' with: #(#'XMI-Tools' ). ].
