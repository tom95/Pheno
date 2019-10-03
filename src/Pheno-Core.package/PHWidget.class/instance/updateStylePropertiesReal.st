styles
updateStylePropertiesReal

	self flag: #todo. "remove this and all its callers once we can enable #updateStyleProperties"
	self layoutInset: self styleContext padding withScalingFactor.
	self cellInset: self styleContext spacing withScalingFactor