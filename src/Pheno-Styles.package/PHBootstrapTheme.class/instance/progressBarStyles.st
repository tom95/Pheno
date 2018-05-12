styles
progressBarStyles

	(self for: #progressBar)
		borderRadius: 0.25rem;
		backgroundColor: #'e9ecef';
		border: 1 color: #'e9ecef';
		padding: 0.75rem @ 0.0rem;
		spacing: 0.25rem.
	
	(self for: #progressBar asStyle > #progressBarFill)
		borderRadius: (Rectangle left: 0.25rem right: 0 top: 0.25rem bottom: 0);
		backgroundColor: #'007bff'.
		
	(self for: #(progressBar progressBarFull) asStyle > #progressBarFill)
		borderRadius: 0.25rem;
		backgroundColor: #'007bff'