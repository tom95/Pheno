as yet unclassified
testForegroundForBackground

	(self expect: (BTStyleProvider foregroundColorForBackgroundColor: Color yellow)) to equal: BTStyleProvider textColorDark.
	(self expect: (BTStyleProvider foregroundColorForBackgroundColor: Color black)) to equal: BTStyleProvider textColorLight