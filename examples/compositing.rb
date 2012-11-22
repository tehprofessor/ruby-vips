require 'vips'
require 'ostruct'
include VIPS

image = Image.jpeg('01.jpeg')
watermark = Image.png('watermark.png')

position = OpenStruct.new(x: 0, y: 50)

watermarked_image = image.composite(watermark, position.x, position.y, :over)
watermarked_image.write("output.png")