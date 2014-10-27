# Colour Switcher 

A small library for [LÖVE](http://love2d.org/) which can be used to switch through different colour palettes.

It originally was created to simulate different gameboy palettes, but can do a lot more.

### How it works

The shader uses the red color component of the target fragment to decide what color it should pick from the LUT.

An example LUT with five palettes:

![image](https://bbuseruploads.s3.amazonaws.com/rmcode/colour-switcher/downloads/foo.png?Signature=z3U%2FmdfdmoDOcirrLCXvQFk70gk%3D&Expires=1414427824&AWSAccessKeyId=0EMWEFSGA12Z1HF1TZ82)

A red component of 0 would tell the shader to pick the leftmost color from the LUT, whereas a value of 255 would pick the rightmost color. Each line on the y-axis in the LUT represents a different palette.

The more pixels a line has the more colours the shader will use to replace the original colours.

### Example

The example included in the repository shows how the colour switcher can be used in a LÖVE game. You can use the left and right arrow keys to switch through different palettes. The 1, 2, and 3 keys will switch to a different LUT. 

The first LUT has four colours, the second one has eight colours and the third one uses only two colours. 

![image](https://bbuseruploads.s3.amazonaws.com/rmcode/colour-switcher/downloads/example.gif?Signature=Hfptkg6fU63ZTL83d54eScGkqWs%3D&Expires=1414428023&AWSAccessKeyId=0EMWEFSGA12Z1HF1TZ82)


### License

Copyright (c) 2014 Robert Machmer                                          
                                                                           
This software is provided 'as-is', without any express or implied warranty. In no event will the authors be held liable for any damages arising from the use of this software.

Permission is granted to anyone to use this software for any purpose, including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:                             
                                           
 1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.                                      
 2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.                        
 3. This notice may not be removed or altered from any source distribution.
