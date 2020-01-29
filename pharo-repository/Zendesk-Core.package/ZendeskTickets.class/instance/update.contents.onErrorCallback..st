updating
update: ticketId contents: ticketContents onErrorCallback: onErrorCallback
	^ self update: ticketId contents: ticketContents client: (ZendeskRestClient default) onErrorCallback: onErrorCallback.