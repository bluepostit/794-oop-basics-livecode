require_relative "../citizen"

describe Citizen do
  describe '#can_vote?' do
    it 'returns true when age is over 18' do
      expected = true
      result = Citizen.new('Laura', 'Sucher', 24).can_vote?
      expect(result).to eq(expected)
    end

    it 'returns false when age is under 18' do
      expected = false
      result = Citizen.new('Laura', 'Sucher', 11).can_vote?
      expect(result).to eq(expected)
    end
  end
end
