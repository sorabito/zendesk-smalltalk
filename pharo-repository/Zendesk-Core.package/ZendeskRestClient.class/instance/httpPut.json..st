http-methods
httpPut: uriString json: contentsJson
	^ self http: #PUT uri: uriString json: contentsJson