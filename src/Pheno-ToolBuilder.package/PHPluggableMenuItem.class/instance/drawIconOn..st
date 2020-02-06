drawing
drawIconOn: aCanvas 

	self hasIcon ifTrue: [
		| iconForm | 
		iconForm := self iconForm.
		aCanvas
			translucentImage: iconForm 
			at: self bounds left @ (self top + (self height - iconForm height // 2))  + self layoutInset topLeft]