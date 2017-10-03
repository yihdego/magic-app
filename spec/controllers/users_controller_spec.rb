require 'spec_helper'

describe 'users controller' do
  it 'returns 200 status when visiting the users login page' do
    get '/users/new'
    expect(last_response.status).to eq 200
  end
end
