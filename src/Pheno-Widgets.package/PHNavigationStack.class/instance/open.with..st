navigation
open: aPage with: anObject

	current ~= stack size ifTrue: [ | outdated |
		outdated := stack size - current.
		outdated > 0 ifTrue: [
			(stack removeLast: outdated) do: [:page | page first removed]]].
	
	stack add: {aPage. anObject}.
	
	^ self current: stack size