local BasePlugin = require "kong.plugins.base_plugin"

local PEPPlugin = BasePlugin:extend()

function PEPPlugin:new()
	PEPPlugin.super.new(self, "helloworld")
end

function PEPPlugin:access(conf)
	kong.log.error("Hello World!")
end

return PEPPlugin