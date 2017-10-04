get '/decks/new' do
  erb :'/decks/new'
end

post '/decks' do
  p params
  card = Card.find_by(name: params[:card_name])
  @deck = Deck.create(name: params[:name], user_id: session[:user_id])
  @deck.add_decklist(card, params[:quantity])
  if @deck
    redirect "/decks/#{@deck.id}"
  else
    @error = "Dont forget a name"
    erb :'/decks/new'
  end
end

get '/decks/:id' do
  erb :'/decks/show'
end

get '/users/:user_name/decks/:id' do
  @deck = Deck.find(params[:id])
  erb :'/decks/show'
end
