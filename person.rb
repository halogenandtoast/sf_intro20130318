module Animal
  def speak
    puts "I spoke"
  end
end

class Person
  include Animal
  # self == Person
  attr_accessor :name

  def initialize name
    # self == some instance
    @name = name
    foo
  end

  def self.john_doe # self == Person
    # self == Person
    new("John Doe")
  end
end


goose = Person.new("Goose")
Person.john_doe
goose.name = "Matt"

puts goose.name
