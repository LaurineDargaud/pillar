Class {
	#name : #PRMicroDownParserTest,
	#superclass : #PRMicroDownGrammarTest,
	#category : #'Pillar-PetitMicroDown'
}

{ #category : #asserting }
PRMicroDownParserTest >> assertStart: aStartInteger stop: aStopIndex [
	self assert: result notNil.
	self
		assert: result start
		equals: aStartInteger.
	self
		assert: result stop
		equals: aStopIndex.
	
]

{ #category : #asserting }
PRMicroDownParserTest >> assertStart: aStartInteger stop: aStopIndex ofNode: aDocumentItem [
	self
		assert: aDocumentItem start
		equals: aStartInteger.
	self
		assert: aDocumentItem stop
		equals: aStopIndex.
	
]

{ #category : #parsing }
PRMicroDownParserTest >> parserClass [
	^ PRMicroDownParser
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testAliasFigure [
	super testAliasFigure.
	self assert: result equals: { PRText content: 'Alias' } asOrderedCollection.
	self assertStart: 1 stop: 5 ofNode: result first.
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testAliasFigureEscape [
	super testAliasFigureEscape.
	self assert: result equals: { PRText content: 'Alias>' } asOrderedCollection.
	self assertStart: 1 stop: 7 ofNode: result first.
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testAliasLink [
	super testAliasLink.
	self assert: result equals: { PRText content: 'Alias' } asOrderedCollection.
	self assertStart: 1 stop: 5 ofNode: result first.
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testAliasLinkEscape [
	super testAliasLinkEscape.
	self assert: result equals: { PRText content: 'Alias>' } asOrderedCollection.
	self assertStart: 1 stop: 7 ofNode: result first.
]

{ #category : #'tests - Anchor' }
PRMicroDownParserTest >> testAnchor [
	super testAnchor.
	self assert: result equals: (PRAnchor named: 'test')
]

{ #category : #'tests - Anchor' }
PRMicroDownParserTest >> testAnchorAreTrimed [
	super testAnchorAreTrimed.
	self assert: result equals: (PRAnchor named: 'test')
]

{ #category : #'tests - Anchor' }
PRMicroDownParserTest >> testAnchorWithNewLine [
	super testAnchorWithNewLine.
	self assert: result equals: (PRAnchor named: 'foo')
]

{ #category : #'tests - Anchor' }
PRMicroDownParserTest >> testAnchorWithSpaceInside [
	super testAnchorWithSpaceInside.
	self assert: result equals: (PRAnchor named: 'foo bar')
]

{ #category : #'tests - Paragraph' }
PRMicroDownParserTest >> testAnnotatedParagraph [
	super testAnnotatedParagraph.
	self 
		assert: result 
		equals: (PRAnnotatedParagraph withAll: {PRText content: 'Bar'} annotation: 'foo').
	self assertStart: 1 stop: 9.
	self assertStart: 7 stop: 9 ofNode: result children first.
]

{ #category : #'tests - Paragraph' }
PRMicroDownParserTest >> testAnnotatedParagraphEmpty [
	super testAnnotatedParagraphEmpty.
	self
		assert: result
		equals:
			(PRAnnotatedParagraph new
				annotation: 'foo';
				yourself).
	self assertStart: 1 stop: 5.
]

{ #category : #'tests - Paragraph' }
PRMicroDownParserTest >> testAnnotatedParagraphEmptyWithNewLine [
	super testAnnotatedParagraphEmptyWithNewLine.
	self
		assert: result
		equals:
			(PRAnnotatedParagraph new
				annotation: 'foo';
				yourself).
	self assertStart: 1 stop: 5.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotation [
	super testAnnotation.
	self
		assert: result
		equals: (PRInputFileAnnotation withParameters: 
						(PRParameters withAll: { 
							(PRParameter 
								keyNode: (PRParameterKey named: #path) 
								valueNode: (PRParameterValue value: 'Foo')) })).
	self assert: result children size equals: 1.
	self assertStart: 1 stop: 22.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationAreTrimedAtTheRight [
	super testAnnotationAreTrimedAtTheRight.
	self
		assert: result
		equals:
			(PRInputFileAnnotation
				withParameters:
					(PRParameters withAll: { 
							(PRParameter 
								keyNode: (PRParameterKey named: #path) 
								valueNode: (PRParameterValue value: 'Foo')) })).
	self assertStart: 1 stop: 22.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationOnlyWithParameterName [
	| expected |
	super testAnnotationOnlyWithParameterName.
	expected := PRInputFileAnnotation withParameters: (
			PRParameters withAll: { 
				(PRParameter 
					keyNode: (PRParameterKey named: #path) 
					valueNode: (PRParameterValue value: true)) } ).
	self assert: result equals: expected
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationParameter [
	super testAnnotationParameter.
	self assert: result equals: (PRParameter 
		keyNode: (PRParameterKey named: #value) 
		valueNode: (PRParameterValue value: 'foo'))
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationParameters [
	| expected |
	super testAnnotationParameters.
	expected := PRParameters withAll: { 
		(PRParameter 
			keyNode: (PRParameterKey named: #foo) 
			valueNode: (PRParameterValue value: 'bar')).
		(PRParameter 
			keyNode: (PRParameterKey named: #timo) 
			valueNode: (PRParameterValue value: 'leon')) }.
	self assert: result equals:  expected.
	self assert: result start equals: 2.
	self assert: result stop equals: 18.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationParameters2 [
	| expected |
	super testAnnotationParameters.
	expected := PRParameters withAll: { 
		(PRParameter 
			keyNode: (PRParameterKey named: #foo) 
			valueNode: (PRParameterValue value: 'bar')).
		(PRParameter 
			keyNode: (PRParameterKey named: #timo) 
			valueNode: (PRParameterValue value: 'leon')) }.
	self assert: result equals: expected
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationTag [
	super testAnnotationTag.
	self assert: result equals: PRMockAnnotation
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationWithUnknownKey [
	self 
		should: [ super testAnnotationWithUnknownKey ]
		raise: PRSyntaxError.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationWithUnknownKeyAsNode [
	PRValidation beSilentDuring: [ 
		super testAnnotationWithUnknownKey.
		self
			assert: result
			equals: (PRInputFileAnnotation withParameters: 
							(PRParameters withAll: { 
								(PRParameter 
									keyNode: (PRParameterKey named: #path) 
									valueNode: (PRParameterValue value: 'Foo')).
								(PRParameter 
									keyNode: (PRParameterKey named: #unknownKey) 
									valueNode: (PRParameterValue value: 'Bar')) })) ].
	self assertStart: 1 stop: 37.
	self assert: result children first children first isValid.
	self deny: result children first children second isValid.
	
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationWithoutFirstParameterNameAndDefaultValues [
	| expected |
	super testAnnotationWithoutFirstParameterNameAndDefaultValues.
	expected := PRDocumentListAnnotation withParameters: ( 
			PRParameters withAll: { 
				PRParameter 
					keyNode: (PRParameterKey named: #path) 
					valueNode: (PRParameterValue value: 'Foo').
				PRParameter 
					keyNode: (PRParameterKey named: #limit) 
					valueNode: (PRParameterValue value: true).
				PRParameter 
					keyNode: (PRParameterKey named: #sort) 
					valueNode: (PRParameterValue value: true) } ).
	self assert: result equals: expected
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationWithoutParameterName [
	| expected |
	super testAnnotationWithoutParameterName.
	expected := PRInputFileAnnotation withParameters: ( 
			PRParameters withAll: { 
				(PRParameter 
					keyNode: (PRParameterKey named: #path) 
					valueNode: (PRParameterValue value: 'Foo')) } ).
	self assert: result equals: expected
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationWithoutParameters [
	self 
		should: [ super testAnnotationWithoutParameters ]
		raise: PRSyntaxError.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testAnnotationWithoutParametersAsNode [
	PRValidation beSilentDuring: [ 
		super testAnnotationWithoutParameters.
		self
			assert: result
			equals: (PRInputFileAnnotation withParameters: PRParameters new) ].
	self assertStart: 1 stop: 13.
	self assert: result children size equals: 1.
	self deny: result isValid.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testBoldFormat [
	super testBoldFormat.
	self assert: result equals: (PRBoldFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testBoldFormatEmpty [
	super testBoldFormatEmpty.
	self assert: result equals: PRBoldFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testBoldFormatWithEscaped [
	super testBoldFormatWithEscaped.
	self assert: result equals: (PRBoldFormat with: (PRText content: '""')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - Text' }
PRMicroDownParserTest >> testCommentedLine [
	super testCommentedLine.
	self assert: result equals: (PRCommentedLine content: 'some text')
]

{ #category : #'tests - Text' }
PRMicroDownParserTest >> testCommentedLineWithNewline [
	super testCommentedLineWithNewline.
	self assert: result equals: (PRCommentedLine content: 'some text')
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testDefinitionList [
	super testDefinitionList.
	self
		assert: result
		equals:
			(PRDefinitionList
				withAll:
					{(PRTermItem with: (PRText content: 'Foo')).
					(PRDataItem with: (PRText content: 'Bar'))}).
	self assertStart: 1 stop: 9.
	self assertStart: 1 stop: 5 ofNode: result children first.
	self assertStart: 2 stop: 4 ofNode: result children first children first.
	self assertStart: 6 stop: 9 ofNode: result children second.
	self assertStart: 7 stop: 9 ofNode: result children second children first.
	
]

{ #category : #'tests - Paragraph' }
PRMicroDownParserTest >> testEmptyParagraph [
	super testEmptyParagraph.
	self assert: result equals: PREmptyParagraph new.
	self assertStart: 1 stop: 1
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testFigureFollowedByLinkWithAlias [
	| paragraph |
	super testFigureFollowedByLinkWithAlias.
	paragraph := PRParagraph withAll: { 
		PRFigure reference: 'file://TeapotWelcome.png'.
		(PRExternalLink reference: 'http://localhost')
			add: (PRText content: 'Go');
			yourself
	 }.
	self assert: result equals: paragraph.
	self assertStart: 1 stop: 47.
	self assertStart: 1 stop: 26 ofNode: result children first.
	self assertStart: 27 stop: 47 ofNode: result children second.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testFormatWithLink [
	super testFormatWithLink.
	self assert: result equals: (PRBoldFormat with: (PRInternalLink reference: 'foo')).
	self assertStart: 1 stop: 9.
	self assertStart: 3 stop: 7 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderEmpty [
	super testHeaderEmpty.
	self assert: result equals: (PRHeader withAll: Array new level: 1).
	self assertStart: 1 stop: 1.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderLevel1 [
	super testHeaderLevel1.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 1).
	self assertStart: 1 stop: 4.
	self assertStart: 2 stop: 4 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderLevel2 [
	super testHeaderLevel2.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 2).
	self assertStart: 1 stop: 5.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderLevel3 [
	super testHeaderLevel3.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 3).
	self assertStart: 1 stop: 6.
	self assertStart: 4 stop: 6 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderLevel4 [
	super testHeaderLevel4.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 4).
	self assertStart: 1 stop: 7.
	self assertStart: 5 stop: 7 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderLevel5 [
	super testHeaderLevel5.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 5).
	self assertStart: 1 stop: 8.
	self assertStart: 6 stop: 8 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderLevel6 [
	super testHeaderLevel6.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 6).
	self assertStart: 1 stop: 9.
	self assertStart: 7 stop: 9 ofNode: result children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderWithFormat [
	super testHeaderWithFormat.
	self 
		assert: result 
		equals: (PRHeader withAll: {PRBoldFormat with: (PRText content: 'Foo')} level: 1).
	self assertStart: 1 stop: 8.
	self assertStart: 2 stop: 8 ofNode: result children first.
	self assertStart: 4 stop: 6 ofNode: result children first children first.
]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderWithFormatAndText [
	super testHeaderWithFormatAndText.
	self
		assert: result
		equals:
			(PRHeader
				withAll:
					{PRBoldFormat with: (PRText content: 'Foo').
					PRText content: ' bar'}
				level: 1).
	self assertStart: 1 stop: 12.
	self assertStart: 2 stop: 8 ofNode: result children first.
	self assertStart: 4 stop: 6 ofNode: result children first children first.
	self assertStart: 9 stop: 12 ofNode: result children second.

]

{ #category : #'tests - Header' }
PRMicroDownParserTest >> testHeaderWithNewLine [
	super testHeaderWithNewLine.
	self assert: result equals: (PRHeader withAll: {PRText content: 'Foo'} level: 1).
	self assertStart: 1 stop: 4.
	self assertStart: 2 stop: 4 ofNode: result children first.
]

{ #category : #'tests - HorizontalRule' }
PRMicroDownParserTest >> testHorizontalRule [
	super testHorizontalRule.
	self assert: result equals: PRHorizontalRule new
]

{ #category : #'tests - HorizontalRule' }
PRMicroDownParserTest >> testHorizontalRuleFollowByNewLine [
	super testHorizontalRuleFollowByNewLine.
	self assert: result equals: PRHorizontalRule new
]

{ #category : #'tests - HorizontalRule' }
PRMicroDownParserTest >> testHorizontalRuleTrimRight [
	super testHorizontalRuleTrimRight.
	self assert: result equals: PRHorizontalRule new
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testItalicFormat [
	super testItalicFormat.
	self assert: result equals: (PRItalicFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testItalicFormatEmpty [
	super testItalicFormatEmpty.
	self assert: result equals: PRItalicFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testItalicFormatWithEscaped [
	super testItalicFormatWithEscaped.
	self assert: result equals: (PRItalicFormat with: (PRText content: '''''')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testLinkFollowedByFigureWithAlias [
	| paragraph |
	super testLinkFollowedByFigureWithAlias.
	paragraph := PRParagraph withAll: { 
		PRExternalLink reference: 'http://localhost'.
		(PRFigure reference: 'file://TeapotWelcome.png')
			add: (PRText content: 'Go');
			yourself
	 }.
	self assert: result equals: paragraph.
	self assertStart: 1 stop: 47.
	self assertStart: 1 stop: 18 ofNode: result children first.
	self assertStart: 19 stop: 47 ofNode: result children second.
	self flag: 'PRText should have start and stop values set to 20 and 21, but has 1 and 2'.
	"self assertStart: 20 stop: 21 ofNode: result children second children first."
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testListMulti [
	super testListMulti.
	self
		assert: result
		equals:
			(PRUnorderedList
				withAll:
					{(PRListItem
						withAll:
							{(PRText content: '1').
							(PRUnorderedList
								withAll:
									{(PRListItem
										withAll:
											{(PRText content: '2').
											(PRUnorderedList with: (PRListItem with: (PRText content: '3')))}).
									(PRListItem with: (PRText content: '4')).
									(PRListItem with: (PRText content: '5')).
									(PRListItem with: (PRText content: '6'))})}).
					(PRListItem
						withAll:
							{(PRText content: '7').
							(PROrderedList with: (PRListItem with: (PROrderedList with: (PRListItem with: (PRText content: '8')))))})})
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testListWithComment [
	super testListWithComment.
	self
		assert: result
		equals:
			(PROrderedList
				withAll:
					{PRListItem
						withAll:
							{PRText content: 'Foo'.
							PRCommentedLine content: 'Comment'}.
					PRListItem with: (PRText content: 'Bar')})
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testMonospaceFormat [
	super testMonospaceFormat.
	self assert: result equals: (PRMonospaceFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testMonospaceFormatEmpty [
	super testMonospaceFormatEmpty.
	self assert: result equals: PRMonospaceFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testMonospaceFormatWithEscaped [
	super testMonospaceFormatWithEscaped.
	self assert: result equals: (PRMonospaceFormat with: (PRText content: '==')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testOrderedList [
	super testOrderedList.
	self assert: result equals: (PROrderedList with: (PRListItem with: (PRText content: 'Foo'))).
	self assertStart: 1 stop: 4.
	self assertStart: 1 stop: 4 ofNode: result children first.
	self assertStart: 2 stop: 4 ofNode: result children first children first.
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testOrderedListEmpty [
	super testOrderedListEmpty.
	self assert: result equals: (PROrderedList with: PRListItem new).
	self assertStart: 1 stop: 1.
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testOrderedListMulti [
	super testOrderedListMulti.
	self
		assert: result
		equals:
			(PROrderedList
				withAll:
					{(PRListItem
						withAll:
							{(PRText content: '1').
							(PROrderedList
								withAll:
									{(PRListItem
										withAll:
											{(PRText content: '2').
											(PROrderedList with: (PRListItem with: (PRText content: '3')))}).
									(PRListItem with: (PRText content: '4')).
									(PRListItem with: (PRText content: '5')).
									(PRListItem with: (PRText content: '6'))})}).
					(PRListItem
						withAll:
							{(PRText content: '7').
							(PROrderedList with: (PRListItem with: (PROrderedList with: (PRListItem with: (PRText content: '8')))))})}).
	self assertStart: 1 stop: 31.
	self assertStart: 1 stop: 24 ofNode: result children first.
	self assertStart: 2 stop: 2 ofNode: result children first children first.
	self flag: 'Because of `self listsParser parse: array fifth` in `PR2PillarParser>>#orderedListItem` (and similar methods) the sub-item possitions are not correct'.
	"self assertStart: 4 stop: 12 ofNode: result children first children second."

	self assertStart: 25 stop: 31 ofNode: result children second.
	self assertStart: 26 stop: 26 ofNode: result children second children first.
	
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testOrderedListWithSubList [
	super testOrderedListWithSubList.
	self
		assert: result
		equals:
			(PROrderedList
				with:
					(PRListItem
						withAll:
							{PRText content: 'Foo'.
							PROrderedList with: (PRListItem with: (PRText content: 'Bar'))}))
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testOrderedListWithTwoItems [
	super testOrderedListWithTwoItems.
	self
		assert: result
		equals:
			(PROrderedList
				withAll:
					{(PRListItem with: (PRText content: 'Foo')).
					(PRListItem with: (PRText content: 'Bar'))})
]

{ #category : #'tests - Paragraph' }
PRMicroDownParserTest >> testParagraph [
	super testParagraph.
	self assert: result equals: (PRParagraph new add: (PRText content: 'This is a text'))
]

{ #category : #'tests - Paragraph' }
PRMicroDownParserTest >> testParagraphWithFormat [
	super testParagraphWithFormat.
	self
		assert: result
		equals:
			(PRParagraph
				withAll:
					{(PRText content: 'Foo ').
					(PRBoldFormat with: (PRText content: 'Bar'))})
]

{ #category : #'tests - Parameter' }
PRMicroDownParserTest >> testParameterKeyUntilNewline [
	<expectedFailure>
	super testParameterKeyUntilNewline.
	self assert: result equals: (PRParameterKey named: #parameterName).
	self deny: result = (PRParameterKey named: #parameterName2).
	self assertStart: 1 stop: 13.
]

{ #category : #'tests - Parameter' }
PRMicroDownParserTest >> testParameterUntilNewline [
	<expectedFailure>
	super testParameterUntilNewline.
	self assert: result equals: (PRParameter 
		keyNode: (PRParameterKey named: #foo) 
		valueNode: (PRParameterValue value: 'bar')).
	self deny: result = (PRParameter 
		keyNode: (PRParameterKey named: #bar) 
		valueNode: (PRParameterValue value: 'foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 1 stop: 3 ofNode: result keyNode.
	self assertStart: 5 stop: 7 ofNode: result valueNode.
]

{ #category : #'tests - Parameter' }
PRMicroDownParserTest >> testParameterValueUntilNewline [
	<expectedFailure>
	super testParameterValueUntilNewline.
	self assert: result equals: (PRParameterValue value: #parameterValue).
	self deny: result = (PRParameterValue value: #parameterValue2).
	self assertStart: 2 stop: 15.
]

{ #category : #'tests - Parameter' }
PRMicroDownParserTest >> testParametersUntilNewline [
	<expectedFailure>
	super testParametersUntilNewline.
	self assert: result equals: (PRParameters withAll: { 
		(PRParameter 
			keyNode: (PRParameterKey named: #foo) 
			valueNode: (PRParameterValue value: 'bar')).
		(PRParameter 
			keyNode: (PRParameterKey named: #baz) 
			valueNode: (PRParameterValue value: 'true')) }).
	self deny: result = PRParameters new.
	self assertStart: 1 stop: 16.
	self assertStart: 1 stop: 7 ofNode: result children first.
	self assertStart: 9 stop: 16 ofNode: result children second.
	self assertStart: 1 stop: 3 ofNode: result children first keyNode.
	self assertStart: 5 stop: 7 ofNode: result children first valueNode.
	self assertStart: 9 stop: 11 ofNode: result children second keyNode.
	self assertStart: 13 stop: 16 ofNode: result children second valueNode.
]

{ #category : #'tests - Text' }
PRMicroDownParserTest >> testRaw [
	super testRaw.
	self assert: result equals: (PRRaw content: 'foo' type: 'mock' )
]

{ #category : #'tests - Text' }
PRMicroDownParserTest >> testRawEmpty [
	super testRawEmpty.
	self assert: result equals: (PRRaw content: '')
]

{ #category : #'tests - Text' }
PRMicroDownParserTest >> testRawMultiLines [
	super testRawMultiLines.
	self assert: result equals: (PRRaw content: 'foo
bar')
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testReference [
	super testReference. "'*foo>@bar*'"
	self
		assert: result
		equals:
			(PRInternalLink new
				add: (PRText content: 'foo');
				anchor: 'bar';
				yourself).
	self assertStart: 1 stop: 10.
	self assertStart: 2 stop: 4 ofNode: result children first.
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testReferenceFigure [
	super testReferenceFigure.
	self assert: result equals: 'file://foo.png'
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testReferenceFigureEscape [
	super testReferenceFigureEscape.
	self assert: result equals: 'file://foo+.png'
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testReferenceLink [
	super testReferenceLink.
	self assert: result equals: 'file://foo.png'
]

{ #category : #'tests - Reference' }
PRMicroDownParserTest >> testReferenceLinkEscape [
	super testReferenceLinkEscape.
	self assert: result equals: 'file://foo*.png'
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScript [
	super testScript.
	self assert: result equals: (PRCodeblock content: 'foo').
	self assertStart: 1 stop: 11.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameter [
	super testScriptParameter.
	self assert: result equals: #('value' 'foo')
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterEndsWithSpace [
	| script |
	super testScriptParameterTrueByDefault.
	script := PRCodeblock content: 'bar'.
	script parameters at: 'foo' put: true.
	self assert: result equals: script.
	self assertStart: 1 stop: 14.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterEscape [
	super testScriptParameterEscape.
	self assert: result equals: #('value=' 'foo')
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterTrueByDefault [
	| script |
	super testScriptParameterTrueByDefault.
	script := PRCodeblock content: 'bar'.
	script parameters at: 'foo' put: true.
	self assert: result equals: script.
	self assertStart: 1 stop: 14.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterValue [
	super testScriptParameterValue.
	self assert: result equals: 'foo'
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterWithFloat [
	| script |
	super testScriptParameterWithFloat.
	script := PRCodeblock content: 'bar'.
	script parameters at: 'ratio' put: 0.8.
	self assert: result equals: script.
	self assertStart: 1 stop: 20.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterWithLiteralArray [
	| script |
	super testScriptParameterWithLiteralArray.
	script := PRCodeblock content: 'bar'.
	script parameters at: 'foo' put: #(1 2 true).
	self assert: result equals: script.
	self assertStart: 1 stop: 26.
	self flag: 'the rest in not supported yet'.
	true ifTrue: [ ^ self ].
	self assertStart: 4 stop: 18 ofNode: result parameters.
	self assertStart: 4 stop: 18 ofNode: (result parameters nodeAt: #foo).
	self assertStart: 4 stop: 7 ofNode: (result parameters nodeAt: #foo) keyNode.
	self assertStart: 9 stop: 18 ofNode: (result parameters nodeAt: #foo) valueNode.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterWithNoValues [
	| script |
	super testScriptParameterWithNoValues.
	script := PRCodeblock content: 'bar'.
	script parameters at: 'foo' put: ''.
	self assert: result equals: script.
	self assertStart: 1 stop: 15.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterWithSpacesBeforeAndAfter [
	super testScriptParameterWithSpacesBeforeAndAfter.
	self
		assert: result
		equals:
			(OrderedDictionary new
				at: 'foo' put: true;
				at: 'bar' put: 2;
				yourself)
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameterWithoutValue [
	super testScriptParameterWithoutValue.
	self assert: result equals: #('foo'  nil)
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParameters [
	super testScriptParameters.
	self
		assert: result
		equals:
			(OrderedDictionary new
				at: 'value' put: 'foo';
				yourself)
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParametersEscape [
	super testScriptParametersEscape.
	self
		assert: result
		equals:
			(OrderedDictionary new
				at: 'value' put: 'foo|';
				at: 'bar' put: true;
				yourself)
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptParametersMultiple [
	super testScriptParametersMultiple.
	self
		assert: result
		equals:
			(OrderedDictionary new
				at: 'value' put: 'foo';
				at: 'bar' put: true;
				yourself)
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptTwoParametersNoValue [
	super testScriptTwoParametersNoValue.
	self
		assert: result
		equals:
			(OrderedDictionary new
				at: 'foo' put: true;
				at: 'bar' put: true;
				yourself)
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptWithLanguage [
	super testScriptWithLanguage.
	self
		assert: result
		equals:
			((PRCodeblock content: 'foo')
				language: PRSmalltalkScriptLanguage default;
				yourself).
	self assertStart: 1 stop: 29.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptWithNewLine [
	super testScriptWithNewLine.
	self assert: result equals: (PRCodeblock content: 'foo').
	self assertStart: 1 stop: 12.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptWithSpaceAtTheEnd [
	super testScriptWithSpaceAtTheEnd.
	self assert: result equals: (PRCodeblock content: 'foo').
	self assertStart: 1 stop: 13.
]

{ #category : #'tests - Script' }
PRMicroDownParserTest >> testScriptWithSpacedParameters [
	super testScriptWithSpacedParameters.
	self assert: result equals: 
					(PRCodeblock content: 'bla'
									 parameters: (OrderedDictionary new 
															at: 'foo' put: true;
															at: 'bar' put: 2;
															yourself)).
	self assertStart: 1 stop: 33.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testStrikethroughFormat [
	super testStrikethroughFormat.
	self assert: result equals: (PRStrikethroughFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testStrikethroughFormatEmpty [
	super testStrikethroughFormatEmpty.
	self assert: result equals: PRStrikethroughFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testStrikethroughFormatWithEscaped [
	super testStrikethroughFormatWithEscaped.
	self assert: result equals: (PRStrikethroughFormat with: (PRText content: '--')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testSubscriptFormat [
	super testSubscriptFormat.
	self assert: result equals: (PRSubscriptFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testSubscriptFormatEmpty [
	super testSubscriptFormatEmpty.
	self assert: result equals: PRSubscriptFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testSubscriptFormatWithEscaped [
	super testSubscriptFormatWithEscaped.
	self assert: result equals: (PRSubscriptFormat with: (PRText content: '@@')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testSuperscriptFormat [
	super testSuperscriptFormat.
	self assert: result equals: (PRSuperscriptFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testSuperscriptFormatEmpty [
	super testSuperscriptFormatEmpty.
	self assert: result equals: PRSuperscriptFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testSuperscriptFormatWithEscaped [
	super testSuperscriptFormatWithEscaped.
	self assert: result equals: (PRSuperscriptFormat with: (PRText content: '^^')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTable [
	super testTable.
	self
		assert: result
		equals:
			(PRTable new
				add:
						(PRTableRow new
								add: (PRTableCell align: nil heading: true withAll: {PRText content: 'Foo'});
								add: (PRTableCell align: nil heading: true withAll: {PRText content: 'Bar'});
								yourself);
				add:
						(PRTableRow new
								add: (PRTableCell align: nil heading: false withAll: {PRText content: 'Foo2'});
								add: (PRTableCell align: nil heading: false withAll: {PRText content: 'Bar2'});
								yourself);
				yourself)
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableAlignMarkup [
	super testTableAlignMarkup.
	self assert: result equals: #right
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCell [
	super testTableCell.
	self assert: result equals: (PRTableCell align: nil heading: false withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellAreTrimed [
	super testTableCellAreTrimed.
	self assert: result equals: (PRTableCell align: nil heading: false withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellCenter [
	super testTableCellCenter.
	self assert: result equals: (PRTableCell align: #center heading: false withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeader [
	super testTableCellHeader.
	self assert: result equals: (PRTableCell align: nil heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeaderCenter [
	super testTableCellHeaderCenter.
	self assert: result equals: (PRTableCell align: #center heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeaderCenter2 [
	super testTableCellHeaderCenter2.
	self assert: result equals: (PRTableCell align: #center heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeaderLeft [
	super testTableCellHeaderLeft.
	self assert: result equals: (PRTableCell align: #left heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeaderLeft2 [
	super testTableCellHeaderLeft2.
	self assert: result equals: (PRTableCell align: #left heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeaderRight [
	super testTableCellHeaderRight.
	self assert: result equals: (PRTableCell align: #right heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellHeaderRight2 [
	super testTableCellHeaderRight2.
	self assert: result equals: (PRTableCell align: #right heading: true withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellLeft [
	super testTableCellLeft.
	self assert: result equals: (PRTableCell align: #left heading: false withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellRight [
	super testTableCellRight.
	self assert: result equals: (PRTableCell align: #right heading: false withAll: {PRText content: 'Foo'})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCellWithFormat [
	super testTableCellWithFormat.
	self
		assert: result
		equals: (PRTableCell align: nil heading: false withAll: {PRItalicFormat with: (PRText content: 'Foo')})
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableCenterMarkup [
	super testTableCenterMarkup.
	self assert: result equals: #center
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableHeadingMarkup [
	super testTableHeadingMarkup.
	self assert: result equals: true
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableLeftMarkup [
	super testTableLeftMarkup.
	self assert: result equals: #left
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableMarkups [
	super testTableMarkups.
	self
		assert: result
		equals:
			{nil.
			false}
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableMarkupsCenter [
	super testTableMarkupsCenter.
	self
		assert: result
		equals:
			{#center.
			false}
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableMarkupsHeading [
	super testTableMarkupsHeading.
	self
		assert: result
		equals:
			{nil.
			true}
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableMarkupsHeadingAndCenter [
	super testTableMarkupsHeadingAndCenter.
	self
		assert: result
		equals:
			{#center.
			true}
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableMarkupsHeadingAndCenter2 [
	super testTableMarkupsHeadingAndCenter2.
	self
		assert: result
		equals:
			{#center.
			true}
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableRightMarkup [
	super testTableRightMarkup.
	self assert: result equals: #right
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableRow [
	super testTableRow.
	self
		assert: result
		equals:
			(PRTableRow new
				add: (PRTableCell align: nil heading: false withAll: {PRText content: 'Foo'});
				add: (PRTableCell align: nil heading: false withAll: {PRText content: 'Bar'});
				yourself)
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableRowWithEmptyCells [
	super testTableRowWithEmptyCells.
	self
		assert: result
		equals:
			(PRTableRow new
				add: PRTableCell new;
				add: PRTableCell new;
				yourself)
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableRowWithHeading [
	super testTableRowWithHeading.
	self
		assert: result
		equals:
			(PRTableRow new
				add: (PRTableCell align: nil heading: true withAll: {PRText content: 'Foo'});
				add: (PRTableCell align: nil heading: true withAll: {PRText content: 'Bar'});
				yourself)
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableWithComment [
	super testTableWithComment.
	self flag: #todo	"See super."
	"self
		assert: result
		equals:
			(PRTable
				withAll:
					{PRTableRow
						with:
							(PRTableCell
								align: nil
								heading: false
								withAll:
									{PRText content: 'Foo'.
									PRCommentedLine content: 'Comment'}).
					PRTableRow with: (PRTableCell align: nil heading: false withAll: {PRText content: 'Bar'})})"
]

{ #category : #'tests - Table' }
PRMicroDownParserTest >> testTableWithNewLine [
	super testTableWithNewLine.
	self
		assert: result
		equals:
			(PRTable new
				add:
						(PRTableRow new
								add: (PRTableCell align: nil heading: true withAll: {PRText content: 'Foo'});
								add: (PRTableCell align: nil heading: true withAll: {PRText content: 'Bar'});
								yourself);
				add:
						(PRTableRow new
								add: (PRTableCell align: nil heading: false withAll: {PRText content: 'Foo2'});
								add: (PRTableCell align: nil heading: false withAll: {PRText content: 'Bar2'});
								yourself);
				yourself)
]

{ #category : #'tests - Anchor' }
PRMicroDownParserTest >> testText [
	super testText.
	self assert: result equals: (PRText content: 'Foo').
	self assertStart: 1 stop: 3.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testUndefinedAnnotation [
	self 
		should: [ super testUndefinedAnnotation ]
		raise: PRSyntaxError.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testUndefinedAnnotationAsNode [
	PRValidation beSilentDuring: [ super testUndefinedAnnotation ].
	self
		assert: result
		equals: ((PRUndefinedAnnotation withParameters: PRParameters new)
			tag: #undefinedAnnotation).
	self assertStart: 1 stop: 23.
	self assert: result hadAllKeys.
	self assert: result isValid.
	self assert: result tag equals: #undefinedAnnotation.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testUndefinedAnnotationWithParameters [
	self 
		should: [ super testUndefinedAnnotationWithParameters ]
		raise: PRSyntaxError.
]

{ #category : #'tests - Annotation' }
PRMicroDownParserTest >> testUndefinedAnnotationWithParametersAsNode [
	PRValidation beSilentDuring: [ 
		super testUndefinedAnnotationWithParameters ].
	self
		assert: result
		equals: ((PRUndefinedAnnotation withParameters: (
			PRParameters withAll: { 
				(PRParameter 
					keyNode: (PRParameterKey named: #param1) 
					valueNode: (PRParameterValue value: 'a')).
				(PRParameter 
					keyNode: (PRParameterKey named: #param2) 
					valueNode: (PRParameterValue value: 'b')) }))
			tag: #undefinedAnnotation).
	self assert: result children size equals: 1.
	self assertStart: 1 stop: 41.
	self assert: result hadAllKeys.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testUnderlineFormat [
	super testUnderlineFormat.
	self assert: result equals: (PRUnderlineFormat with: (PRText content: 'Foo')).
	self assertStart: 1 stop: 7.
	self assertStart: 3 stop: 5 ofNode: result children first.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testUnderlineFormatEmpty [
	super testUnderlineFormatEmpty.
	self assert: result equals: PRUnderlineFormat new.
	self assertStart: 1 stop: 4.
]

{ #category : #'tests - Format' }
PRMicroDownParserTest >> testUnderlineFormatWithEscaped [
	super testUnderlineFormatWithEscaped.
	self assert: result equals: (PRUnderlineFormat with: (PRText content: '__')).
	self assertStart: 1 stop: 8.
	self assertStart: 3 stop: 6 ofNode: result children first.
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testUnorderedList [
	super testUnorderedList.
	self
		assert: result
		equals: (PRUnorderedList with: (PRListItem with: (PRText content: 'Foo'))).
	self assertStart: 1 stop: 4.
	self assertStart: 1 stop: 4 ofNode: result children first.
	self assertStart: 2 stop: 4 ofNode: result children first children first.
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testUnorderedListEmpty [
	super testUnorderedListEmpty.
	self assert: result equals: (PRUnorderedList with: PRListItem new).
	self assertStart: 1 stop: 1.
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testUnorderedListMulti [
	super testUnorderedListMulti.
	self
		assert: result
		equals:
			(PRUnorderedList
				withAll:
					{(PRListItem
						withAll:
							{(PRText content: '1').
							(PRUnorderedList
								withAll:
									{(PRListItem
										withAll:
											{(PRText content: '2').
											(PRUnorderedList with: (PRListItem with: (PRText content: '3')))}).
									(PRListItem with: (PRText content: '4')).
									(PRListItem with: (PRText content: '5')).
									(PRListItem with: (PRText content: '6'))})}).
					(PRListItem
						withAll:
							{(PRText content: '7').
							(PRUnorderedList
								with:
									(PRListItem with: (PRUnorderedList with: (PRListItem with: (PRText content: '8')))))})})
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testUnorderedListWithSubList [
	super testUnorderedListWithSubList.
	self
		assert: result
		equals:
			(PRUnorderedList
				with:
					(PRListItem
						withAll:
							{(PRText content: 'Foo').
							(PRUnorderedList with: (PRListItem with: (PRText content: 'Bar')))}))
]

{ #category : #'tests - List' }
PRMicroDownParserTest >> testUnorderedListWithTwoItems [
	super testUnorderedListWithTwoItems.
	self
		assert: result
		equals:
			(PRUnorderedList
				withAll:
					{(PRListItem with: (PRText content: 'Foo')).
					(PRListItem with: (PRText content: 'Bar'))})
]
