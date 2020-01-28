http-methods
http: methodString uri: uriString json: contentsJson
	| request |
	
	request := self createRequest.
	request method: methodString.
	request url: uriString.
	contentsJson isEmptyOrNil ifFalse:[ request entity: ((ZnEntity with: contentsJson asString) contentType: 'application/json') ].
	
	self client request: request.
	client execute.
	^ client response