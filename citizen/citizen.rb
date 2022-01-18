class Citizen
  def initialize(first_name, last_name, age)
    @age = age
    @first_name = first_name
    @last_name = last_name
  end
  def can_vote?
    if @age >= 18
      return true
    else
      return false
    end
  end
end
