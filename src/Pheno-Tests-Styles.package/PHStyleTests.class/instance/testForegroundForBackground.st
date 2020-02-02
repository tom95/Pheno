tests
testForegroundForBackground

	(self expect: (PHStyleProvider foregroundColorForBackgroundColor: Color yellow)) to equal: PHStyleProvider textColorDark.
	(self expect: (PHStyleProvider foregroundColorForBackgroundColor: Color black)) to equal: PHStyleProvider textColorLight