class Changer
  def self.make_change(num)
    change_array = []
    change_types = [25, 10, 5, 1]

    while num > 0
      change_types.each do |change|
        if (num % change) != num
          factor = num / change
          factor.times do
            change_array << change
            num -= change
          end
        end
      end
    end

    return change_array
  end
end

# check if divible by 25
# check how many times divisible by 25
# append 25 to array, as many times as original number is divisible by 25
# check if remainder is divisble by 10
# check how many times divisible by 10
# etc ...
