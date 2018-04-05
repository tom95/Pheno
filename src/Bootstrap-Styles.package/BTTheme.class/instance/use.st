helper
use

	BTStyleContext theme ifNotNilDo: [:theme | BTStyleContext global removeProvider: theme].
	BTStyleContext theme: self.
	BTStyleContext global addProvider: self priority: BTStyleContext priorityTheme