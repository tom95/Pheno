running
setUp

	super setUp.
	
	previousScalingFactor := PHStyleContext scalingFactor.
	PHStyleContext scalingFactor: 1.
	
	spies := OrderedCollection new.