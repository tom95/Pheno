as yet unclassified
userSpaceBoundingBoxWithRespectTo: aComposite
	"Answer the bounding box of the receiver with respect to the transforms
	intervening between the receiver and aComposite."

	^self rectangle boundsWithTransform: (self transformFrom: aComposite)