Class {
	#name : #MicroDownSnippetFactory,
	#superclass : #Object,
	#category : #'Pillar-PetitMicroDown'
}

{ #category : #unchanged }
MicroDownSnippetFactory >> aliasFigureEscapeSample [
	^ 'Alias\>>'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> aliasFigureSample [
	^ 'Alias>'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> aliasLinkEscapeSample [
	^ 'Alias\>>'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> aliasLinkSample [
	^ 'Alias>'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> anchorAreTrimedSample [
	^ '@  test  '
]

{ #category : #unchanged }
MicroDownSnippetFactory >> anchorSample [
	^ '@test'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> anchorWithNewLineSample [
	^ '@foo
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> anchorWithSpaceInsideSample [
	^ '@foo bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotatedParagraphEmptySample [
	^ '@@foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotatedParagraphEmptyWithNewLineSample [
	^ '@@foo
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotatedParagraphSample [
	^ '@@foo Bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationAreTrimedAtTheRightSample [
	^ '${inputFile:path=Foo}$  '
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationOnlyWithParameterNameSample [
	^ '${inputFile:path}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationParameterSample [
	^ 'value=foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationParameters2Sample [
	^ ':foo=bar|timo=leon'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationParametersSample [
	^ ':foo=bar|timo=leon'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationSample [
	^ '${inputFile:path=Foo}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationTagSample [
	^ 'mock'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationWithUnknownKeyAsNodeSample [
	^ '${inputFile:path=Foo|unknownKey=Bar}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationWithUnknownKeySample [
	^ '${inputFile:path=Foo|unknownKey=Bar}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationWithoutFirstParameterNameAndDefaultValuesSample [
	^ '${docList:Foo|limit|sort}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationWithoutParameterNameSample [
	^ '${inputFile:Foo}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationWithoutParametersAsNodeSample [
	^ '${inputFile}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> annotationWithoutParametersSample [
	^ '${inputFile}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> boldFormatEmptySample [
	^ '""""'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> boldFormatSample [
	^ '""Foo""'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> boldFormatWithEscapedSample [
	^ '""\"\"""'
]

{ #category : #'tests - Script' }
MicroDownSnippetFactory >> codeBlockSample [
	^ '[[[
foo
]]]'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> commentedLineSample [
	^ '%some text'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> commentedLineWithNewlineSample [
	^ '%some text
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> definitionListSample [
	^ ';Foo
:Bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> emptyParagraphSample [
	^ '
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> escapedCharacterSample [

	^  '\*' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> figureFollowedByLinkWithAliasSample [
	^ '+file://TeapotWelcome.png+*Go>http://localhost*'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> formatWithLinkSample [
	^ '""*foo*""'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerEmptySample [
	^ '#'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerLevel1Sample [
	^ '#Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerLevel2Sample [
	^ '##Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerLevel3Sample [
	^ '###Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerLevel4Sample [
	^ '####Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerLevel5Sample [
	^ '#####Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerLevel6Sample [
	^ '######Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> headerWithFormatAndTextSample [
	^ '#""Foo"" bar'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerWithFormatSample [
	^ '#""Foo""'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerWithNewLineSample [
	^ '#Foo
'
]

{ #category : #changed }
MicroDownSnippetFactory >> headerWithWithLinkSample [
	^ '# Foo *Link*'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> horizontalRuleFollowByNewLineSample [
	^ '_
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> horizontalRuleSample [
	^ '_'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> horizontalRuleTrimRightSample [
	^ '_  '
]

{ #category : #unchanged }
MicroDownSnippetFactory >> italicFormatEmptySample [
	^ '''''''''' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> italicFormatSample [
	^ '''''Foo''''' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> italicFormatWithEscapedSample [
	^   '''''\''\''''''' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> lineEndSample [

	^  ''
]

{ #category : #unchanged }
MicroDownSnippetFactory >> lineEndwithNewlineSample [

	^ String lf
]

{ #category : #unchanged }
MicroDownSnippetFactory >> linkFollowedByFigureWithAliasSample [
	^ '*http://localhost*+Go>file://TeapotWelcome.png+'
]

{ #category : #changed }
MicroDownSnippetFactory >> listMultiSample [
	^ '*1
**2
***3
**4
**5
**6
*7
*1 8'
]

{ #category : #changed }
MicroDownSnippetFactory >> listWithCommentSample [
	^ '*Foo
%Comment
*Bar'
]

{ #category : #changed }
MicroDownSnippetFactory >> monospaceFormatEmptySample [
	^ '``'
]

{ #category : #changed }
MicroDownSnippetFactory >> monospaceFormatSample [
	^ '`Foo`'
]

{ #category : #changed }
MicroDownSnippetFactory >> monospaceFormatWithEscapedSample [
	^ '`\=\=`'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> newlineCRLFSample [

	^ String crlf
]

{ #category : #unchanged }
MicroDownSnippetFactory >> newlineCRSample [

	^ String cr
]

{ #category : #unchanged }
MicroDownSnippetFactory >> newlineLFSample [

	^ String lf
]

{ #category : #unchanged }
MicroDownSnippetFactory >> newlineSample [

	^ Smalltalk os lineEnding
]

{ #category : #changed }
MicroDownSnippetFactory >> orderedListEmptySample [
	^ '1'
]

{ #category : #changed }
MicroDownSnippetFactory >> orderedListMultiSample [
	^ '#1
##2
###3
##4
##5
##6
#7
###8'
]

{ #category : #changed }
MicroDownSnippetFactory >> orderedListSample [
	^ '1Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> orderedListWithSubListSample [
	^ '1Foo
2Bar'
]

{ #category : #changed }
MicroDownSnippetFactory >> orderedListWithTwoItemsSample [
	^ '1Foo
1Bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> paragraphSample [
	^ 'This is a text'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> paragraphWithFormatSample [
	^ 'Foo ""Bar""'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parameterFigureSample [
	^'value=foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parameterKeyUntilNewlineSample [
	^ 'parameterName'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parameterLinkSample [
	^  'value=foo' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parameterUntilNewlineSample [
	^ 'foo=bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parameterValueUntilNewlineSample [
	^ '=parameterValue'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parametersFigureSample [
	^ '|foo=bar|timo=leon' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parametersLinkSample [
	^ '|foo=bar|timo=leon'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> parametersUntilNewlineSample [
	^ 'foo=bar|baz=true'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedLineSample [
	^ '= Foo' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedTextEmptySample [
	^  '= ' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedTextSample [
	^  '= Foo' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedTextWithMultiLinesSample [
	^ '= Foo
= Bar'
		
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedTextWithNewlineSample [
^ '= Foo
' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedTextWithSpacesSample [
	^ '=    Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> preformatedTextWithTabSample [
	^ '= 	Foo' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> rawEmptySample [
	^ '{{{}}}'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> rawHTMLSample [
	^ '{{{html:foo}}}' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> rawInvalidSample [
	^  '{{{invalid:foo}}}'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> rawMultiLinesSample [
	^ '{{{foo
bar}}}'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> rawSample [
	^ '{{{mock:foo}}}'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> referenceFigureEscapeSample [
	^ 'file://foo\+.png'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> referenceFigureSample [
	^ 'file://foo.png'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> referenceLinkEscapeSample [
	^ 'file://foo\*.png'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> referenceLinkSample [
	^ 'file://foo.png'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> referenceSample [
	^ '*foo>@bar*'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptParameterEndsWithSpaceSample [
	^ '```foo
bar
```'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParameterEscapeSample [
	^ 'value\==foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParameterSample [
	^ 'value=foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptParameterTrueByDefaultSample [
	^ '```foo
bar
```'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParameterValueSample [
	^ '=foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptParameterWithFloatSample [
	^ '```ratio=0.8
bar
```'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptParameterWithLiteralArraySample [
	^ '```foo=#(1 2 true)
bar
```'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptParameterWithNoValuesSample [
	^ '```foo=
bar
```'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParameterWithSpacesBeforeAndAfterSample [
	^ ' foo = true | bar = 2 
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParameterWithoutValueSample [
	^ 'foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParametersEscapeSample [
	^ 'value=foo\||bar
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParametersMultipleSample [
	^ 'value=foo|bar
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptParametersSample [
	^ 'value=foo
'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptSample [
	^ '```
foo
```'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> scriptTwoParametersNoValueSample [
	^ 'foo|bar
'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptWithLanguageSample [
	^ '```language=smalltalk
foo
```'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptWithNewLineSample [
	^ '```
foo
```
'
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptWithSpaceAtTheEndSample [
	^ '```
foo
```  '
]

{ #category : #changed }
MicroDownSnippetFactory >> scriptWithSpacedParametersSample [
	^ '``` foo = true | bar = 2 
bla
```'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> strikethroughFormatEmptySample [
	^ '----'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> strikethroughFormatSample [
	^ '--Foo--'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> strikethroughFormatWithEscapedSample [
	^ '--\-\---'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> subscriptFormatEmptySample [
	^ '@@@@'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> subscriptFormatSample [
	^ '@@Foo@@'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> subscriptFormatWithEscapedSample [
	^ '@@\@\@@@'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> superscriptFormatEmptySample [
	^ '^^^^'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> superscriptFormatSample [
	^ '^^Foo^^'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> superscriptFormatWithEscapedSample [
	^ '^^\^\^^^'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableAlignMarkupSample [
	^ '}'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellAreTrimedSample [
	^ '|   Foo   '
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellCenterSample [
	^ '||Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderCenter2Sample [
	^ '||!Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderCenterSample [
	^ '|!|Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderLeft2Sample [
	^ '|{!Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderLeftSample [
	^ '|!{Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderRight2Sample [
	^ '|}!Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderRightSample [
	^ '|!}Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellHeaderSample [
	^ '|!Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellLeftSample [
	^ '|{Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellRightSample [
	^ '|}Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellSample [
	^ '|Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCellWithFormatSample [
	^ '| ''''Foo'''' ' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableCenterMarkupSample [
	^ '|'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableHeadingMarkupSample [
	^ '!'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableLeftMarkupSample [
	^ '{'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableMarkupsCenterSample [
	^ '||'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableMarkupsHeadingAndCenter2Sample [
	^ '||!'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableMarkupsHeadingAndCenterSample [
	^ '|!|'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableMarkupsHeadingSample [
	^ '|!'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableMarkupsSample [
	^ '|'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableRightMarkupSample [
	^ '}'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableRowSample [
	^ '| Foo | Bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableRowWithEmptyCellsSample [
	^ '|  | '
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableRowWithHeadingSample [
	^ '|! Foo |! Bar'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableSample [
	^ '|! Foo |! Bar
| Foo2 | Bar2'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> tableWithNewLineSample [
	^ '|! Foo |! Bar
| Foo2 | Bar2
'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> textSample [
	^ 'Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> textWithEscapeAtBeginningSample [
	^ '\*Foo'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> textWithEscapeInTheMiddleSample [
	^ 'Foo \* Bar' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> textWithMultiEscapeSample [
	^ '\*Foo\*' 
]

{ #category : #unchanged }
MicroDownSnippetFactory >> undefinedAnnotationAsNodeSample [
	^ '${undefinedAnnotation}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> undefinedAnnotationSample [
	^ '${undefinedAnnotation}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> undefinedAnnotationWithParametersAsNodeSample [
	^ '${undefinedAnnotation:param1=a|param2=b}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> undefinedAnnotationWithParametersSample [
	^ '${undefinedAnnotation:param1=a|param2=b}$'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> underlineFormatEmptySample [
	^ '____'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> underlineFormatSample [
	^ '__Foo__'
]

{ #category : #unchanged }
MicroDownSnippetFactory >> underlineFormatWithEscapedSample [
	^ '__\_\___'
]

{ #category : #changed }
MicroDownSnippetFactory >> unorderedListEmptySample [
	^ '*'
]

{ #category : #changed }
MicroDownSnippetFactory >> unorderedListMultiSample [
	^ '*1
**2
***3
**4
**5
**6
*7
***8'
]

{ #category : #changed }
MicroDownSnippetFactory >> unorderedListSample [
	^ '*Foo'
]

{ #category : #changed }
MicroDownSnippetFactory >> unorderedListWithSubListSample [
	^ '*Foo
**Bar'
]

{ #category : #changed }
MicroDownSnippetFactory >> unorderedListWithTwoItemsSample [
	^ '*Foo
*Bar'
]
