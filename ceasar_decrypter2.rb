#!/usr/bin/env ruby

# Given an encrypted string, decrypt it
#
# Examples:
#   n fr uwtlwfrrjw
#   pfl xfk zk
#   pdwp swo awou

class CeasarCipher
  def self.decrypt(encrypted_string, shift_by)
    encrypted_string.downcase!
    alphabet = ('a'..'z').to_a
    encrypted_alphabet = alphabet.rotate(shift_by)

    encrypted_string.each_char.map do |letter|
      if encrypted_alphabet.include?(letter)
        alphabet[encrypted_alphabet.index(letter)]
      else
        letter
      end
    end.join
  end

  def self.brute_force(encrypted_string)
    (1..25).each.map do |number|
      decrypted_string = decrypt(encrypted_string, number)
      if valid_phrase?(decrypted_string)
        decrypted_string
      end
    end.compact
  end

  def self.words
    @words ||= IO.readlines('/usr/share/dict/words').map do |word|
      word.downcase.chomp
    end
  end

  def self.valid_word?(word)
    words.include?(word)
  end

  def self.valid_phrase?(phrase)
    phrase.split.all? do |word|
      valid_word?(word)
    end
  end
end


if __FILE__ == $0
  #   n fr uwtlwfrrjw
  #   pfl xfk zk
  #   pdwp swo awou

  puts CeasarCipher.brute_force('n fr uwtlwfrrjw')
  puts CeasarCipher.brute_force('pfl xfk zk')
  puts CeasarCipher.brute_force('pdwp swo awou')
end
