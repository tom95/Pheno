navigation
updateBreadcrumbs

	breadcrumbs removeAllMorphs.

	self openPage breadcrumbs do: [:crumb |
		crumb
			when: #clicked
			send: #openBookmark:
			to: self
			with: crumb bookmark.
		breadcrumbs add: crumb]