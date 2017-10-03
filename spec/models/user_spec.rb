require_relative '../spec_helper'

describe User do
  let(:user) { User.new(name: "Bobby", email: 'bobby@mail.com', password: "bobby") }
  describe 'attributes' do
    it 'has a name'
  end
end
