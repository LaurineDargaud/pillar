testing
compileClassSideMethod: aResult

	| isCorrect |
	[((self class environment at: (((aResult fragmentedText first) first trimBoth) asSymbol)) class)
				compile: (aResult fragmentedText second,'
	', aResult fragmentedText third).
	isCorrect := true]
		on: Exception
		do: [ :ex | aResult explanation: ex asString.
						isCorrect := false ].
	^ isCorrect
	