class Hodor

  def self.text
    "hodor"
  end

  def self.number(num)
    [1, num.to_i, 1000].sort[1]
  end

  def self.call(num = 1)
    text * number(num)

  end

end
