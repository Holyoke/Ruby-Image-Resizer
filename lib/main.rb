require "byebug"
require "set"

# test = File.read("spec/test_input.txt").split("\n")

def image_resize(input)

end

def parse(str)
	result = str[1..str.size].split(",")
	result.map{|c| c.to_i }
end

def get_side(w,h)
	side = 200*h / w
	side
end