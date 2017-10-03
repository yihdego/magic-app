require 'spec_helper'

describe 'sessions controller' do
  it 'returns 200 status when visiting the sessions login page' do
    get '/sessions/new'
    expect(last_response.status).to eq 200
  end

  it 'returns a 200 status when creating an account' do
    post '/sessions'
    expect(last_response.status).to eq 302
  end
end
