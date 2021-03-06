Class {
	#name : #PRPearPillarState,
	#superclass : #PRPearSyntaxState,
	#category : #'Pillar-Pear'
}

{ #category : #accessing }
PRPearPillarState >> exampleText [
	^ '! Heading one 

!!Heading Twoo 

""this is bold"". 

This is not bold but this one is ''italic''.

This is a list
- item 1 ""this is bold again my friend"" and without bold here
-- item 11 is nested
-- item 12 is nested too
- item 2
- item 3
-- item 31

This is an ordered collection
# one
# two 

The following code shows the definition of the method ==printOn:==

[[[  
Point class >> new
	self foo	
]]] 

[[[language=smalltalk 
1 + 2 
]]]

! Heading one 

'
]

{ #category : #accessing }
PRPearPillarState >> extension [
	^ 'pillar'
]

{ #category : #accessing }
PRPearPillarState >> name [
	^ 'Pillar'
]

{ #category : #accessing }
PRPearPillarState >> next [
	^ PRPearMicroDownState new
]

{ #category : #accessing }
PRPearPillarState >> parser [
	^ PRPillarParser
]

{ #category : #accessing }
PRPearPillarState >> writer [
	^ PRPillarWriter
]
