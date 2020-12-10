local English  = require('utils.inputSource').English

-- @see https://emacs-china.org/t/topic/6348
local function setAppInputSource(appName, inputSourceFunction, event)
  event = event or hs.window.filter.windowFocused
  hs.window.filter.new(appName)
    :subscribe(event, inputSourceFunction)
end

setAppInputSource('Spotlight',  English, hs.window.filter.windowCreated)
