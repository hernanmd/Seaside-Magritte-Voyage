Class {
	#name : #BaselineOfSeasideMagritteVoyage,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeasideMagritteVoyage
}

{ #category : #baselines }
BaselineOfSeasideMagritteVoyage >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self 
			baselineForSeaside: spec;
			baselineForMagritte: spec;
			baselineForVoyage: spec
		].

	spec for: #pharo do: [
		self packagesForPharo: spec ].
	
	spec group: 'default' with: #(#'Seaside-Magritte-Voyage').
]

{ #category : #baselines }
BaselineOfSeasideMagritteVoyage >> baselineForMagritte: spec [

	spec
		baseline: 'Magritte' 
		with: [
			spec
				repository: 'github://magritte-metamodel/magritte'; 
				loads: #(default) ]
]

{ #category : #baselines }
BaselineOfSeasideMagritteVoyage >> baselineForSeaside: spec [

	spec
		baseline: 'Seaside3' 
		with: [
				spec
					repository: 'github://SeasideSt/Seaside/repository';
					loads: #('default' 'JSON' 'Email' 'Javascript' 'JQuery' 'JQueryUI' 'REST' ) ]
]

{ #category : #baselines }
BaselineOfSeasideMagritteVoyage >> baselineForVoyage: spec [

	spec
		baseline: 'Voyage' 
		with: [
			spec
				repository: 'github://pharo-nosql/voyage/mc';
				loads: #(mongo) ]
]

{ #category : #baselines }
BaselineOfSeasideMagritteVoyage >> packagesForPharo: spec [

	spec 
		package: #'Seaside-Magritte-Voyage' 
		with: [
			spec
				requires: #('Seaside3' 'Magritte' 'Voyage');
				repository: 'github://hernanmd/Seaside-Magritte-Voyage' ]
]
