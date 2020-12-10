local keyboard = require('utils.keyboard')
local remap = keyboard.remap
local press = keyboard.press

remap({'ctrl'}, 'p', press('up'))
remap({'ctrl'}, 'n', press('down'))
remap({'ctrl'}, 'b', press('left'))
remap({'ctrl'}, 'f', press('right'))
remap({'ctrl'}, '[', press('escape'))
