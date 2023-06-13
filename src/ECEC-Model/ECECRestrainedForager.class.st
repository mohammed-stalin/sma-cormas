Class {
	#name : #ECECRestrainedForager,
	#superclass : #ECECForager,
	#category : #'ECEC-Model'
}

{ #category : #accessing }
ECECRestrainedForager class >> harvestRate [

	^ 0.5
]

{ #category : #pov }
ECECRestrainedForager >> pov [

	^ Color blue
]

{ #category : #pov }
ECECRestrainedForager >> povEnergy [

	^ self
		  povAttribute: #energy
		  min: 0
		  max: 180
		  color: Color blue
]
