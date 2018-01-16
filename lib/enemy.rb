class Enemy
  attr_accessor :hit_points, :attack_power

  MAX_HIT_POINTS = 10

  def initialize
    @hit_points   = MAX_HIT_POINTS
    @attack_power = 1
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def to_s
    "an enemy!"
  end

  def interact(player)
    while player.alive?
      puts "You inflicted #{player.attack_power} damage to the enemy."
      hurt(player.attack_power)
      break unless alive?
      player.hurt(@attack_power)
      puts "The enemy inflicts #{player.attack_power} damage to you."
    end
  end
end
