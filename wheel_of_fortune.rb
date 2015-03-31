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

letters.sort_by{|k,v| v}.each do |letter, number_of_occurrences|
  puts "#{letter} occurs #{number_of_occurrences} times"
end

vowels = letters.select do |letter, occurrances|
  %w(a e i o u y).include?(letter)
end

consonants = letters.reject do |letter, occurrances|
  %w(a e i o u y).include?(letter)
end

print "Top 3 vowels: "
vowels.sort_by{|k,v| v}.reverse.first(3).each do |letter, occurrances|
  print "#{letter} (#{occurrances}), "
end
puts ''

print "Top 5 consonants: "
consonants.sort_by{|k,v| v}.reverse.first(5).each do |letter, occurrances|
  print "#{letter} (#{occurrances}), "
end
puts ''
