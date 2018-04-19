initialize-release
drawOn: aCanvas

	| dstRect srcQuad transform form |
	form := self cachedFormFor: self extent.
	transform := (MatrixTransform2x3 withOffset: self extent / 2 + self layoutBounds origin + aCanvas origin)
		composedWithLocal: ((MatrixTransform2x3 withAngle: angle)
		composedWithLocal: (MatrixTransform2x3 withOffset: (self extent / 2 + self layoutBounds origin) negated)).
	
	self flag: #fixme. "balloon canvas draws a green rectangle around rotated images?? BalloonCanvas>>image:at:sourceRect:rule:"
	dstRect := (transform localBoundsToGlobal: (form boundingBox translateBy: self layoutBounds origin)).
	srcQuad := transform globalPointsToLocal: (dstRect innerCorners).
	srcQuad := srcQuad collect:[:pt | pt - self layoutBounds origin].
	(WarpBlt toForm: aCanvas form)
		sourceForm: form;
		cellSize: 2;
		combinationRule: Form blend;
		copyQuad: srcQuad toRect: dstRect