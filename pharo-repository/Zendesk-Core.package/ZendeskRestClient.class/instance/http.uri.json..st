http-methods
http: methodString uri: uriString json: contentsJson
	| request |
	
	request := self createRequest.
	request method: methodString.
	request url: uriString.
	contentsJson isEmptyOrNil ifFalse:[ request entity: (ZnStringEntity json: contentsJson asString) ].
	
	self client request: request.
	client execute.
	^ client response