Trait {
	#name : #EqualityThroughVariables,
	#category : #EqualityThroughVariablesTrait
}

{ #category : #comparing }
EqualityThroughVariables >> = anObject [
	| class instVarNames |
	self == anObject ifTrue: [ ^true ].
	class := self class.
	class = anObject class ifFalse: [ ^false ].
	instVarNames := class allInstVarNames difference: self instVarsExcludedFromEquality.
	instVarNames do:
		[ :name |
			(self instVarNamed: name) = (anObject instVarNamed: name)
				ifFalse: [^false]. ].
	class isVariable
		ifTrue:
			[ 1 to: self basicSize do:
				[ :index |
					(self basicAt: index) = (anObject basicAt: index)
						ifFalse: [ ^false ] ] ].
	^true

]

{ #category : #comparing }
EqualityThroughVariables >> hash [
	| class instVarNames hash |
	class := self class.
	hash := class hash.
	instVarNames := class allInstVarNames difference: self instVarsExcludedFromEquality.
	instVarNames do:
		[ :name |
			hash := hash bitXor: (self instVarNamed: name) hash ].
	class isVariable
		ifTrue:
			[ 1 to: self basicSize do:
				[ :index |
					hash := hash bitXor: (self basicAt: index) hash ] ].
	^hash

]

{ #category : #comparing }
EqualityThroughVariables >> instVarsExcludedFromEquality [
	^#()

]
