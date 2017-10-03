require 'spec_helper'

describe 'users controller' do
  it 'returns 200 status when visiting the users login page' do
    get '/users/new'
    expect(last_response.status).to eq 200
  end

  it 'returns a 200 status when creating an account' do
    post '/users'
    expect(last_response.status).to eq 302
  end
end
