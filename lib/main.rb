require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def image_resizer(input)

end

def parse(str)
	result = str[1..str.size].split(",")
	result.map{|c| c.to_i }
end

def get_height(w,h)
	y = 200*h / w
	y
end

def get_width(w,h)
	x = 200*w / h
	x
end

def orientation(w,h)
	w >= h ? "landscape" : "portrait"
end