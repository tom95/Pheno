A BTTextCompletion is an input with an integrated dropdown listing a set of suggestions when the user types.

The #confirm action that is invoked on pressing return can lead to different events occuring:
- if no text is entered, nothing happens
- if onlyCompletions is true, #confirm is only emitted when the user is selecting an item or typed in an exact match
- if onlyCompletion is false, #confirm is emitted on every non empty press of return