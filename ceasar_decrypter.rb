#!/usr/bin/env ruby

class CeasarCipher
  LETTERS = ('a'..'z').to_a

  def self.words
    @words ||= IO.readlines("/usr/share/dict/words").map do |word|
      word.downcase.chomp
    end.uniq
  end

  def self.encrypt(string, shift_by)
    encrypted_letters = LETTERS.rotate(shift_by)
    string.each_char.map do |letter|
      if encrypted_letters.include?(letter)
        LETTERS[encrypted_letters.index(letter)]
      else
        letter
      end
    end.join
  end

  def self.decrypt(string, shift_by)
    self.encrypt(string, -shift_by)
  end

  def self.valid_message?(message)
    message.split(' ').all? do |word|
      words.include?(word)
    end
  end
end

#
# letters = ('a'..'z').to_a
#
# encrypted_string = ARGV[0].downcase
#
# letters.count.times do |shift_by|
#   encrypted_letters = letters.rotate(shift_by)
#   decrypted_string = encrypted_string.each_char.map do |letter|
#     if encrypted_letters.include?(letter)
#       letters[encrypted_letters.index(letter)]
#     else
#       letter
#     end
#   end.join
#   puts "Decrypted_string: #{decrypted_string}"
# end
#

if __FILE__ == $0
  encrypted_string = ARGV[0].downcase
  puts "Encrypted: #{encrypted_string}"

  0.upto(25).each do |number|
    decrypted = CeasarCipher.decrypt(encrypted_string, number)
    puts "#{decrypted}" if CeasarCipher.valid_message?(decrypted)
  end
end
