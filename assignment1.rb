puts "Enter a phrase, see it transform..."

word = gets.chomp

shift = 3

def caesar_cipher(string, shift)
  alphabet = Array('a'..'z')
  encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map{|c| encrypter.fetch(c, "")}
end

p caesar_cipher(word, shift).join
