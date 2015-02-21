# There are four poker players Mike, Tammi, Brian, Kelly
# Here's their bankrolls before the start of the next hand:
# Mike is at $150, Tammi is at $145, Brian is at $150
# and Kelly is at $270
# The next hand begins and the anti is $10
# Tammi bets $50, Kelly calls, Mike sees Tammi's bet and
# raises $20, Brian calls, Mike calls, Tammi and Kelly fold.
# Mike has the better hand. What are each of the player's
# bankrolls now?

@pot = 0

def print_players
  @players.each do |player, pot|
    puts "#{player} has #{pot}"
  end
  puts "Pot is #{@pot}"
end

@players = {
  :mike => 150,
  :tammi => 145,
  :brian => 150,
  :kelly => 270
}

# Anti up!
@players.each do |player, _|
  @players[player] -= 10
  @pot += 10
end

print_players

# Tammi bets $50
current_bet = 50
@players[:tammi] -= current_bet
@pot += current_bet

# Kelly calls
@players[:kelly] -= current_bet
@pot += current_bet

# Mike raises $20
current_bet += 20
@players[:mike] -= current_bet
@pot += current_bet

# Brian calls
@players[:brian] -= current_bet
@pot += current_bet

# Mike calls

# Tammi and Kelly fold

# Mike wins
@players[:mike] += @pot
@pot = 0

print_players
