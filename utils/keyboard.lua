keyboard = {}

function keyboard.press(mods, key)
  if key == nil then
    key = mods
    mods = {}
  end

  return function() hs.eventtap.keyStroke(mods, key) end
end

function keyboard.remap(mods, key, callback)
  hs.hotkey.bind(mods, key, callback, nil, callback)
end

return keyboard
