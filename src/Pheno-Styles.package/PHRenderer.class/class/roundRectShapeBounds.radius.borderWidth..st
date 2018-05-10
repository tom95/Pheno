private
roundRectShapeBounds: aRectangle radius: radius borderWidth: width

	| circle points |
	circle := radius scaleBy: 0.5522847.
	points := OrderedCollection new.
	
	width top > 0 ifTrue: [
		" top left corner "
		radius top > 0 ifTrue: [
			points
				add: aRectangle left @ (aRectangle top + radius top);
				add: aRectangle left @ (aRectangle top + circle top);
				add: aRectangle left + circle top @ aRectangle top;
				add: aRectangle left + radius top @ aRectangle top].

		" top line "
		points
			add: aRectangle left + radius top @ aRectangle top;
			add: aRectangle left + radius top @ aRectangle top;
			add: aRectangle left + radius top @ aRectangle top;
			add: aRectangle right - radius right @ aRectangle top].

	width right > 0 ifTrue: [
		" top right corner "
		radius right > 0 ifTrue: [
			points
				add: aRectangle right - radius right @ aRectangle top;
				add: aRectangle right - circle right @ aRectangle top;
				add: aRectangle right @ (aRectangle top + circle right);
				add: aRectangle right @ (aRectangle top + radius right)].

		" right line "
		points
			add: aRectangle right @ (aRectangle top + radius right);
			add: aRectangle right @ (aRectangle top + radius right);
			add: aRectangle right @ (aRectangle top + radius right);
			add: aRectangle right @ (aRectangle bottom - radius bottom)].

	width bottom > 0 ifTrue: [
		" bottom right corner "
		radius bottom > 0 ifTrue: [
			points
				add: aRectangle right @ (aRectangle bottom - radius bottom);
				add: aRectangle right @ (aRectangle bottom - circle bottom);
				add: aRectangle right - circle bottom @ aRectangle bottom;
				add: aRectangle right - radius bottom @ aRectangle bottom].

		" bottom line "
		points
			add: aRectangle right - radius bottom @ aRectangle bottom;
			add: aRectangle right - radius bottom @ aRectangle bottom;
			add: aRectangle right - radius bottom @ aRectangle bottom;
			add: aRectangle left + radius left @ aRectangle bottom].

	width left > 0 ifTrue: [
		" bottom left corner "
		radius left > 0 ifTrue: [
			points
				add: aRectangle left + radius left @ aRectangle bottom;
				add: aRectangle left + circle left @ aRectangle bottom;
				add: aRectangle left @ (aRectangle bottom - circle left);
				add: aRectangle left @ (aRectangle bottom - radius left)].

		" left line "
		points
			add: aRectangle left @ (aRectangle bottom - radius left);
			add: aRectangle left @ (aRectangle bottom - radius left);
			add: aRectangle left @ (aRectangle bottom - radius left);
			add: aRectangle left @ (aRectangle top + radius top)].
	
	^ points asPointArray