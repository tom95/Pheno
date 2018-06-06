utilities
isSymbolicMaxWidth: aNumber
	" this is a nasty hack that should be replaced with a proper fix. the problem is as follows:
	- resizeToPreferred offers its widget maximumWidth of space to fill and assumes that it will always take considerably less
	- a label will always take as much space as it is offered, in order to support center alignment of text
	- this function 'detects' a query aiming to calculate the preferred size and is used to instruct the label to allocate a minimum comfortable size instead of the full width "

	^ self maximumWidth - aNumber < 1e4