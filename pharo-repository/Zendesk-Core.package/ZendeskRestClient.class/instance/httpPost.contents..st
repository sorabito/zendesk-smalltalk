http-methods
httpPost: aUri contents: entity
	^ self http: #POST uri: aUri contents: entity