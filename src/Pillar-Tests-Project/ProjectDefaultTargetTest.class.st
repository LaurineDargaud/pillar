Class {
	#name : #ProjectDefaultTargetTest,
	#superclass : #TestCase,
	#instVars : [
		'project'
	],
	#category : #'Pillar-Tests-Project'
}

{ #category : #tests }
ProjectDefaultTargetTest >> configAbsentTargetContent [ 
	^ '{
  "base_url": "",
  "site_name": "Pharo Book",
  "title": "The Pillar Super Book Archetype",
  "attribution": "The Pillar team",
  "series": "Square Bracket tutorials",
  "keywords": "project template, Pillar, Pharo, Smalltalk",
  "language": "en-UK",
  "latexWriter" : #latex
}'
]

{ #category : #tests }
ProjectDefaultTargetTest >> configAsciiContent [
	^ '{
  "base_url": "",
  "site_name": "Pharo Book",
  "title": "The Pillar Super Book Archetype",
  "attribution": "The Pillar team",
  "series": "Square Bracket tutorials",
  "keywords": "project template, Pillar, Pharo, Smalltalk",
  "language": "en-UK",
  "latexWriter" : #latex,
  "defaultExport" : "ascii"
}'
]

{ #category : #tests }
ProjectDefaultTargetTest >> configHTMLContent [
	^ '{
  "base_url": "",
  "site_name": "Pharo Book",
  "title": "The Pillar Super Book Archetype",
  "attribution": "The Pillar team",
  "series": "Square Bracket tutorials",
  "keywords": "project template, Pillar, Pharo, Smalltalk",
  "language": "en-UK",
  "latexWriter" : #latex,
  "defaultExport" : "html"
}'
]

{ #category : #tests }
ProjectDefaultTargetTest >> configInvalidTargetContent [
	^ '{
  "base_url": "",
  "site_name": "Pharo Book",
  "title": "The Pillar Super Book Archetype",
  "attribution": "The Pillar team",
  "series": "Square Bracket tutorials",
  "keywords": "project template, Pillar, Pharo, Smalltalk",
  "language": "en-UK",
  "latexWriter" : #latex,
  "defaultExport" : "error"
}'
]

{ #category : #tests }
ProjectDefaultTargetTest >> configMarkdownContent [
	^ '{
  "base_url": "",
  "site_name": "Pharo Book",
  "title": "The Pillar Super Book Archetype",
  "attribution": "The Pillar team",
  "series": "Square Bracket tutorials",
  "keywords": "project template, Pillar, Pharo, Smalltalk",
  "language": "en-UK",
  "latexWriter" : #latex,
  "defaultExport" : "markdown"
}'
]

{ #category : #tests }
ProjectDefaultTargetTest >> configPDFContent [
	^ '{
  "base_url": "",
  "site_name": "Pharo Book",
  "title": "The Pillar Super Book Archetype",
  "attribution": "The Pillar team",
  "series": "Square Bracket tutorials",
  "keywords": "project template, Pillar, Pharo, Smalltalk",
  "language": "en-UK",
  "latexWriter" : #latex,
  "defaultExport" : "pdf"
}'
]

{ #category : #tests }
ProjectDefaultTargetTest >> testDefaultTargetAbsent [
	| directory |
	directory := FileSystem memory root.
	directory / 'pillar.conf'
		writeStreamDo: [ :st | st nextPutAll: self configAbsentTargetContent ].
	project := PRProject new baseDirectory: directory.
	
	self assert: project defaultTarget equals: PRAbsentTarget
]

{ #category : #tests }
ProjectDefaultTargetTest >> testDefaultTargetAscii [
	| directory |
	directory := FileSystem memory root.
	directory / 'pillar.conf'
		writeStreamDo: [ :st | st nextPutAll: self configAsciiContent ].
	project := PRProject new baseDirectory: directory.
	
	self assert: project defaultTarget equals: PRAsciiOutput
]

{ #category : #tests }
ProjectDefaultTargetTest >> testDefaultTargetHTML [
	| directory |
	directory := FileSystem memory root.
	directory / 'pillar.conf'
		writeStreamDo: [ :st | st nextPutAll: self configHTMLContent ].
	project := PRProject new baseDirectory: directory.
	
	self assert: project defaultTarget equals: PRHtmlOutput
]

{ #category : #tests }
ProjectDefaultTargetTest >> testDefaultTargetInvalid [
	| directory |
	directory := FileSystem memory root.
	directory / 'pillar.conf'
		writeStreamDo: [ :st | st nextPutAll: self configInvalidTargetContent ].
	project := PRProject new baseDirectory: directory.
	
	self assert: project defaultTarget equals: PRInvalidTarget
]

{ #category : #tests }
ProjectDefaultTargetTest >> testDefaultTargetMarkdown [
	| directory |
	directory := FileSystem memory root.
	directory / 'pillar.conf'
		writeStreamDo: [ :st | st nextPutAll: self configMarkdownContent ].
	project := PRProject new baseDirectory: directory.
	
	self assert: project defaultTarget equals: PRMarkdownOutput
]

{ #category : #tests }
ProjectDefaultTargetTest >> testDefaultTargetPDF [
	| directory |
	directory := FileSystem memory root.
	directory / 'pillar.conf'
		writeStreamDo: [ :st | st nextPutAll: self configPDFContent ].
	project := PRProject new baseDirectory: directory.
	
	self assert: project defaultTarget equals: PRPdfOutput
]
