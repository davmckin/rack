class Kotor

  def self.text
    "Four thousand years before the rise of the Galactic Empire, the Republic verges on collapse. DARTH MALAK, last surviving apprentice of the DARK LORD REVAN, has unleashed an invincible Sith armada upon an unsuspecting galaxy."
  end

  def self.number(num)
    [1, num.to_i, 1000].sort[1]
  end

  def self.call(num = 1)
    text * number(num)

  end

end
