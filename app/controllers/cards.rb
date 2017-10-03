get '/cards' do
  @cards = Card.all
  erb :'/cards/index'
end

post '/cards/dtk' do
  Card.create(params[:entry])
  redirect '/cards/dtk'
end

get '/cards/:id' do
  @card = Card.find(params[:id])
  erb :'/cards/show'
end

#show
get '/magic_sets/:id/cards/:id' do
  p params
  @card = Card.find(params[:id])
  p @card
  # if request.xhr?
  #   erb :'/cards/_card-details', layout: false
  # else
    erb :'/cards/show'
  # end
end
