class Book
	attr_accessor :title

	def title=(book_title)
		articles = ["a", "an", "the"]
		conjunctions = ["and"]
		prepositions = ["in", "of"]

		if book_title.index(" ") == nil
			@title = book_title.capitalize
		else
			@title = book_title.split(" ")
			@title = @title.map{|f| (
				                     articles.include?(f) or
							     conjunctions.include?(f) or
								 prepositions.include?(f)) ? f.downcase : f.capitalize}
			@title[0].capitalize!
			@title = @title.join(" ")
		end
		@title
	end
end

# def titleize message
# 	little_words = ["and", "the", "over"]

# 	if message.index(" ") == nil
# 		message = message.capitalize
# 	else
# 		message = message.split(" ")
# 		message = message.map{|f| (little_words.include?(f)) ? f.downcase : f.capitalize}
# 		message[0].capitalize!

# 		message = message.join(" ")

# 	end
	
# 	message
# end