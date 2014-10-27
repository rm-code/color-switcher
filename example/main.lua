local PaletteSwitcher = require('lib/PaletteSwitcher');

local img;
function love.load()
    -- Example image taken from https://unsplash.com/ (CC0)
    img = love.graphics.newImage('example.jpg');
    love.window.setMode(img:getWidth(), img:getHeight());
    love.window.setTitle('Color Switcher')
    PaletteSwitcher.init('lib/palettes_v1.png', 'lib/palette.fs');
end

function love.draw()
    PaletteSwitcher.set();
    love.graphics.draw(img);
    PaletteSwitcher.unset();
end

function love.keypressed(key)
    if key == 'right' then
        PaletteSwitcher.next();
    elseif key == 'left' then
        PaletteSwitcher.prev();
    elseif key == '1' then
        PaletteSwitcher.init('lib/palettes_v1.png', 'lib/palette.fs');
    elseif key == '2' then
        PaletteSwitcher.init('lib/palettes_v2.png', 'lib/palette.fs');
    elseif key == '3' then
        PaletteSwitcher.init('lib/palettes_v3.png', 'lib/palette.fs');
    end
end

--==================================================================================================
-- Created 27.10.14 - 13:56                                                                        =
--==================================================================================================