Class {
	#name : #BaselineOfECECModel,
	#superclass : #BaselineOf,
	#category : #BaselineOfECECModel
}

{ #category : #baselines }
BaselineOfECECModel >> baseline: spec [

	<baseline>
	spec for: #common do: [
		"Dependencies"
		self loadCormas: spec.

		"Packages"
		spec
			package: 'ECEC-Model' with: [ spec requires: #(Cormas) ];
			package: 'ECEC-Model-Tests' with: [ spec requires: #( 'ECEC-Model' ) ] ]
]

{ #category : #dependencies }
BaselineOfECECModel >> loadCormas: spec [

	spec
		baseline: 'Cormas'
		with: [ spec loads: #(Core); repository: 'github://cormas/cormas' ]
]
