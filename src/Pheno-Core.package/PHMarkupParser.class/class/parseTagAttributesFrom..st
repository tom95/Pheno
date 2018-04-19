private
parseTagAttributesFrom: aStream
	" starts on the tag name skipping the < "
	
	| tagName attributes |
	tagName := aStream upToAnyOf: #($  $>).
	attributes := OrderedCollection new.

	tagName = 'i' ifTrue: [attributes add: TextEmphasis italic].
	tagName = 'u' ifTrue: [attributes add: TextEmphasis underlined].
	tagName = 'b' ifTrue: [attributes add: TextEmphasis bold].
	tagName = 's' ifTrue: [attributes add: TextEmphasis struckOut].
	tagName = 'tt' ifTrue: [attributes add: (TextFontReference toFont:
		((UserInterfaceTheme current get: #standardCodeFont) ifNil: [TextStyle defaultFont]))].
	tagName = 'small' ifTrue: [attributes add: (self defaultFontAtSize: (self parseFontSize: 'small'))].
	tagName = 'big' ifTrue: [attributes add: (self defaultFontAtSize: (self parseFontSize: 'large'))].
	self flag: #todo. " sup, sub "
	
	aStream last = $> ifTrue: [^ attributes].
	
	[ | attrName attrValue |
		attrName := aStream upToAnyOf: #($  $> $=).
		aStream last = $= ifTrue: [
			attrValue := self parseAttributeValueFrom: aStream.
			(self attributeFor: attrName value: attrValue) ifNotNilDo: [:attr | attributes add: attr]]
	] doWhileFalse: [aStream last = $>].

	^ attributes