updating
updatePercentage

	| morphs |
	morphs := itemsPage submorphs.

	progressBar percentage:
		((morphs count: #isChecked) / (morphs size))