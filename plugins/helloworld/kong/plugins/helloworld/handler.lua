local BasePlugin = require "kong.plugins.base_plugin"

local PEPPlugin = BasePlugin:extend()

function PEPPlugin:new()
	PEPPlugin.super.new(self, "helloworld")
end

function PEPPlugin:body_filter(conf)
  PEPPlugin.super.body_filter(self)
	ngx.arg[1] = "Go sleep"
end

return PEPPlugin