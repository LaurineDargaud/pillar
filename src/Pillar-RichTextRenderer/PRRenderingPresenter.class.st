Class {
	#name : #PRRenderingPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'textInput',
		'textResult',
		'parser',
		'parseButton',
		'changeSyntaxButton',
		'morphWriter'
	],
	#category : #'Pillar-RichTextRenderer'
}

{ #category : #specs }
PRRenderingPresenter class >> defaultSpec [
	^ SpecRowLayout new
		add: #textResult width: 400;
		newColumn: [ :col | 
			col 
				add: #textInput;
				add: #parseButton;
				yourself
		];
		yourself.
]

{ #category : #'changing state' }
PRRenderingPresenter >> changeLabelStateNext [
	| nextParser |
	(parser = PRPillarParser) ifTrue: [ nextParser := 'MicroDown' ] ifFalse: [ nextParser := 'Pillar' ].
	changeSyntaxButton label: 'Change to ', nextParser.
]

{ #category : #accessing }
PRRenderingPresenter >> changeSyntaxButton [
	^ changeSyntaxButton
]

{ #category : #accessing }
PRRenderingPresenter >> changeSyntaxButton: anObject [
	changeSyntaxButton := anObject
]

{ #category : #actions }
PRRenderingPresenter >> cleanText: aText [
	aText text: ''.
]

{ #category : #initialization }
PRRenderingPresenter >> initialExtent [
	^ 800@400
]

{ #category : #initialization }
PRRenderingPresenter >> initialize [
	super initialize.
	morphWriter := PRRichTextComposer new.
	parser := PRPillarParser.
]

{ #category : #initialization }
PRRenderingPresenter >> initializePresenter [
	| document |
	changeSyntaxButton action: [ 
		self cleanText: textResult.
		self parserStateNext.
		self changeLabelStateNext.
		 ].
	parseButton action: [ 
		self cleanText: textResult.
		document := parser new parse: textInput text.
		textResult text: (morphWriter start: document) ].
	
]

{ #category : #initialization }
PRRenderingPresenter >> initializeWidgets [ 	
	self instantiateModels: #(textResult TextPresenter).
	textResult text: ''.
	self instantiateModels: #(textInput TextPresenter).
	textInput 
		autoAccept: true;
		text: PRMorphWriter pillarInputExample.
	self instantiateModels: #(parseButton ButtonPresenter).
	parseButton label: 'Parse'.
	self instantiateModels: #(changeSyntaxButton ButtonPresenter).
	self changeLabelStateNext.
]

{ #category : #accessing }
PRRenderingPresenter >> parseButton [
	^ parseButton
]

{ #category : #accessing }
PRRenderingPresenter >> parseButton: anObject [
	parseButton := anObject
]

{ #category : #accessing }
PRRenderingPresenter >> parser [
	^ parser
]

{ #category : #accessing }
PRRenderingPresenter >> parser: aParser [
	parser := aParser
]

{ #category : #'changing state' }
PRRenderingPresenter >> parserStateNext [
	(parser = PRPillarParser) ifTrue: [ ^ PRMicroDownParser ] ifFalse: [ ^ PRPillarParser ]
]

{ #category : #accessing }
PRRenderingPresenter >> textInput [
	^ textInput
]

{ #category : #accessing }
PRRenderingPresenter >> textInput: anObject [
	textInput := anObject
]

{ #category : #accessing }
PRRenderingPresenter >> textResult [
	^ textResult
]

{ #category : #accessing }
PRRenderingPresenter >> textResult: anObject [
	textResult := anObject
]

{ #category : #api }
PRRenderingPresenter >> title [
	^ 'Pillar RichText-based Renderer'
]
