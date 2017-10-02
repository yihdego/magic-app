get '/cards' do
  erb :'/cards/index'
end

get '/cards/dtk' do
  @cards = Card.all
  erb :'/cards/dtk/index'
end

get '/cards/dtk/new' do
  erb :'/cards/dtk/new'
end

post '/cards/dtk' do
  Card.create(params[:entry])
  redirect '/cards/dtk'
end

#show
get '/cards/dtk/:id' do
  p params
  @card = Card.find(params[:id])
  p @card
  if request.xhr?
    erb :'/cards/dtk/_card-details', layout: false
  else
    erb :'/cards/dtk/show'
  end
end

#edit
get '/cards/dtk/:id/edit' do
  @card = Card.find(params[:id])
  erb :'/cards/dtk/edit'
end

put '/cards/dtk/:id' do
  @card = Card.find(params[:id])
  @card.update(params[:entry])
  erb erb :'/cards/dtk/show'
end

delete '/cards/dtk/:id' do
  Card.find(params[:id]).destroy!
  redirect '/cards/dtk'
end
