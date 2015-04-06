require "rspec"
require "main.rb"
require "byebug"

describe "#image_resize" do

	context "Test Case 1 Analysis" do
		it "parses a string representation of an array" do
			str = "[200,200"
			answer = [200,200]

			expect(parse(str)).to eq(answer)
		end

		describe "Aspect Ratio" do
			it "calculates aspect ratio for squares"

			it "calculates aspect ratio in floats"
		end
	end

	context "Sample Input" do
		let(:sample_input) { File.read("spec/sample_input.txt") }
		let(:sample_output) { File.read("spec/sample_output.txt")}

		describe "Sample Input Tests" do
			it "passes the first sample test" do 
				input = sample_input.split("\n")[0]
				output = sample_output.split("\n")[0].to_i

				# result = multiples_of_a_number(input)


				expect(result).to eq(output)
			end

			it "passes the second sample test" do 
				input = sample_input.split("\n")[1]
				output = sample_output.split("\n")[1].to_i

				# result = multiples_of_a_number(input)


				expect(result).to eq(output)
			end

		end
	end
end