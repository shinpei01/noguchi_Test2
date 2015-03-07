class Employee
  require './benefit'
  include Benefit

  def initialize(number, name, address)
    @number = number
    @name = name
    @address = address
  end

  def subsidy_judgement_result(calc_value, max_subsidy)
    if self.rent_subsidy_judge(@address)
      if calc_value < max_subsidy
        subsidy_amount = calc_value
        return subsidy_amount, true
      else
        subsidy_amount = max_subsidy
        return subsidy_amount, true
      end
    end
  end
end
