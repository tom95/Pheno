private
throwException: anException

	^ anException notNil and: [anException isApplicationError not or: [self class throwAllErrors]]