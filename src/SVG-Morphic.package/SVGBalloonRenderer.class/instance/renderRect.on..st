as yet unclassified
renderRect: anSVGRect on: aCanvas
	"Render the given object on the canvas."

	|fill lineWidth lineColor|
	fill := anSVGRect composedFillStyle.
	lineWidth := (anSVGRect composedStyle at: 'stroke-width') rounded max: 1.
	lineColor := anSVGRect composedStyle at: 'stroke'.
	aCanvas asBalloonCanvas preserveStateDuring: [:bc|
		bc transformBy: anSVGRect transform during: [:balloonCanvas |
			balloonCanvas
				aaLevel: anSVGRect antialiasingLevel;
				drawRectangle: anSVGRect rectangle
				color: fill
				borderWidth: lineWidth
				borderColor: lineColor]]