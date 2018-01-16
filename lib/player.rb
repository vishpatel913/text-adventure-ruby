class Player
  attr_accessor :hit_points, :attack_power
  attr_accessor :x_coord, :y_coord

  MAX_HIT_POINTS = 100

  def initialize
    @hit_points        = MAX_HIT_POINTS
    @attack_power      = 1
    @x_coord, @y_coord = 0, 0
  end

  def alive?
    @hit_points > 0
  end

  def hurt(amount)
    @hit_points -= amount
  end

  def heal(amount)
    @hit_points += amount
    @hit_points = [@hit_points, MAX_HIT_POINTS].min
  end

  def kill
    puts "Game over!"
    exit
  end

  def print_status
    puts "*" * 50
    puts "HP: #{@hit_points}/#{MAX_HIT_POINTS}"
    puts "AP: #{@attack_power}"
    puts "*" * 50
  end
end
