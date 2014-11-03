class Animal 
  attr_accessor :num_legs, :colour, :size
  def initialize (num_legs, colour, size)
    @num_legs = num_legs
    @colour = colour
    @size = size
  end 
end

p Animal.new("varies", "varies", "varies")


class Mammal < Animal
  attr_accessor :primary_dwelling
  def initialize(primary_dwelling)
   super("varies", "varies", "varies")
   @primary_dwelling = primary_dwelling
  end
end

p Mammal.new("varies")


class Amphibian < Animal
  attr_accessor :primary_dwelling
  def initialize(primary_dwelling)
    super("4", "green", "small to medium")
    @primary_dwelling = primary_dwelling
  end
end 

p Amphibian.new("water")


class Primate < Mammal
  attr_accessor :likes_to_eat
  def initialize(likes_to_eat)
    super("jungle")
    @num_legs = 2
    @colour = "medium-light to dark"
    @size = "medium to large"
    @likes_to_eat = likes_to_eat
  end
end

p Primate.new("bannanas")


class Frog < Amphibian
  attr_accessor :can_swim
  def initialize(can_swim)
    super("water")
    @size = "tiny to small"
    @can_swim = can_swim
  end
end

p Frog.new(true)


class Bat < Mammal
  attr_accessor :uses_sonar
  def initialize(uses_sonar)
    super("caves")
    @num_legs = 2
    @colour = "medium-light to dark"
    @size = "medium to large"
    @uses_sonar = uses_sonar
  end
end

p Bat.new(true)


class Parrot < Animal
  attr_accessor :primary_dwelling
  def initialize(primary_dwelling)
   super(2, "multi-coloured", "small to small-medium")
   @primary_dwelling = primary_dwelling
  end
end

p Parrot.new("jungle")


class Chimpanzee < Primate
  attr_accessor :intelligence
  def initialize(intelligence)
    super("bannanas")
    @intelligence = intelligence
  end
end

p Chimpanzee.new("very high")
