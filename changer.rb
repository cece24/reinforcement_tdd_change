class Changer
  def self.make_change(num)
    change_array = []
    if num % 25 == 0
      change_array << 25
    end

    return change_array
  end
end
