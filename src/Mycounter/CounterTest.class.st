Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #Mycounter
}

{ #category : #tests }
CounterTest >> testCount [
|c|
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [
|c|
c := Counter new.
c count: 7.
c valInc: 2.
c decrement.
self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testIncrement [
|c|
c := Counter new.
c count: 7.
c valInc: 2.
c increment.
self assert: c count equals: 9
]

{ #category : #tests }
CounterTest >> testInitialize [
|c|
c := Counter new.
self assert: c count equals: 0.
self assert: c valInc equals: 1
]

{ #category : #tests }
CounterTest >> testStartAt [

|c|
c := Counter startAt: 5.
self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testValInc [
|c|
c := Counter new.
c count: 7.
c valInc: 2.
self assert: c valInc equals: 2
]
