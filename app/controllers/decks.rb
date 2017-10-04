get '/decks/new' do
  erb :'/decks/new'
end

post '/decks' do
  @deck = Deck.new(params[:deck])
  if @deck.save
    redirect '/decks/:id'
  else
    @error = "Dont forget a name"
    erb :'/decks/new'
  end
end

get '/decks/:id' do
  erb :'/deck/show'
end

get '/users/:user_name/decks/:id' do
  @deck = Deck.find(params[:id])
  erb :'/decks/show'
end
