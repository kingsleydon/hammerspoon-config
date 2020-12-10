local English  = require('utils.input_source').English

-- @see https://emacs-china.org/t/topic/6348
local function set_app_input_source(app_name, input_source_function, event)
  event = event or hs.window.filter.windowFocused
  hs.window.filter.new(app_name)
    :subscribe(event, input_source_function)
end

set_app_input_source('Spotlight',  English, hs.window.filter.windowCreated)
