get '/decks/new' do
  erb :'/decks/new'
end

post '/decks' do
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

put '/decks/:id' do
  card = Card.find_by(name: params[:card_name])
  @deck = Deck.find(params[:id])
  entry = @deck.add_decklist(card, params[:quantity])
  entry_error = entry.errors.full_messages
  p card
  p '*' * 100
  if card == nil
    @error = "Card not in database"
  end
  if request.xhr?
    if !card
      content_type 'application/JSON'
      status 400
      errors = ["Card not found"]
      {errors: errors}.to_json

    elsif entry_error.length == 1
      content_type 'application/JSON'
      status 400
      {errors: entry_error}.to_json
    else
      content_type "application/JSON"
      entry = @deck.entries.last
      entry.to_json
      erb :'/decks/_entry-show', layout: false, locals: { entry: entry }
    end
  else
    erb :'/decks/show'
  end
end

delete '/decks/:id' do
  @deck = Deck.find(params[:id])
  @deck.entries.destroy_all
  @deck.destroy
  redirect "/users/#{session[:user_id]}"
end
