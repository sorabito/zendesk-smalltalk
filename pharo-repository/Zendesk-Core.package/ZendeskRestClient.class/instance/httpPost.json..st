http-methods
httpPost: uriString json: contentsJson
	^ self http: #POST uri: uriString json: contentsJson