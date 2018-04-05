utilities
circleShape: diameter
	| circle radius |
	radius := diameter  / 2.0.
	circle := radius * 0.5522847.
	
	^(PointArray new: 16)
		" top left "
		at: 1 put: 0 @ radius;
		at: 2 put: 0 @ (radius - circle);
		at: 3 put: (radius - circle) @ 0;
		at: 4 put: radius @ 0;
		
		" top right "
		at: 5 put: radius @ 0;
		at: 6 put: (radius + circle) @ 0;
		at: 7 put: diameter @ (radius - circle);
		at: 8 put: diameter @ radius;
		
		" bottom right "
		at: 9 put: diameter @ radius;
		at: 10 put: diameter @ (radius + circle);
		at: 11 put: (radius + circle) @ diameter;
		at: 12 put: radius @ diameter;
		
		" bottom left "
		at: 13 put: radius @ diameter;
		at: 14 put: (radius - circle) @ diameter;
		at: 15 put: 0 @ (radius + circle);
		at: 16 put: 0 @ radius;
		yourself