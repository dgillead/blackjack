require_relative 'deck'
require_relative 'player'
require_relative 'dealer'

deck = Deck.new
player = Player.new
dealer = Dealer.new

puts 'Welcome to BlackJack!'
2.times do
  player.hit(deck.get_card)
  dealer.hit(deck.get_card)
end
puts "The dealer\'s card is #{dealer.cards[0]}."
loop do
  puts "Your cards are #{player.cards}."
  puts "Do you want to hit or stay?"
  response = gets.chomp
  if response == 'hit'
    player.hit(deck.get_card)
    if player.check_score > 21
      puts 'You lose!'
      break
    elsif player.check_score == 21
      puts 'You Win!'
      break
    end
  end

  if dealer.check_score < 17
    dealer.hit(deck.get_card)
    if dealer.check_score > 21
      puts 'You Win!'
    elsif dealer.check_score == 21
      puts 'You Lose!'
    end
  end
end
