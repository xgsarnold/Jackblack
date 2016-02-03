
def card_1?
  puts "What's your first card?"
  gets.chomp
end

def card_2?
  puts "What's your second card?"
  gets.chomp
end

def dealer_card?
  puts "How many points does the dealer have faceup?"
  gets.chomp
end

#def ace
#  puts "Do you have an ace?"
#  gets.chomp
#end
#
#def pairs
#  puts "Do you have pairs?"
#  gets.chomp
#end

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
hard[10]["a"] = "Hit!"
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
hard[15][7] = "Hit!"
hard[15][8] = "Hit!"
hard[15][9] = "Hit!"
hard[15][10] = "Hit!"
hard[15]["a"] = "Hit!"
hard[16] = Hash.new("Stay ...")
hard[16][7] = "Hit!"
hard[16][8] = "Hit!"
hard[16][9] = "Hit!"
hard[16][10] = "Hit!"
hard[16]["a"] = "Hit!"

soft = Hash.new()
soft[13] = Hash.new("Hit!")
soft[13][4] = "Double Down!"
soft[13][5] = "Double Down!"
soft[13][6] = "Double Down!"
soft[14] = Hash.new("Hit!")
soft[14][4] = "Double Down!"
soft[14][5] = "Double Down!"
soft[14][6] = "Double Down!"
soft[15] = Hash.new("Hit!")
soft[15][4] = "Double Down!"
soft[15][5] = "Double Down!"
soft[15][6] = "Double Down!"
soft[16] = Hash.new("Hit!")
soft[16][4] = "Double Down!"
soft[16][5] = "Double Down!"
soft[16][6] = "Double Down!"
soft[17] = Hash.new("Hit!")
soft[17][2] = "Double Down!"
soft[17][3] = "Double Down!"
soft[17][4] = "Double Down!"
soft[17][5] = "Double Down!"
soft[17][6] = "Double Down!"
soft[18] = Hash.new("Stay ...")
soft[18][3] = "Double Down!"
soft[18][4] = "Double Down!"
soft[18][5] = "Double Down!"
soft[18][6] = "Double Down!"
soft[18][9] = "Hit!"
soft[18][10] = "Hit!"
soft[19] = Hash.new("Stay ...")
soft[19][6] = "Double Down!"
soft[20] = Hash.new("Stay ...")
soft[21] = Hash.new("Stay ...")

pair = Hash.new()
pair[2] = Hash.new("Split!")
pair[2][8] = "Hit!"
pair[2][9] = "Hit!"
pair[2][10] = "Hit!"
pair[2]["a"] = "Hit!"
pair[3] = Hash.new()
pair[3][9] = "Hit!"
pair[3][10] = "Hit!"
pair[3]["a"] = "Hit!"
pair[4] = Hash.new("Hit!")
pair[4][4] = "Split!"
pair[4][5] = "Split!"
pair[4][6] = "Split!"
pair[5] = Hash.new("Double Down!")
pair[5][10] = "Hit!"
pair[5]["a"] = "Hit!"
pair[6] = Hash.new("Split!")
pair[6][8] = "Hit!"
pair[6][9] = "Hit!"
pair[6][10] = "Hit!"
pair[6]["a"] = "Hit!"
pair[7] = Hash.new("Split!")
pair[7][9] = "Hit!"
pair[7][10] = "Stand ..."
pair[7]["a"] = "Hit!"
pair[8] = Hash.new("Split!")
pair[9] = Hash.new("Split!")
pair[9][7] = "Stand ..."
pair[9][9] = "Stand ..."
pair[9][10] = "Stand ..."
pair[10] = Hash.new("Stand ...")
pair["a"] = Hash.new("Split!")

card_1 = card_1?
card_2 = card_2?
dealer_card = dealer_card?

if card_1 == "a"
  card_1 = 11
elsif card_2 == "a"
  card_2 = 11
elsif dealer_card == "a"
  dealer_card = 11
end

if card_1 == card_2
  puts "You should #{pair[card_1.to_i][dealer_card.to_i]}"
elsif card_1 != 11 && card_2 != 11
  puts "You should #{hard[(card_1.to_i + card_2.to_i)][dealer_card.to_i]}"
elsif card_1 == 11 || card_2 == 11
  puts "You should #{soft[(card_1.to_i + card_2.to_i)][dealer_card.to_i]}"
end

#if card_1 == "a" || card_2 == "a"
