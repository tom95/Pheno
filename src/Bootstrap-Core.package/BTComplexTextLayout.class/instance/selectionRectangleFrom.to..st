as yet unclassified
selectionRectangleFrom: aStartRectangle to: aStopRectangle

	^ aStartRectangle topLeft corner: aStopRectangle bottomRight + (0 @ self lineSpacing)