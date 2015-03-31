#!/usr/bin/env ruby

letters = ('a'..'z').to_a

shift_by = ARGV[0].to_i
encrypted_string = ARGV[1].downcase

puts "Shift_by: #{shift_by}"
puts "Encrypted_string: #{encrypted_string}"

encrypted_letters = letters.rotate(shift_by)

decrypted_string = encrypted_string.each_char.map do |letter|
  if encrypted_letters.include?(letter)
    letters[encrypted_letters.index(letter)]
  else
    letter
  end
end.join

puts "Shift_by: #{shift_by}"
puts "Encrypted_string: #{encrypted_string}"
puts "Decrypted_string: #{decrypted_string}"

