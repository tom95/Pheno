styling
removeAttribute: anAttribute from: start to: end

	self textKeepCursor: (self text asText removeAttribute: anAttribute from: start to: end)