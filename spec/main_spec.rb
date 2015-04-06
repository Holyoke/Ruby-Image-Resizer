require "rspec"
require "main.rb"
require "byebug"

describe "#image_resize" do

	context "Test Case 1 Analysis" do

		describe "Parse" do
			it "parses a string representation of [width, height]" do
				str = "[200,200]"
				answer = [200,200]

				expect(parse(str)).to eq(answer)
			end

			it "parses a string representation of [w,h,w,h,w,h]" do
				str = "[200,200,400,300]"
				answer = [200,200,400, 300]

				expect(parse(str)).to eq(answer)
			end
		end

		describe "Aspect Ratio" do
			it "determines if the picture is landscape/square" do
				width, height = 400,200
				answer = "landscape"

				expect(orientation(width,height)).to eq(answer)
			end

			it "finds corresponding side of a square" do
				width, height = 200, 200
				answer = 200

				expect(get_side(width, height)).to eq(answer)
			end

			it "finds corresponding side of landscape" do 
				width, height = 400, 200
				answer = 100

				expect(get_side(width, height)).to eq(answer)
			end

			it "finds corresponding side of portrait" do 
				width, height = 600, 800
				answer = 150

				expect(get_side(width, height)).to eq(answer)
			end
		end


	end

	# context "Sample Input" do
	# 	let(:sample_input) { File.read("spec/sample_input.txt") }
	# 	let(:sample_output) { File.read("spec/sample_output.txt")}

	# 	describe "Sample Input Tests" do
	# 		it "passes the first sample test" do 
	# 			input = sample_input.split("\n")[0]
	# 			output = sample_output.split("\n")[0].to_i

	# 			# result = multiples_of_a_number(input)


	# 			expect(result).to eq(output)
	# 		end

	# 		it "passes the second sample test" do 
	# 			input = sample_input.split("\n")[1]
	# 			output = sample_output.split("\n")[1].to_i

	# 			# result = multiples_of_a_number(input)


	# 			expect(result).to eq(output)
	# 		end

	# 	end
	# end
end