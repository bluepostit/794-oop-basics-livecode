require_relative '../slot_machine'

def test_scenario(symbols, result)
  it "returns #{result} for #{symbols[0]}, #{symbols[1]}, #{symbols[2]}" do
    score = SlotMachine.new.score(symbols)
    expect(score).to eq(result)
  end
end

describe SlotMachine do
  describe '#score' do
    test_scenario(%w[joker star bell], 0)
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)
    test_scenario(%w[cherry cherry joker], 5)
  end
end
