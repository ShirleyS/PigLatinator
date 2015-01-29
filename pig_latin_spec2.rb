require './pig_latin2'

describe "check if input present" do
	describe "input != nil" do 
		it "should return - input nil exception" do
			expect{PigLatin.translate().to raise_error}
		end
	end
end


describe "check correct?" do
	describe "translate" do	
		it "should return ellohay orldway" do
			PigLatin.translate("hello world").should == "ellohay orldway"
		end
	end
end



