as yet unclassified
testCutToken

	| layout string index |
	layout := PHComplexTextLayout new.
	
	string := String new: 7 withAll: $a.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (PHFakeFont characterWidth * 4) font: PHFakeFont new do: [:s :w].
	(self expect: index) to equal: 4.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (PHFakeFont characterWidth * 3.5) font: PHFakeFont new do: [:s :w].
	(self expect: index) to equal: 3.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (PHFakeFont characterWidth * 0.5) font: PHFakeFont new do: [:s :w].
	(self expect: index) to equal: 1.
	
	index := layout cutToken: string from: 1 to: 7 toMaxOf: (PHFakeFont characterWidth * 20) font: PHFakeFont new do: [:s :w].
	(self expect: index) to equal: 7