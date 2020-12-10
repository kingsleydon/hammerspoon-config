local function pressFn(mods, key)
  if key == nil then
    key = mods
    mods = {}
  end

  return function() hs.eventtap.keyStroke(mods, key) end
end

local function remap(mods, key, pressFn)
  hs.hotkey.bind(mods, key, pressFn, nil, pressFn)
end

remap({'ctrl'}, 'p', pressFn('up'))
remap({'ctrl'}, 'n', pressFn('down'))
remap({'ctrl'}, 'b', pressFn('left'))
remap({'ctrl'}, 'f', pressFn('right'))
remap({'ctrl'}, '[', pressFn('escape'))
