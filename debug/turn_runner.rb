#!/Users/johnhennerich/.rbenv/shims/ruby
require 'pry'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

card1 = Card.new(:heart, 'Jack', 11)
card2 = Card.new(:heart, '10', 10)
card3 = Card.new(:heart, '9', 9)
card4 = Card.new(:diamond, 'Jack', 11)
card5 = Card.new(:heart, '8', 8)
card6 = Card.new(:diamond, 'Queen', 12)
card7 = Card.new(:heart, '3', 3)
card8 = Card.new(:diamond, '2', 2)
card9 = Card.new(:spade, '8',8)

#deck1 = Deck.new([card1, card2, card5, card8])
deck1 = Deck.new([card1, card2, card5, card8])
#deck2 = Deck.new([card3, card4, card6, card7])
deck2 = Deck.new([card4, card3, card9, card7])

player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)

turn = Turn.new(player1, player2)

Take a turn
turn = Turn.new(player1, player2)

turn.type
round_winner = turn.winner
turn.pile_cards

if round_winner != "No Winner"
 turn.award_spoils
else
 puts "No winner this turn"
end

pry.binding

turn.player2

turn.spoils_of_war

puts "type is #{turn.type}"

#winner = turn.winner
#puts "winner is #{winner.name}"

#turn.pile_cards
#turn.award_spoils(winner)
#binding.pry
#pry.binding

#turn.spoils_of_war
#turn.award_spoils(winner)

#player1.deck
#player2.deck
