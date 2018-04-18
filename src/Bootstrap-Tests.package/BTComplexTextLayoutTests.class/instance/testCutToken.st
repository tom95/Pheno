as yet unclassified
testCutToken

	| layout string index |
	layout := BTComplexTextLayout new.
	
	string := String new: 7 withAll: $a.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (BTFakeFont characterWidth * 4) font: BTFakeFont new do: [:s :w].
	(self expect: index) to equal: 4.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (BTFakeFont characterWidth * 3.5) font: BTFakeFont new do: [:s :w].
	(self expect: index) to equal: 3.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (BTFakeFont characterWidth * 0.5) font: BTFakeFont new do: [:s :w].
	(self expect: index) to equal: 1.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (BTFakeFont characterWidth * 20) font: BTFakeFont new do: [:s :w].
	(self expect: index) to equal: 7