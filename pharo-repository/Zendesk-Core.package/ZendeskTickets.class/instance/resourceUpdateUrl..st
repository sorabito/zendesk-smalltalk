accessing
resourceUpdateUrl: ticketId
	^ self resourceBaseUrl / ('tickets/{1}.json' format: { ticketId })