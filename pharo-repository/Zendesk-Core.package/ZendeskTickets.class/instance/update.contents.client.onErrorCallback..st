updating
update: ticketId contents: ticketContents client: client onErrorCallback: onErrorCallback
	| contents response |
	
	contents := NeoJSONObject new.
	contents at: 'ticket' put: ticketContents.
	
	[ response := client httpPut: (self resourceUpdateUrl: ticketId) contents: contents ]
		on: NetworkError
		do: [ :ex |
			onErrorCallback value: ex.
		].
	^ response