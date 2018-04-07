A BTScrollContainer is a TransformMorph that sends layoutChanged also to its owner.

TransformMorph does not do that, but we need it for correct size and layout.
