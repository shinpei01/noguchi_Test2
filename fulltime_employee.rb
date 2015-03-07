require './employee.rb'
class FulltimeEmployee < Employee
  require './benefit'
  include Benefit

  def initialize(number, name, address, salary)
    @number = number
    @name = name
    @address = address
    @salary = salary
  end

  def rent_subsidy_calculator
    max_subsidy = 45000
    subsidy_rate = 0.2
    calc_value = @salary * subsidy_rate
    subsidy_amount,judgment_result = self.subsidy_judgement_result(calc_value, max_subsidy)
    if judgment_result
      puts "#{@name}さんは#{subsidy_amount}円の家賃補助がでます。"
    else
      puts "#{@name}さんは東京都港区ではありませんので家賃保補助対象外です！"
    end
  end
end

fulltime_employee = FulltimeEmployee.new(100, "野口", "東京都中野区新井", 210000)
fulltime_employee.rent_subsidy_calculator
