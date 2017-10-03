require_relative '../spec_helper'

describe User do
  let(:user) { User.new(name: "Adam", email: 'adamcole@mail.com', password: "Cole") }
  describe 'attributes' do
    it 'has a name' do
      expect(user.name).to eq 'Adam'
    end
    it 'has a email' do
      expect(user.email).to eq 'adamcole@mail.com'
    end
    it 'has a password_hash' do
      expect(user.password_hash).to_not be_nil 
    end
  end
end
