# The Donut shop baked three dozen donuts this morning
# Ted purchased 8 donuts
# Julie purchased 11 donuts
# How many donuts can Bob purchase?

donuts_baked = 3 * 12
ted_donuts = 8
julie_donuts = 11

remaining_donuts = donuts_baked - ted_donuts - julie_donuts
puts "Welcome Bob, we have #{remaining_donuts} donuts left"
