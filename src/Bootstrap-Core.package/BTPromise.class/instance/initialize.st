initialize
initialize

	state := #pending.
	resolvers := #().
	rejecters := #().
	mutex := Mutex new.