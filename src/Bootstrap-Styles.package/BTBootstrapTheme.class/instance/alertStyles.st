styles
alertStyles

	(self for: #alert)
		padding: 20 @ 12;
		borderWidth: 1;
		margin: (Rectangle left: 0 right: 0 top: 0 bottom: 16).
	(self for: #(alert alertDanger))
		backgroundColor: #fff3cd;
		color: #'856404';
		borderColor: #ffeeba.
	(self for: #(alert alertSuccess))
		backgroundColor: #d4edda;
		color: #'155724';
		borderColor: #c3e6cb