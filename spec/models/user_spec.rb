require_relative '../spec_helper'

describe User do
  let(:user) { User.new(name: "Adam", email: 'adamcole@email.com', password: "Cole") }
  describe 'attributes' do
    it 'has a name' do
      expect(user.name).to eq 'Adam'
    end
    it 'has a email' do
      expect(user.email).to eq 'adamcole@email.com'
    end
    it 'has a password_hash' do
      expect(user.password_hash).to_not be_nil
    end
  end

  describe 'authentication' do
    it 'will return user if authentication passes' do
      user.save
      expect(user.login('adamcole@email.com','Cole')).to eq(user)
    end
    it 'will return nil if authentication fails' do
      user.save
      expect(user.login('adamcole@email.com','Baybay')).to eq(nil)
    end
  end
end
