tests
testOneActiveTabAtATime
	| navigation topLevel |
	navigation := PHTabStrip new.
	#('First' 'Second' 'None') do: [ :text |
		navigation add: (PHTab new add: (PHLabel text: text) ) ].

	topLevel := self verticalTopLevel add: navigation.
	
	navigation submorphsDo: [:each | (self expect: each selected) to be: false].
	
	navigation makeActive: navigation firstSubmorph.
	self click: navigation submorphs third.
	
	(self expect: navigation submorphs first selected) to be: false.
	(self expect: navigation submorphs second selected) to be: false.
	(self expect: navigation submorphs third selected) to be: true