drawing
drawBalloonTextOn: aCanvas 
	"Show balloon text in the text morph if it has no contents."
	textMorph contents ifNotEmpty: [ ^ self ].
	([ self balloonText ]
		on: Error
		do: [ : err | 'error in balloonText' ]) ifNotNil:
		[ : text | aCanvas
			drawString: text
			in: (self innerBounds insetBy: (self textMorph margins ifNil: [5 @ 2 corner: 0 @ 0]))
			font: (self userInterfaceTheme balloonTextFont ifNil: [TextStyle defaultFont])
			color: (self userInterfaceTheme balloonTextColor ifNil: [Color gray: 0.7]) ]