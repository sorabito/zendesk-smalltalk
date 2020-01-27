http-methods
httpPut: aUri contents: entity
	^ self http: #PUT uri: aUri contents: entity