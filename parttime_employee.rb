require './employee.rb'
class ParttimeEmployee < Employee
  require './benefit'
  include Benefit

  def initialize(number, name, address, hourly_pay, number_of_attendances)
    @number = number
    @name = name
    @address = address
    @hourly_pay = hourly_pay
    @number_of_attendances = number_of_attendances
  end

  def rent_subsidy_calculator
    max_subsidy = 20000
    subsidy_rate = 0.2
    calc_value = @hourly_pay * @number_of_attendances * subsidy_rate
    subsidy_amount,judgment_result = self.subsidy_judgement_result(calc_value, max_subsidy)
    if judgment_result
      puts "#{@name}さんは#{subsidy_amount}円の家賃補助がでます。"
    else
      puts "#{@name}さんは東京都港区ではありませんので家賃保補助対象外です！"
    end
  end
end

parttime_employee = ParttimeEmployee.new(100, "田中", "東京都港区区新井",10000, 5)
parttime_employee.rent_subsidy_calculator
