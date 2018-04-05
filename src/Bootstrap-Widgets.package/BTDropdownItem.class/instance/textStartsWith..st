initialize-release
textStartsWith: aString

	^ (self plainText findString: aString startingAt: 1 caseSensitive: false) = 1