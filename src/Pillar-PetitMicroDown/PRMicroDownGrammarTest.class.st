Class {
	#name : #PRMicroDownGrammarTest,
	#superclass : #PP2CompositeNodeTest,
	#instVars : [
		'factory'
	],
	#category : #'Pillar-PetitMicroDown'
}

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> codeBlockSample [
	^ factory codeBlockSample 
]

{ #category : #accessing }
PRMicroDownGrammarTest >> factory [

	^ factory 
]

{ #category : #accessing }
PRMicroDownGrammarTest >> factory: aFactory [

	factory := aFactory
]

{ #category : #accessing }
PRMicroDownGrammarTest >> parse: aString rule: aSymbol [
	
	"PillarSnippetFactory compile: (testSelector allButFirst: 4) uncapitalized , 'Sample', String cr, String tab, '^ ''', aString , '''' classified: 'sample'."
	
	"| method newSelector astCopy |
	method := thisContext sender method.
	newSelector := (method selector allButFirst: 4) uncapitalized , 'Sample'.
	astCopy := method ast copy.
	astCopy statements first arguments first
		replaceWith: (RBMessageNode 
			receiver: (RBVariableNode named: 'factory')
			selector: newSelector asSymbol).
	self class compile: astCopy formattedCode."
	^ super parse: aString rule: aSymbol
]

{ #category : #accessing }
PRMicroDownGrammarTest >> parserClass [
	^ PRMicroDownGrammar 
]

{ #category : #running }
PRMicroDownGrammarTest >> setUp [ 
	super setUp.
	self factory: MicroDownSnippetFactory new.
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testAliasFigure [
	self parse: factory aliasFigureSample rule: #figureAlias
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testAliasFigureEscape [
	self parse: factory aliasFigureEscapeSample rule: #figureAlias
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testAliasLink [
	self parse: factory aliasLinkSample rule: #linkAlias
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testAliasLinkEscape [
	self parse: factory aliasLinkEscapeSample rule: #linkAlias
]

{ #category : #'tests - Anchor' }
PRMicroDownGrammarTest >> testAnchor [
	self parse: factory anchorSample rule: #anchor
]

{ #category : #'tests - Anchor' }
PRMicroDownGrammarTest >> testAnchorAreTrimed [
	self parse: factory anchorAreTrimedSample rule: #anchor
]

{ #category : #'tests - Anchor' }
PRMicroDownGrammarTest >> testAnchorWithNewLine [
	self parse: factory anchorWithNewLineSample rule: #elementWithNewline
]

{ #category : #'tests - Anchor' }
PRMicroDownGrammarTest >> testAnchorWithSpaceInside [
	self parse: factory anchorWithSpaceInsideSample rule: #anchor
]

{ #category : #'tests - Paragraph' }
PRMicroDownGrammarTest >> testAnnotatedParagraph [
	self
		parse: factory annotatedParagraphSample
		rule: #annotatedParagraph
]

{ #category : #'tests - Paragraph' }
PRMicroDownGrammarTest >> testAnnotatedParagraphEmpty [
	self
		parse: factory annotatedParagraphEmptySample
		rule: #annotatedParagraph
]

{ #category : #'tests - Paragraph' }
PRMicroDownGrammarTest >> testAnnotatedParagraphEmptyWithNewLine [
	self
		parse: factory annotatedParagraphEmptyWithNewLineSample
		rule: #elementWithNewline
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotation [
	self parse: factory annotationSample rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationAreTrimedAtTheRight [
	self
		parse: factory annotationAreTrimedAtTheRightSample
		rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationOnlyWithParameterName [
	self
		parse: factory annotationOnlyWithParameterNameSample
		rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationParameter [
	self
		parse: factory annotationParameterSample
		rule: #parameterUntilEndAnnotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationParameters [
	self
		parse: factory annotationParametersSample
		rule: #annotationParameters
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationParameters2 [
	self
		parse: factory annotationParameters2Sample
		rule: #parametersUntilEndAnnotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationTag [
	self parse: factory annotationTagSample rule: #annotationTag
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationWithUnknownKey [
	self parse: factory annotationWithUnknownKeySample rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationWithoutFirstParameterNameAndDefaultValues [
	self
		parse: factory annotationWithoutFirstParameterNameAndDefaultValuesSample
		rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationWithoutParameterName [
	self
		parse: factory annotationWithoutParameterNameSample
		rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testAnnotationWithoutParameters [
	self
		parse: factory annotationWithoutParametersSample
		rule: #annotation
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testBoldFormat [
	self parse: factory boldFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testBoldFormatEmpty [
	self parse: factory boldFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testBoldFormatWithEscaped [
	self parse: factory boldFormatWithEscapedSample rule: #format
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testCommentedLine [
	self parse: factory commentedLineSample rule: #commentedLine
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testCommentedLineWithNewline [
	self
		parse: factory commentedLineWithNewlineSample
		rule: #elementWithNewline
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testDefinitionList [
	self parse: factory definitionListSample rule: #definitionList
]

{ #category : #'tests - Paragraph' }
PRMicroDownGrammarTest >> testEmptyParagraph [
	self parse: factory emptyParagraphSample rule: #emptyParagraph
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testEscapedCharacter [
	self parse: factory escapedCharacterSample rule: #escapedCharacter
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testFigureFollowedByLinkWithAlias [
	self
		parse: factory figureFollowedByLinkWithAliasSample
		rule: #paragraph
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testFormatWithLink [
	self parse: factory formatWithLinkSample rule: #format
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderEmpty [
	self parse: factory headerEmptySample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderLevel1 [
	self parse: factory headerLevel1Sample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderLevel2 [
	self parse: factory headerLevel2Sample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderLevel3 [
	self parse: factory headerLevel3Sample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderLevel4 [
	self parse: factory headerLevel4Sample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderLevel5 [
	self parse: factory headerLevel5Sample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderLevel6 [
	self parse: factory headerLevel6Sample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderWithFormat [
	self parse: factory headerWithFormatSample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderWithFormatAndText [
	self parse: factory headerWithFormatAndTextSample rule: #header
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderWithNewLine [
	self parse: factory headerWithNewLineSample rule: #elementWithNewline
]

{ #category : #'tests - Header' }
PRMicroDownGrammarTest >> testHeaderWithWithLink [
	self parse: factory headerWithWithLinkSample rule: #header
]

{ #category : #'tests - HorizontalRule' }
PRMicroDownGrammarTest >> testHorizontalRule [
	self parse: factory horizontalRuleSample rule: #horizontalRule
]

{ #category : #'tests - HorizontalRule' }
PRMicroDownGrammarTest >> testHorizontalRuleFollowByNewLine [
	self
		parse: factory horizontalRuleFollowByNewLineSample
		rule: #elementWithNewline
]

{ #category : #'tests - HorizontalRule' }
PRMicroDownGrammarTest >> testHorizontalRuleTrimRight [
	self
		parse: factory horizontalRuleTrimRightSample
		rule: #horizontalRule
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testItalicFormat [
	self parse: factory italicFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testItalicFormatEmpty [
	self parse: factory italicFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testItalicFormatWithEscaped [
	self parse: factory italicFormatWithEscapedSample rule: #format
]

{ #category : #'tests - Document' }
PRMicroDownGrammarTest >> testLineEnd [
	self parse: factory lineEndSample rule: #lineEnd
]

{ #category : #'tests - Document' }
PRMicroDownGrammarTest >> testLineEndwithNewline [
	self parse: factory lineEndwithNewlineSample rule: #lineEnd
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testLinkFollowedByFigureWithAlias [
	self
		parse: factory linkFollowedByFigureWithAliasSample
		rule: #paragraph
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testListMulti [
	self parse: factory listMultiSample rule: #list
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testListWithComment [
	self parse: factory listWithCommentSample rule: #list
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testMonospaceFormat [
	self parse: factory monospaceFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testMonospaceFormatEmpty [
	self parse: factory monospaceFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testMonospaceFormatWithEscaped [
	self parse: factory monospaceFormatWithEscapedSample rule: #format
]

{ #category : #'tests - Document' }
PRMicroDownGrammarTest >> testNewline [
	self parse: factory newlineSample rule: #newline
]

{ #category : #'tests - Document' }
PRMicroDownGrammarTest >> testNewlineCR [
	self parse: factory newlineCRSample rule: #newline
]

{ #category : #'tests - Document' }
PRMicroDownGrammarTest >> testNewlineCRLF [
	self parse: factory newlineCRLFSample rule: #newline
]

{ #category : #'tests - Document' }
PRMicroDownGrammarTest >> testNewlineLF [
	self parse: factory newlineLFSample rule: #newline
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testOrderedList [
	self parse: factory orderedListSample rule: #orderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testOrderedListEmpty [
	self parse: factory orderedListEmptySample rule: #orderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testOrderedListMulti [
	self parse: factory orderedListMultiSample rule: #orderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testOrderedListWithSubList [
	self parse: factory orderedListWithSubListSample rule: #orderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testOrderedListWithTwoItems [
	self parse: factory orderedListWithTwoItemsSample rule: #orderedList
]

{ #category : #'tests - Paragraph' }
PRMicroDownGrammarTest >> testParagraph [
	self parse: factory paragraphSample rule: #paragraph
]

{ #category : #'tests - Paragraph' }
PRMicroDownGrammarTest >> testParagraphWithFormat [
	self parse: factory paragraphWithFormatSample rule: #paragraph
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testParameterFigure [
	self
		parse: factory parameterFigureSample
		rule: #parameterUntilEndFigure
]

{ #category : #'tests - Parameter' }
PRMicroDownGrammarTest >> testParameterKeyUntilNewline [
	self
		parse: factory parameterKeyUntilNewlineSample
		rule: #parameterKeyUntilNewline
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testParameterLink [
	self parse: factory parameterLinkSample rule: #parameterUntilEndLink
]

{ #category : #'tests - Parameter' }
PRMicroDownGrammarTest >> testParameterUntilNewline [
	self
		parse: factory parameterUntilNewlineSample
		rule: #parameterUntilNewline
]

{ #category : #'tests - Parameter' }
PRMicroDownGrammarTest >> testParameterValueUntilNewline [
	self
		parse: factory parameterValueUntilNewlineSample
		rule: #parameterValueUntilNewline
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testParametersFigure [
	self parse: factory parametersFigureSample rule: #parametersFigure
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testParametersLink [
	self parse: factory parametersLinkSample rule: #parametersLink
]

{ #category : #'tests - Parameter' }
PRMicroDownGrammarTest >> testParametersUntilNewline [
	self
		parse: factory parametersUntilNewlineSample
		rule: #parametersUntilNewline
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedLine [
	self parse: factory preformatedLineSample rule: #preformatedLine
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedText [
	self parse: factory preformatedTextSample rule: #preformatedText
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedTextEmpty [
	self parse: factory preformatedTextEmptySample rule: #preformatedText
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedTextWithMultiLines [
	self
		parse: factory preformatedTextWithMultiLinesSample
		rule: #preformatedText
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedTextWithNewline [
	self
		parse: factory preformatedTextWithNewlineSample
		rule: #preformatedText
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedTextWithSpaces [
	self
		parse: factory preformatedTextWithSpacesSample
		rule: #preformatedText
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testPreformatedTextWithTab [
	self
		parse: factory preformatedTextWithTabSample
		rule: #preformatedText
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testRaw [
	self parse: factory rawSample rule: #raw
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testRawEmpty [
	self parse: factory rawEmptySample rule: #raw
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testRawHTML [
	self parse: factory rawHTMLSample rule: #raw
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testRawInvalid [
	self parse: factory rawInvalidSample rule: #raw
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testRawMultiLines [
	self parse: factory rawMultiLinesSample rule: #raw
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testReference [
	self parse: factory referenceSample rule: #reference
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testReferenceFigure [
	self parse: factory referenceFigureSample rule: #referenceFigure
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testReferenceFigureEscape [
	self
		parse: factory referenceFigureEscapeSample
		rule: #referenceFigure
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testReferenceLink [
	self parse: factory referenceLinkSample rule: #referenceLink
]

{ #category : #'tests - Reference' }
PRMicroDownGrammarTest >> testReferenceLinkEscape [
	self parse: factory referenceLinkEscapeSample rule: #referenceLink
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScript [
	self parse: factory scriptSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameter [
	self
		parse: factory scriptParameterSample
		rule: #parameterUntilNewline
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterEscape [
	self
		parse: factory scriptParameterEscapeSample
		rule: #parameterUntilNewline
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterTrueByDefault [
	self parse: factory scriptParameterTrueByDefaultSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterValue [
	self
		parse: factory scriptParameterValueSample
		rule: #parameterValueUntilNewline
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterWithFloat [
	self parse: factory scriptParameterWithFloatSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterWithLiteralArray [
	self
		parse: factory scriptParameterWithLiteralArraySample
		rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterWithNoValues [
	self parse: factory scriptParameterWithNoValuesSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterWithSpacesBeforeAndAfter [
	self
		parse: factory scriptParameterWithSpacesBeforeAndAfterSample
		rule: #scriptParameters
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameterWithoutValue [
	self
		parse: factory scriptParameterWithoutValueSample
		rule: #parameterUntilNewline
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParameters [
	self parse: factory scriptParametersSample rule: #scriptParameters
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParametersEscape [
	self
		parse: factory scriptParametersEscapeSample
		rule: #scriptParameters
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptParametersMultiple [
	self
		parse: factory scriptParametersMultipleSample
		rule: #scriptParameters
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptTwoParametersNoValue [
	self
		parse: factory scriptTwoParametersNoValueSample
		rule: #scriptParameters
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptWithLanguage [
	self parse: factory scriptWithLanguageSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptWithNewLine [
	self parse: factory scriptWithNewLineSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptWithSpaceAtTheEnd [
	self parse: factory scriptWithSpaceAtTheEndSample rule: #script
]

{ #category : #'tests - Script' }
PRMicroDownGrammarTest >> testScriptWithSpacedParameters [
	self parse: factory scriptWithSpacedParametersSample rule: #script
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testStrikethroughFormat [
	self parse: factory strikethroughFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testStrikethroughFormatEmpty [
	self parse: factory strikethroughFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testStrikethroughFormatWithEscaped [
	self
		parse: factory strikethroughFormatWithEscapedSample
		rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testSubscriptFormat [
	self parse: factory subscriptFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testSubscriptFormatEmpty [
	self parse: factory subscriptFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testSubscriptFormatWithEscaped [
	self parse: factory subscriptFormatWithEscapedSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testSuperscriptFormat [
	self parse: factory superscriptFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testSuperscriptFormatEmpty [
	self parse: factory superscriptFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testSuperscriptFormatWithEscaped [
	self parse: factory superscriptFormatWithEscapedSample rule: #format
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTable [
	self parse: factory tableSample rule: #table
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableAlignMarkup [
	self parse: factory tableAlignMarkupSample rule: #tableAlignMarkup
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCell [
	self parse: factory tableCellSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellAreTrimed [
	self parse: factory tableCellAreTrimedSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellCenter [
	self parse: factory tableCellCenterSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeader [
	self parse: factory tableCellHeaderSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeaderCenter [
	self parse: factory tableCellHeaderCenterSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeaderCenter2 [
	self parse: factory tableCellHeaderCenter2Sample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeaderLeft [
	self parse: factory tableCellHeaderLeftSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeaderLeft2 [
	self parse: factory tableCellHeaderLeft2Sample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeaderRight [
	self parse: factory tableCellHeaderRightSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellHeaderRight2 [
	self parse: factory tableCellHeaderRight2Sample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellLeft [
	self parse: factory tableCellLeftSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellRight [
	self parse: factory tableCellRightSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCellWithFormat [
	self parse: factory tableCellWithFormatSample rule: #tableCell
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableCenterMarkup [
	self parse: factory tableCenterMarkupSample rule: #tableCenterMarkup
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableHeadingMarkup [
	self
		parse: factory tableHeadingMarkupSample
		rule: #tableHeadingMarkup
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableLeftMarkup [
	self parse: factory tableLeftMarkupSample rule: #tableLeftMarkup
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableMarkups [
	self parse: factory tableMarkupsSample rule: #tableMarkups
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableMarkupsCenter [
	self parse: factory tableMarkupsCenterSample rule: #tableMarkups
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableMarkupsHeading [
	self parse: factory tableMarkupsHeadingSample rule: #tableMarkups
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableMarkupsHeadingAndCenter [
	self
		parse: factory tableMarkupsHeadingAndCenterSample
		rule: #tableMarkups
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableMarkupsHeadingAndCenter2 [
	self
		parse: factory tableMarkupsHeadingAndCenter2Sample
		rule: #tableMarkups
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableRightMarkup [
	self parse: factory tableRightMarkupSample rule: #tableRightMarkup
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableRow [
	self parse: factory tableRowSample rule: #tableRow
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableRowWithEmptyCells [
	self parse: factory tableRowWithEmptyCellsSample rule: #tableRow
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableRowWithHeading [
	self parse: factory tableRowWithHeadingSample rule: #tableRow
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableWithComment [
	self flag: #todo	"We need to add that later."
	"self
		parse:
			'|Foo
%Comment
|Bar'
		rule: #table"
]

{ #category : #'tests - Table' }
PRMicroDownGrammarTest >> testTableWithNewLine [
	self parse: factory tableWithNewLineSample rule: #table
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testText [
	self parse: factory textSample rule: #text
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testTextWithEscapeAtBeginning [
	self parse: factory textWithEscapeAtBeginningSample rule: #text
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testTextWithEscapeInTheMiddle [
	self parse: factory textWithEscapeInTheMiddleSample rule: #text
]

{ #category : #'tests - Text' }
PRMicroDownGrammarTest >> testTextWithMultiEscape [
	self parse: factory textWithMultiEscapeSample rule: #text
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testUndefinedAnnotation [
	self parse: factory undefinedAnnotationSample rule: #annotation
]

{ #category : #'tests - Annotation' }
PRMicroDownGrammarTest >> testUndefinedAnnotationWithParameters [
	self
		parse: factory undefinedAnnotationWithParametersSample
		rule: #annotation
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testUnderlineFormat [
	self parse: factory underlineFormatSample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testUnderlineFormatEmpty [
	self parse: factory underlineFormatEmptySample rule: #format
]

{ #category : #'tests - Format' }
PRMicroDownGrammarTest >> testUnderlineFormatWithEscaped [
	self parse: factory underlineFormatWithEscapedSample rule: #format
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testUnorderedList [
	self parse: factory unorderedListSample rule: #unorderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testUnorderedListEmpty [
	self parse: factory unorderedListEmptySample rule: #unorderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testUnorderedListMulti [
	self parse: factory unorderedListMultiSample rule: #unorderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testUnorderedListWithSubList [
	self
		parse: factory unorderedListWithSubListSample
		rule: #unorderedList
]

{ #category : #'tests - List' }
PRMicroDownGrammarTest >> testUnorderedListWithTwoItems [
	self
		parse: factory unorderedListWithTwoItemsSample
		rule: #unorderedList
]
