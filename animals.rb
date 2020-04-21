class Bird
  attr_reader :name, :age
  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end
  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid"
    end
    @age = value
  end
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
  def move(destination)
    puts "#{@name} flying to the #{destination}."
  end
  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog
  attr_reader :name, :age
  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end
  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid"
    end
    @age = value
  end
  def talk
    puts "#{@name} says Bark!"
  end
  def move(destination)
    puts "#{@name} running to the #{destination}."
  end
  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Cat
  attr_reader :name, :age
  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end
  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid"
    end
    @age = value
  end
  def talk
    puts "#{@name} says Meow!"
  end
  def move(destination)
    puts "#{@name} running to the #{destination}."
  end
  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.name = "Kesha"
bird.age = 2
dog.name = "Sharik"
dog.age = 4
cat.name = "Murzik"
cat.age = 5

puts ""
bird.move("tree")
dog.talk
bird.talk
cat.move("house")
puts ""
bird.report_age
dog.report_age
cat.report_age
