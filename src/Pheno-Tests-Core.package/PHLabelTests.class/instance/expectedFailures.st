as yet unclassified
expectedFailures
 " ellipsizing is currently not supported on the morphic backend "
 ^PHPangoTextLayout available ifTrue: [#()] ifFalse: [#(testEllipsize)]