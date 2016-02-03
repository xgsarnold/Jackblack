
def player_hand
  puts "How many points do you have in your hand?"
  gets.chomp
end

def dealer_hand
  puts "How many points does the dealer have faceup?"
  gets.chomp
end

def ace
  puts "Do you have an ace?"
  gets.chomp
end

def pairs
  puts "Do you have pairs?"
  gets.chomp
end

hard = Hash.new()
hard[5] = Hash.new("Hit!")
hard[6] = Hash.new("Hit!")
hard[7] = Hash.new("Hit!")
hard[8] = Hash.new
hard[8][5] = "Double Down!"
hard[8][6] = "Double Down!"
hard[9] = Hash.new("Double Down!")
hard[9][2] = "Double Down!"
hard[9][3] = "Double Down!"
hard[9][4] = "Double Down!"
hard[9][5] = "Double Down!"
hard[9][6] = "Double Down!"
hard[10] = Hash.new("Double Down!")
hard[10][10] = "Hit!"
hard[10][a] = "Hit!"
hard[11] = Hash.new("Double Down!")
hard[12] = Hash.new("Hit!")
hard[12][4] = "Stay ..."
hard[12][5] = "Stay ..."
hard[12][6] = "Stay ..."
hard[13] = Hash.new("Stay ...")
hard[13][2] = "Hit!"
hard[13][3] = "Hit!"
hard[13][4] = "Hit!"
hard[13][5] = "Hit!"
hard[13][6] = "Hit!"
hard[14] = Hash.new("Stay ...")
hard[14][2] = "Hit!"
hard[14][3] = "Hit!"
hard[14][4] = "Hit!"
hard[14][5] = "Hit!"
hard[14][6] = "Hit!"
hard[15] = Hash.new("Stay ...")
hard[15][] = "Hit!"
hard[15][] = "Hit!"
hard[15][] = "Hit!"
hard[15][] = "Hit!"
hard[15][] = "Hit!"
hard[16] = Hash.new("Stay ...")
hard[16][] = "Hit!"
hard[16][] = "Hit!"
hard[16][] = "Hit!"
hard[16][] = "Hit!"
hard[16][] = "Hit!"


soft = Hash.new()

pair = {}
