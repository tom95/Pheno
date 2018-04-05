private
roundRectShapeBounds: aRectangle radius: radius borderWidth: width

	| circle points |
	circle := radius scaleBy: 0.5522847.
	points := OrderedCollection new.
	
	width top > 0 ifTrue: [
		" top left corner "
		radius top > 0 ifTrue: [
			points
				add: 0 @ radius top;
				add: 0 @ circle top;
				add: circle top @ 0;
				add: radius top @ 0].

		" top line "
		points
			add: radius top @ 0;
			add: radius top @ 0;
			add: radius top @ 0;
			add: aRectangle width - radius right @ 0].

	width right > 0 ifTrue: [
		" top right corner "
		radius right > 0 ifTrue: [
			points
				add: aRectangle width - radius right @ 0;
				add: aRectangle width - circle right @ 0;
				add: aRectangle width @ circle right;
				add: aRectangle width @ radius right].

		" right line "
		points
			add: aRectangle width @ radius right;
			add: aRectangle width @ radius right;
			add: aRectangle width @ radius right;
			add: aRectangle width @ (aRectangle height - radius bottom)].

	width bottom > 0 ifTrue: [
		" bottom right corner "
		radius bottom > 0 ifTrue: [
			points
				add: aRectangle width @ (aRectangle height - radius bottom);
				add: aRectangle width @ (aRectangle height - circle bottom);
				add: aRectangle width - circle bottom @ aRectangle height;
				add: aRectangle width - radius bottom @ aRectangle height].

		" bottom line "
		points
			add: aRectangle width - radius bottom @ aRectangle height;
			add: aRectangle width - radius bottom @ aRectangle height;
			add: aRectangle width - radius bottom @ aRectangle height;
			add: radius left @ aRectangle height].

	width left > 0 ifTrue: [
		" bottom left corner "
		radius left > 0 ifTrue: [
			points
				add: radius left @ aRectangle height;
				add: circle left @ aRectangle height;
				add: 0 @ (aRectangle height - circle left);
				add: 0 @ (aRectangle height - radius left)].

		" left line "
		points
			add: 0 @ (aRectangle height - radius left);
			add: 0 @ (aRectangle height - radius left);
			add: 0 @ (aRectangle height - radius left);
			add: 0 @ radius top].
	
	^ points asPointArray