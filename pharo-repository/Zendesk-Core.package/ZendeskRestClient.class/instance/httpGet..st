http-methods
httpGet: uriString
	^ self http: #GET uri: uriString json: nil