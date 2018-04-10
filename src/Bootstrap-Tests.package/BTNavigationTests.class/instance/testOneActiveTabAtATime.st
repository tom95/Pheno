as yet unclassified
testOneActiveTabAtATime
	| navigation topLevel |
	navigation := BTTabStrip new.
	#('First' 'Second' 'None') do: [ :text |
		navigation add: (BTTab new add: (BTLabel text: text) ) ].

	topLevel := self verticalTopLevel add: navigation.
	
	navigation submorphsDo: [:each | (self expect: each selected) to be: false].
	
	navigation makeActive: navigation firstSubmorph.
	self click: navigation submorphs third.
	
	(self expect: navigation submorphs first selected) to be: false.
	(self expect: navigation submorphs second selected) to be: false.
	(self expect: navigation submorphs third selected) to be: true