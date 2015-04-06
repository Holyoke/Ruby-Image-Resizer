require "rspec"
require "main.rb"
require "byebug"

describe "#image_resizer" do

  context "Analysis" do

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

      it "determines if the picture is portrait" do
        width, height = 600,800
        answer = "portrait"

        expect(orientation(width,height)).to eq(answer)
      end

      it "finds corresponding side of a square" do
        width, height = 200, 200
        answer = 200

        expect(get_height(width, height)).to eq(answer)
      end

      it "finds corresponding side of landscape" do 
        width, height = 400, 200
        answer = 100

        expect(get_height(width, height)).to eq(answer)
      end

      it "finds corresponding side of portrait" do 
        width, height = 600, 800
        answer = 150

        expect(get_width(width, height)).to eq(answer)
      end
    end

    describe "Resize" do 
      it "resizes a square image" do 
        width, height = 200, 200
        answer = [200,200]

        expect(resize(width,height)).to eq(answer)
      end

      it "resizes a landscape image " do 
        width, height = 400, 200
        answer = [200,100]

        expect(resize(width,height)).to eq(answer)
      end

      it "resizes a portrait image" do 
        width, height = 600, 800
        answer = [150, 200]

        expect(resize(width,height)).to eq(answer)
      end
    end

    describe "Image Resizer" do
      it "takes a pair of dimensions" do
        input = "[400,200]"
        answer = [200, 100]

        expect(image_resizer(input)).to eq(answer)
      end

      it "takes several pairs of dimensions" do
        input = "[1256,1200, 600, 800, 200, 200, 400, 200, 800,1256]"
        answer = [200, 191, 150, 200, 200, 200, 200, 100, 127, 200]

        expect(image_resizer(input)).to eq(answer)
      end
    end

  end
end