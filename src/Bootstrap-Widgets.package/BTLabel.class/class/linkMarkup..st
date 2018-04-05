instance creation
linkMarkup: aString
	"This is usually used for parts of texts, please do not change this to use style attributes"

	| color |
	self flag: #performance. "cache this somewhere or something?"
	color := (BTStyleContext new addClass: 'link') color.

	^ '<span color="#', color printHtmlString, '">', aString, '</span>'