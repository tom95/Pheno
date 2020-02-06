accessing
foregroundColorForBackgroundColor: aColor
	"transform color into YIQ colorspace and see if we prefer using light or dark text on this background. Copied from bootstrap."

	^ ((aColor red * 255 * 299) + (aColor green * 255 * 587) + (aColor blue * 255 * 114)) / 1000 > self yiqConstranstedThreshold
		ifTrue: [self textColorDark]
		ifFalse: [self textColorLight]