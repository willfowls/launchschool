SUITS = %w[Spades Clubs Hearts Diamonds] # Constant
VALUES = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace] # Constant

def prompt(msg)
  puts msg
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i.zero? # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)
  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_buster
  elsif dealer_total < player_total
    :player
  elsif player_total < dealer_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)
  case result
  when :player_busted
    prompt('You busted! Dealer wins!')
  when :dealer_busted
    prompt('Dealer busted! You win!')
  when :player
    prompt('You win!')
  when :dealer
    prompt('Dealer wins.')
  when :tie
    prompt("It's a tie.")
  end
end

def play_again?
  prompt '--------'
  prompt 'Would you like to play again? Y for yes, N for no.'
  ans = gets.chomp.downcase
  ans.start_with? 'y'
end

loop do
  prompt 'Welcome to Twenty One!'

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has #{dealer_cards[0]} and another card."
  prompt "You have #{player_cards[0]} and #{player_cards[1]}, totaling #{total(player_cards)}."

  loop do
    player = nil
    loop do
      prompt 'Would you like to hit or stay?'
      player = gets.chomp.downcase
      break if player.start_with?('s') || player.start_with?('h')

      prompt 'Sorry, you must enter hit or stay.'
    end

    if player.start_with?('h')
      player_cards << deck.pop
      prompt 'You chose to hit.'
      prompt "Your cards are now #{player_cards}"
      prompt "Your total is now #{total(player_cards)}"
    end

    break if player == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  prompt 'Dealer turn...'

  loop do
    break if total(dealer_cards) >= 17

    prompt 'Dealer hits!'
    dealer_cards << deck.pop
    prompt "Dealer now has #{dealer_cards}, totaling #{total(dealer_cards)}"
  end

  if busted?(dealer_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stayed at #{total(dealer_cards)}"
  end

  prompt '------------------'
  prompt "Dealer has #{dealer_cards}, totaling #{total(dealer_cards)}"
  prompt "You have #{player_cards}, totaling #{total(player_cards)}"
  display_results(dealer_cards, player_cards)

  break unless play_again?
end

prompt 'Thank you for playing Twenty One! Goodbye!'
