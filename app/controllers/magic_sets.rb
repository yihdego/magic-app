get '/magic_sets' do
  @magic_sets = MagicSet.all
  erb :'/magic_sets/index'
end

get '/magic_sets/:id' do
  p params
  @magic_set = MagicSet.find_by(name: params[:id])
  p @magic_set
  # if request.xhr?
  #   erb :'/cards/dtk/_card-details', layout: false
  # else
    erb :'/magic_sets/show'
  # end
end
