Class {
	#name : #ECECForagerTest,
	#superclass : #TestCase,
	#instVars : [
		'restrainedForager',
		'unrestrainedForager'
	],
	#category : #'ECEC-Model-Tests'
}

{ #category : #initialization }
ECECForagerTest >> setUp [

	super setUp.
	restrainedForager := ECECRestrainedForager new.
	unrestrainedForager := ECECUnrestrainedForager new.
]

{ #category : #tests }
ECECForagerTest >> testPov [

	self assert: restrainedForager pov isColor.
	self assert: unrestrainedForager pov isColor.
	self deny: restrainedForager pov equals: unrestrainedForager pov.
]
