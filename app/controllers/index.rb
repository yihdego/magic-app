get '/' do
  @card = Card.all.sample
  @deck = Deck.all.sample
  erb :index
end
