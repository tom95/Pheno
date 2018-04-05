A BTLabel is a widget that displays text.

There are three different functions to set the text, triggering different sideeffects.
- text: replaces the entire text range with a new text from outside the widget
- updateText: the widget itself wants to update its text (such as a response to keystrokes)
- internalText: just set the text without updating any of the surroding state (cursor etc)