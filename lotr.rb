class Lotr

  def self.text
  "Folk in those stories had lots of chances of turning back, only they didn’t. They kept going."
  end

  def self.number(num)
    [1, num.to_i, 1000].sort[1]
  end

  def self.call(num = 1)
    text * number(num)

  end

end
