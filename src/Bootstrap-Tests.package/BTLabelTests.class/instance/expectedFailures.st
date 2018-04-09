as yet unclassified
expectedFailures
 " ellipsizing is currently not supported on the morphic backend "
 ^BTPangoTextLayout available ifTrue: [#()] ifFalse: [#(testEllipsize)]