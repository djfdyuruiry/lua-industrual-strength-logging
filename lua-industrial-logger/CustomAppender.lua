local DebugLogger = require "lua-industrial-logger.DebugLogger"

local CustomAppender = function(name, appenderConfig)
    local config = appenderConfig or {}

    DebugLogger.log("Loaded CustomAppender with name = '%s' and config = '%s'", name, config)

    local append = function(level, logMessage)
    end
    
    return
    {
        append = append,
        config = config
    }
end

return CustomAppender