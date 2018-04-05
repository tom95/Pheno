styles
badgeStyles

	(self for: #(badge))
		borderRadius: 0.25 rem;
		color: #fff;
		backgroundColor: #'343a40'.
	(self for: #(badge badgeSuccess)) backgroundColor: #'28a745'.
	(self for: #(badge badgeWarning)) backgroundColor: #ffc107; color: #fff.
	(self for: #(badge badgeInfo)) backgroundColor: #'17a2b8'.
	(self for: #(badge badgeDanger)) backgroundColor: #dc3545.
	(self for: #(badge badgePrimary)) backgroundColor: #'007bff'