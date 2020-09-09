Class {
	#name : #BaselineOfSeasideMagritteVoyage,
	#superclass : #BaselineOf,
	#category : #'BaselineOfSeasideMagritteVoyage-Baseline'
}

{ #category : #baselines }
BaselineOfSeasideMagritteVoyage >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'Seaside3' with: [
				spec
					repository: 'github://SeasideSt/Seaside:v3.4.2/repository';
					loads: #('default' 'JSON' 'Email' 'Javascript' 'JQuery' 'JQueryUI' 'REST' ) ];
			baseline: 'Magritte' with: [
				spec
					repository: 'github://magritte-metamodel/magritte:v3.6'; 
					loads: #(default Seaside) ];
			baseline: 'Voyage' with: [
				spec
					repository: 'github://pharo-nosql/voyage/mc';
					loads: #(mongo) ]
		]
]
