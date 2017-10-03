require 'spec_helper'

describe 'sessions controller' do
  it 'returns 200 status when visiting the sessions login page' do
    get '/sessions/new'
    expect(last_response.status).to eq 200
  end

end
