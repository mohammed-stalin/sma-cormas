Class {
	#name : #ECECModel,
	#superclass : #CMAbstractModel,
	#instVars : [
		'theRestrainedForagers',
		'theUnrestrainedForagers',
		'theVegetationUnits'
	],
	#category : #'ECEC-Model'
}

{ #category : #accessing }
ECECModel class >> initialNumberOfRestrainedForagers [

	^ 10
]

{ #category : #accessing }
ECECModel class >> initialNumberOfUnrestrainedForagers [

	^ 10
]

{ #category : #init }
ECECModel >> homogeneousEnvironment [

	self
		createGridLines: 27
		columns: 27
		neighbourhood: 8
		closed: false.
		
	self theVegetationUnits do: [ :each | each initializeWithRandomBiomass ].
	
	self
		initializeAgents;
		displayPov: #povBiomass of: ECECVegetationUnit;
		displayPov: #defaultPOV of: ECECForager
]

{ #category : #initialization }
ECECModel >> initialize [

	super initialize.
	
	theRestrainedForagers := OrderedCollection new.
	theUnrestrainedForagers := OrderedCollection new.
	theVegetationUnits := OrderedCollection new.
]

{ #category : #'init entities' }
ECECModel >> initializeAgents [

	self
		createN: self class initialNumberOfRestrainedForagers
		randomlyLocatedAloneEntities: ECECRestrainedForager.
		
	self
		createN: self class initialNumberOfUnrestrainedForagers
		randomlyLocatedAloneEntities: ECECUnrestrainedForager.
]

{ #category : #probes }
ECECModel >> numberOfRestrainedForagers [

	<probe>
	^ self theRestrainedForagers size
]

{ #category : #probes }
ECECModel >> numberOfUnrestrainedForagers [

	<probe>
	^ self theUnrestrainedForagers size
]

{ #category : #control }
ECECModel >> step: anObject [

	self
		stepEntities: self theVegetationUnits;
		askRandom: ECECForager toDo: #step
]

{ #category : #accessing }
ECECModel >> theRestrainedForagers [

	^ theRestrainedForagers
]

{ #category : #accessing }
ECECModel >> theRestrainedForagers: anObject [

	theRestrainedForagers := anObject
]

{ #category : #accessing }
ECECModel >> theUnrestrainedForagers [

	^ theUnrestrainedForagers
]

{ #category : #accessing }
ECECModel >> theUnrestrainedForagers: anObject [

	theUnrestrainedForagers := anObject
]

{ #category : #accessing }
ECECModel >> theVegetationUnits [

	^ theVegetationUnits
]

{ #category : #accessing }
ECECModel >> theVegetationUnits: anObject [

	theVegetationUnits := anObject
]

{ #category : #probes }
ECECModel >> totalAmountOfBiomass [

	<probe>
	^ self theVegetationUnits sum: [ :each | each biomass ]
]
