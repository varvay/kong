return {
  fields = {
    pdpUrl = {type = "string", required = false, },
    pdpMode = {
                type = "string",
                enum = {"JWTForward", "JSON_XACML"},
                default  = "JWTForward"
              }
  }
}