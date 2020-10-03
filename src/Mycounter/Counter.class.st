Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count',
		'valInc'
	],
	#category : #Mycounter
}

{ #category : #accessing }
Counter class >> startAt: anInteger [
	^ self new count: anInteger 

]

{ #category : #accessing }
Counter >> count [ 
^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
count := anInteger

]

{ #category : #accessing }
Counter >> decrement [ 
count := count - valInc .
]

{ #category : #accessing }
Counter >> increment [ 
count := count + valInc .
]

{ #category : #accessing }
Counter >> initialize [ 
super initialize.
count := 0.
valInc := 1
]

{ #category : #accessing }
Counter >> printOn: aStream [

super printOn: aStream.
aStream nextPutAll:  ' Avec la valeur : ' , count printString.
aStream cr 
]

{ #category : #accessing }
Counter >> valInc [
^ valInc
]

{ #category : #accessing }
Counter >> valInc: anInteger [
valInc := anInteger


]
