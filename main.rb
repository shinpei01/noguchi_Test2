class Nabeatsu
  def initialize(maxlength,divider)
      @maxlength = maxlength
      @divider = divider
  end

  def nabeatsu_countup
    maxlength = @maxlength
    divider = @divider
    for i in 1..maxlength do
      if i % divider == 0 || i.to_s.include?(divider.to_s)
        puts "stupid"
      else
        puts i
      end
    end
  end
end

nabeatsu = Nabeatsu.new(50,3)
nabeatsu.nabeatsu_countup
