#!/usr/bin/env ruby

random_number = rand(10) + 1
user_guess = 0

def ask_for_guess
  print 'What is your guess? '
  user_guess = gets.chomp.to_i
end

def analyze_guess(random_number, user_guess)
  if user_guess == random_number
    puts 'You got it!'
  elsif user_guess > random_number
    puts 'Too high!'
  else
    puts 'Too low!'
  end
end

while user_guess != random_number
  user_guess = ask_for_guess
  analyze_guess(random_number, user_guess)
end
