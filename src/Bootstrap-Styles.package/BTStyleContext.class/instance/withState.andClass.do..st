states
withState: aStateSymbol andClass: aClassSymbol do: aBlock

	^ self withState: aStateSymbol do: [:stateContext |
			stateContext withClass: aClassSymbol do: [:context |
				aBlock value: context]]