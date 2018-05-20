private
defaultFontAtSize: aNumber

	^ TextFontReference toFont: (PHStyleContext fontForSize: aNumber floor)