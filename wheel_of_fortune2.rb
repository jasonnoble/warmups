#!/usr/bin/env ruby

# 1) Open /usr/share/dict/words and loop over it's content
#      using .each_line.
# 2) For each word, make it lower case, then scan it
#      for letters.
# 3) For each letter, increase the numbers of times
#      you've seen that letter.
# 4) Create a vowels variable that has the vowels and
#      how many times each vowel occurs.
# 5) Create a consonants variable that has the consonants and
#      how many times each consonant occurs.
# 6) Print out the top three vowels and how many times they occur
# 7) Print out the top five vowels and how many times they occur

letters = Hash.new(0)

File.open("/usr/share/dict/words", "r").each_line do |word|
  word.downcase.scan(/./).each do |letter|
    letters[letter] += 1
  end
end

puts letters.sort_by{|_, occurrences| occurrences }

vowels = letters.select do |letter, _|
  %w(a e i o u y).include?(letter)
end

consonants = letters.reject do |letter, _|
  %w(a e i o u y).include?(letter)
end

top_3_vowels = vowels.sort_by{|_, occurrences| occurrences}.reverse.first(3)
top_5_consonants = consonants.sort_by{|_, occurrences| occurrences}.reverse.first(5)

puts "The top three vowels: #{top_3_vowels}"
puts "The top five consonants: #{top_5_consonants}"
