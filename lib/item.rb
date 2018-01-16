class Item
  TYPES = [:potion, :sword]

  attr_accessor :TYPES

  def initialize
    @type = TYPES.sample
  end

  def interact(player)
    case @type
    when :potion
      puts "You picked up a #{self}."
      player.heal(10)
    when :sword
      puts "You picked up a #{self}."
      player.attack_power += 1
    end
  end

  def to_s
    "a shiny #{@type.to_s}"
  end
end
