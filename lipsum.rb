class lipsum

  def self.randomize
    %w(insert lipsums here)
  end

  def self.find(num)
    num = num.to_i
    randomize[num]
  end

end
