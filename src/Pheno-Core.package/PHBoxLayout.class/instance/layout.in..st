layout
layout: aWidget in: aBox

	| nonLayoutDirectionMin offset preferred minSize |
	preferred := self preferredSizeFor: aWidget width: (aBox width max: aWidget minSize x).
	preferred minSize x > aBox width ifTrue: [
		" fixme. ouch. can anyone think of a better way to accomodate for children forcing a larger min width? "
		preferred := self preferredSizeFor: aWidget width: preferred minSize x].
	
	vertical ifTrue: [ | stillLeftOver extraExpanderSpace |
		stillLeftOver := self distributeLeftOver: aBox height - totalMin among: childItems.
		extraExpanderSpace := (expanderCount < 1 ifTrue: [0] ifFalse: [stillLeftOver / expanderCount]) floor.
		childItems do: [:item | item finalSize: item finalSize + (item expanding ifTrue: [extraExpanderSpace] ifFalse: [0])]].
	
	minSize := (preferred minSize max: aBox extent) max: aWidget minSize.
	nonLayoutDirectionMin := (self flipPoint: minSize) y.
	aBox extent ~= minSize ifTrue: [aWidget layoutBounds: (aBox origin extent: minSize)].
	
	offset := 0.
	childItems do: [:child |
		child
			offset: offset;
			applyAlignmentWithOffset: aBox origin in: nonLayoutDirectionMin.
		offset := offset + child finalSize + (aWidget spacing * PHStyleContext scalingFactor)]