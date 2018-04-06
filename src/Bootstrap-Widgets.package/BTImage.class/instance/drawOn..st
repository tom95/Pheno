drawing
drawOn: aCanvas
	| bitmap |
	form ifNotNil: [
		| targetForm |
		targetForm := scalingMode caseOf: {
			[#full] -> [self formAtExtent: self form extent].
			[#fixed] -> [self formAtExtent: (self bounds extent)].
			[#shrink] -> [self formAtExtent: (self bounds extent min: form extent)].
			[#fill] -> [self formAtExtent: self bounds extent]}.
		
		self framed
			ifTrue: [
				bitmap := (BitmapFillStyle fromForm: targetForm)
					tileFlag: false;
					origin: self position;
					yourself.
				
				self flag: #fixme. "accessing the renderer directly here instead of via the styleContext is not pretty. an override system on the styleContext could do, if this necessity comes up again"
				BTRenderer
					drawBackgroundOn: aCanvas
					bounds: self bounds
					color: bitmap
					radius: self styleContext borderRadius.
				self styleContext drawBorderOn: aCanvas bounds: self bounds]
			ifFalse: [aCanvas translucentImage: targetForm at: self position]]