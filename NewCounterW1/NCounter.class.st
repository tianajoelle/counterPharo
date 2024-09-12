Class {
	#name : 'NCounter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'NewCounterW1',
	#package : 'NewCounterW1'
}

{ #category : 'accessing' }
NCounter >> count [
	^count 
]

{ #category : 'API' }
NCounter >> count: anInteger [ 
	count := anInteger
]

{ #category : 'API' }
NCounter >> decrement [
count := count-1
]

{ #category : 'accessing' }
NCounter >> increment [
count := count+1
]

{ #category : 'initialization' }
NCounter >> initialize [
	count := 0
]

{ #category : 'printing' }
NCounter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: '; print: count .
]
