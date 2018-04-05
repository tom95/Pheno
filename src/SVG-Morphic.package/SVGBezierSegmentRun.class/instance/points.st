as yet unclassified
points
	"Answer the collection of points that are formed by the segments.."

	|answer|
	answer := OrderedCollection new: self segments size * 3.
	self segments do: [:s |
		answer
			add: s start;
			add: s via;
			add: s end].
	^answer asArray