get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.create(params[:user])
  if user == nil
    redirect '/'
  else
    @error = "Invalid username, email or password"
    erb :'/users/new'
  end
end
