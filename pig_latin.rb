class PigLatin

	def initialize(stringIn)
		raise "input nil" if (stringIn.nil?)
		raise "input has weird character" if stringIn.match(/\W /)
		@string = stringIn
		@words = @string.split(" ")
	end


	def translate
		recombinated_array = []
		@words.map! do |word|
			word_array = word.split("")
			word_array.push(word_array.first).shift
			reconnect = word_array.join("") + "ay"	
			recombinated_array.push(reconnect)
		end

		recombinated = recombinated_array.join(' ')
		puts ""
		puts recombinated

		return recombinated
	end
end

# pig = PigLatin.new("hello world")
# pig.translate
