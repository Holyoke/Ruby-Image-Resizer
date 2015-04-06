require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def image_resizer(input)
	dimensions = parse(input)
	result = []

	until dimensions.empty?
		width = dimensions.shift()
		height = dimensions.shift()

		result += resize(width, height)
	end

	result
end

def parse(str)
	result = str[1..str.size].split(",")
	result.map{|c| c.to_i }
end

def resize(w,h)
	orientation = orientation(w, h)

	if orientation == "landscape"
		result = [200, get_height(w,h)]
	else
		result = [get_width(w,h), 200]
	end

	result
end

def orientation(w,h)
	w >= h ? "landscape" : "portrait"
end

def get_height(w,h)
	y = 200*h / w
	y
end

def get_width(w,h)
	x = 200*w / h
	x
end
