class Changer
  def self.make_change(num)
    change_array = []

    while num > 0
      if (num % 25) != num
        factor = num / 25
        factor.times do
          change_array << 25
          num -= 25
        end
      elsif (num % 10) != num
        factor = num / 10
        factor.times do
          change_array << 10
          num -= 10
        end
      elsif (num % 5) != num
        factor = num / 5
        factor.times do
          change_array << 5
          num -= 5
        end
      else
        num.times do
          change_array << 1
          num -= 1
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
