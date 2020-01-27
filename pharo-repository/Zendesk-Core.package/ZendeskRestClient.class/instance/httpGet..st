http-methods
httpGet: aUri
	^ self http: #GET uri: aUri contents: nil