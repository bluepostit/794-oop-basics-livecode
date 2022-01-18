class SlotMachine
  def score(symbols)
    if symbols.uniq.size == 1 # all three are the same
      case symbols[0]
      when 'joker' then return 50
      when 'star' then return 40
      when 'bell' then return 30
      when 'seven' then return 20
      when 'cherry' then return 10
      end
    elsif symbols.uniq.size == 2
      # ...
    else
      return 0
    end
  end
end
