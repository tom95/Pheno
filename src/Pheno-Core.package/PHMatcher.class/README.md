A PHMatcher is a value verifier with a set of advanced operators. Users should implement an `expect:` method on themselves, that instantiates a PHMatcher and sets its subject to the given argument.

E.g.
```
MyTestCase>>expect: anObject
	^PHMatcher new subject: anObject; yourself
```

It is convention to chain message sends to this class without cascades for ease of readability, e.g.
```
(self expect: 5) to not beGreaterEqualsThan: 2
```

For implementing a specialized PHMatcher, you can override `assert:description:` and `formatAssertionActual:expected:negated:operator:`.