get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  p "*" * 50
  p params
  p "*" * 50
  user = User.new(params[:user])
  user.password = params[:password]
  if user.save
    redirect '/'
  else
    p "not working"
    p user.errors
    @error = "Invalid username, email or password"
    erb :'/users/new'
  end
end
