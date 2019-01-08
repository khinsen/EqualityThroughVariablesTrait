Class {
	#name : #BaselineOfEqualityThroughVariablesTrait,
	#superclass : #BaselineOf,
	#category : #BaselineOfEqualityThroughVariablesTrait
}

{ #category : #baseline }
BaselineOfEqualityThroughVariablesTrait >> baseline: spec [
	<baseline>
	
	spec for: #common do: [

		spec
			package: 'EqualityThroughVariablesTrait';
			package: 'BaselineOfEqualityThroughVariablesTrait'.

].

]
