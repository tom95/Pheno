utilities
roundRectShapeBounds: aRectangle rounded: rounded bordered: bordered
	| circle points radius |
	radius := rounded collect: [ :r | r ifTrue: [BTWidget borderRadius] ifFalse: [0]].
	circle := radius collect: [ :r | r * 0.5522847 ].
	points := OrderedCollection new.
	
	bordered first ifTrue: [
		" top left corner "
		points
			add: 0 @ radius first;
			add: 0 @ circle first;
			add: circle first @ 0;
			add: radius first @ 0.

		" top line "
		points
			add: radius first @ 0;
			add: radius first @ 0;
			add: radius first @ 0;
			add: aRectangle width - radius second @ 0 ].

	bordered second ifTrue: [
		" top right corner "
		points
			add: aRectangle width - radius second @ 0;
			add: aRectangle width - circle second @ 0;
			add: aRectangle width @ circle second;
			add: aRectangle width @ radius second.

		" right line "
		points
			add: aRectangle width @ radius second;
			add: aRectangle width @ radius second;
			add: aRectangle width @ radius second;
			add: aRectangle width @ (aRectangle height - radius third) ].

	bordered third ifTrue: [
		" bottom right corner "
		points
			add: aRectangle width @ (aRectangle height - radius third);
			add: aRectangle width @ (aRectangle height - circle third);
			add: aRectangle width - circle third @ aRectangle height;
			add: aRectangle width - radius third @ aRectangle height.

		" bottom line "
		points
			add: aRectangle width - radius third @ aRectangle height;
			add: aRectangle width - radius third @ aRectangle height;
			add: aRectangle width - radius third @ aRectangle height;
			add: radius fourth @ aRectangle height ].

	bordered fourth ifTrue: [
		" bottom left corner "
		points
			add: radius fourth @ aRectangle height;
			add: circle fourth @ aRectangle height;
			add: 0 @ (aRectangle height - circle fourth);
			add: 0 @ (aRectangle height - radius fourth).

		" left line "
		points
			add: 0 @ (aRectangle height - radius fourth);
			add: 0 @ (aRectangle height - radius fourth);
			add: 0 @ (aRectangle height - radius fourth);
			add: 0 @ radius first ].
	
	^points asPointArray