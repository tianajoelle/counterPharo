Class {
	#name : 'NCounterTest',
	#superclass : 'TestCase',
	#category : 'NewCounterW1',
	#package : 'NewCounterW1'
}

{ #category : 'tests' }
NCounterTest >> testCountIsSetAndRead [
	| c |
	c := NCounter new.
	c count: 5.
	self assert: c count equals: 5
]

{ #category : 'tests' }
NCounterTest >> testCounterWellInitialized [
self
assert: (NCounter new increment; increment; count)
equals: 2
]

{ #category : 'tests' }
NCounterTest >> testDecrement [ 
| c |
c := NCounter new.
c count: 12 ; decrement .
self assert: c count equals: 11
]

{ #category : 'tests' }
NCounterTest >> testIncrement [
| c |
c := NCounter new.
c count: 0 ; increment; increment; increment .
self assert: c count equals: 3
]

{ #category : 'tests' }
NCounterTest >> testInitialize [
self assert: NCounter new count equals: 0
]
