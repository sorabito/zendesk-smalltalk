http-methods
http: method uri: aUri contents: entity
	| request |
	
	request := self createRequest.
	request method: method.
	request url: aUri.
	entity isEmptyOrNil ifFalse:[ request entity: ((ZnEntity with: entity asString) contentType: 'application/json') ].
	
	self client request: request.
	client execute.
	^ client response