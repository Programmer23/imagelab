require "./image_array.rb"
puts "File path?"
file_path = gets.chomp

# open an image array at the given file path
img = ImageArray.new(file_path)
puts "Effect? (bw, inv, tint)"
effect = gets.chomp

if effect == "bw"
# code to make image array bw
img.each do |row|
	row.each do |pixel|
		pixel_gray = (pixel.red + pixel.green + pixel.blue)/3
		pixel.red = pixel_gray
		pixel.green = pixel_gray
		pixel.blue = pixel_gray
	end
end
img.write("./new_bw.jpg")

elsif effect == "inv"
# code to make image array inv
img.each do |row|
	row.each do |pixel|
		pixel.red = img.max_intensity - pixel.red
		pixel.green = img.max_intensity - pixel.green
		pixel.blue = img.max_intensity - pixel.blue
	end
end
img.write("./new_inv.jpg")

elsif effect == "tint"
# code to make image array tint
img.each do |row|
	row.each do |pixel|
		pixel.green = 0
		pixel.blue = 0
	end
end
img.write("./new_tint.jpg")

else
puts "Not a valid effect"
# write the file back
end
