class CeasarCipher

	def initialize(text, offset=13)
		@text = text
		@offset = offset
	end

	def perform
		alphabet = Array('a'..'z')
		alphabet_offset = alphabet.rotate(@offset)
		cipher = Hash[alphabet.zip(alphabet_offset)]
		@text = @text.chars.map do |char|
			if /[[:upper:]]/ =~ char
				cipher.fetch(char.downcase, char).upcase
			else
				cipher.fetch(char, char)
			end
		end.join

		p @text

		return @text
	end
end
