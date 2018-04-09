monad
ifRejected: errBlock

	^ self then: nil ifRejected: errBlock.