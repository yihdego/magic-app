require_relative '../spec_helper'

describe MagicSet do
  let(:magic_set) { MagicSet.new(name: 'dtk') }
  describe 'attributes' do
    it 'has a name' do
      expect(magic_set.name).to eq "dtk"
    end
  end
end
