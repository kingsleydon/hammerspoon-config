local input_source = {}

function input_source.English()
  hs.keycodes.currentSourceID('com.apple.keylayout.ABC')
end

return input_source