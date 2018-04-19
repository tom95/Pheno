private
attributeFor: aName value: aValue

	(#('font_size' 'size') includes: aName) ifTrue: [^ self defaultFontAtSize: (self parseFontSize: aValue)].
	(#('font_family' 'face') includes: aName) ifTrue: [ ^TextFontReference toFont: (StrikeFont familyName: aValue pointSize: TextStyle defaultFont pointSize) ].
	(#('font' 'font_desc') includes: aName) ifTrue: [ | parts size |
		parts := aValue splitInteger.
		size := parts second isZero ifTrue: [ TextStyle defaultFont pointSize ] ifFalse: [parts second].
		^TextFontReference toFont: (StrikeFont familyName: parts first pointSize: size)].
	(#('font_style' 'style') includes: aName) ifTrue: [
		" italic, normal, oblique "
		aValue = 'italic' ifTrue: [^ TextEmphasis italic]].
	((#('font_weight' 'weight') includes: aName) and: [(#('bold' 'ultrabold' 'heavy') includes: aValue) or: [ | val | val := aValue asInteger. val notNil and: [val > 400]]]) ifTrue: [^ TextEmphasis bold].
	" font_variant, variant => normal, smallcaps "
	" font_strech, strech => ultracondensed, extracondensed, condensed, semicondensed, normal, semiexpanded, expanded, extraexpanded, ultraexpanded "
	" font features => OT feature list "
	(#('foreground' 'fg_color' 'color') includes: aName) ifTrue: [ ^TextColor color: (self parseColor: aValue) ].
	" background, bgcolor "
	" alpha, fgalpha => [1,65536] or percentage e.g. 30% "
	" background_alpha, bgalpha => [1,65536] or percentage e.g. 30% "
	(aName = 'underline' and: [aValue ~= 'none']) ifTrue: [
		" none, single, double, low, error "
		^ TextEmphasis underlined].
	" underline_color "
	" rise "
	(aName = 'strikethrough' and: [aValue = 'true']) ifTrue: [^ TextEmphasis struckOut].
	" strikethrough_color "
	" fallback => true, false "
	" lang => language code "
	" letter spacing "
	" gravity "
	" gravity_hint "
	^ nil