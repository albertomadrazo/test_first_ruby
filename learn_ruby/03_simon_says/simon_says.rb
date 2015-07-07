def echo message
	message
end

def shout message
	message.upcase
end

def repeat message, veces=2 	
	message = (message + " ") * veces
	message = message[0..-2]
	return message
end

def start_of_word message, substring
	message = message[0..substring-1]
	message
end

def first_word message
	space = message.index(" ")
	message = message[0..space-1]
	message
end

def titleize message
	little_words = ["and", "the", "over"]

	if message.index(" ") == nil
		message = message.capitalize
	else
		message = message.split(" ")
		message = message.map{|f| (little_words.include?(f)) ? f.downcase : f.capitalize}
		message[0].capitalize!

		message = message.join(" ")

	end
	
	message
end
