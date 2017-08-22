
CARDS_IN_A_DECK = 52
CARDS_OF_EACH_RANK = 4

#STRETCH SESSION
#use HASH when we want to keep track of something

def more_than_four_cards_of_each_rank_played(input)

   played_cards = input.chars

   played_cards_tracker = {}

    #%w(2 3 4) is easy way of writing ['2', '3', '4']

   %w(2 3 4 5 6 7 8 9 T J Q K A).each {|card| played_cards_tracker[card] = 0 }
   played_cards.each {|card| played_cards_tracker[card] +=1}

   if played_cards_tracker.select {|k,v| v > CARDS_OF_EACH_RANK}.size > 0
     puts "cheating"
   end


end

 #This is a common problem in real life. Example, Amazon checking which
 #costumer has only one orderend

  def card_count(input)

  return false if input.size  > CARDS_IN_A_DECK

  #convert input string to array of chars
  played_cards = input.chars

  #COMPUTE THE COUNT
  count = 0
  played_cards.each do |card|
    # if card < 7, +1
    #if 7, 8 , 9 ,.... no change
  #   #if T,J,Q,K,A .... -1
  #method 1 using if and elsif
  #   if card == '2' || card == '3' || card = '4' || card = '5' card = '6'
  #     count += 1
  #   elsif card == '7' || card == '8' || card == '9'
  #     nil
  #   elsif card == 'T' || card == 'J' || card == 'Q' || card == 'K' || card == 'A'
  #   count -= 1
  # end

#method 2 using case and when
  count += case card
  when '2', '3', '4', '5','6' then   1     #count += 1  this can be reduced by putting count += before CASE
  when 'T','J', 'Q', 'K', 'A' then    -1   #count -= 1
   else 0
   end
end
      return count
end

puts card_count('23456789TJQKA23456789TJQKA23456789TJQKA23456789TJQKA33')   #false
puts card_count('K2T6AA')     #-2
puts card_count('798TT23')    #0
puts card_count('235T2')      #3
puts more_than_four_cards_of_each_rank_played('A3A4AAA')    #false
