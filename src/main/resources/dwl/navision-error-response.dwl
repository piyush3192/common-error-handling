%dw 2.0
output application/json
---
{
	errors: [
		{
	        correlationId: correlationId default "",
	        timestamp: now(),
	        statusCode: "500",
	        error: "Error Response which is Received from System API",
	        detail: error.detailedDescription default ""
    	}
	]
}