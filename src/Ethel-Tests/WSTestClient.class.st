Class {
	#name : #WSTestClient,
	#superclass : #WSClient,
	#category : #'Ethel-Tests-Models'
}

{ #category : #accessing }
WSTestClient class >> baseUrl [
	^ 'http://example.com/' asUrl
]

{ #category : #accessing }
WSTestClient class >> default [
	^ self withUrl: self baseUrl 
]

{ #category : #accessing }
WSTestClient class >> endpoints [
	^ super endpoints
		, (self package classes select: #isWSEndpoint) reject: #isTrait
]

{ #category : #endpoints }
WSTestClient >> collection [
	^ self / WSCollectionTestEndpoint  
]

{ #category : #endpoints }
WSTestClient >> test [
	^ self / WSTestEndpoint 
]
