class PigLatin

	def self.translate(stringIn)
		raise "input nil" if (stringIn.nil?)
		@string = stringIn
		@words = @string.split(" ")
		recombinated_array = []
		@words.map! do |word|
			word_array = word.split("")
			word_array.push(word_array.first).shift
			reconnect = word_array.join("") + "ay"	
			recombinated_array.push(reconnect)
		end

		recombinated = recombinated_array.join(' ')
		puts recombinated
		return recombinated

	end
end

PigLatin.translate("hello world world")