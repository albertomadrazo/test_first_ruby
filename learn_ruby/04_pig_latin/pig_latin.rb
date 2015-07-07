def translate texto
	texto = texto.split(" ")
	regex = /[b-z&&[^eiou]]/
	new_text = []
	consonant = ''
	consonant_number = 0
	has_qu = false
	puts texto.inspect
	for word in texto

		while word[0].match regex #or consonant_number <= 3
			puts "word ===> " + word
			if word[0] == 'q' and word[1] == 'u'
				consonant += 'qu'
				word = word[2..-1]
				consonant_number += 1
				break
			end
			
			consonant += word[0]
			word = word[1..-1]
			consonant_number += 1
			puts "consonant ===> " + consonant
		end

		if consonant_number > 0 #or has_qu == true
			word += consonant
			consonant = ''
		end

		if word[0].match /[aeiou]/
			puts "HIA"
			word += 'ay'
		end

		new_text.push(word)
		puts "$>"
		puts new_text.inspect
	end

	puts "<< Translated Text >>"
	puts  new_text
	texto = new_text.join(" ")
	puts texto

	texto
end