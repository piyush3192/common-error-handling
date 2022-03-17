%dw 2.0
output application/json
var sysError = if (!isEmpty(error.errorMessage.payload.errors)) error.errorMessage.payload.errors else []
---
	{
		errors: [
			{
		    correlationId: correlationId default "",
	        timestamp: now(),
	        statusCode: "500",
	        error: sysError.error[0] default "Internal Server Error",
	        detail:sysError.detail[0] default error.detailedDescription default ""
	    	}
		]
	}