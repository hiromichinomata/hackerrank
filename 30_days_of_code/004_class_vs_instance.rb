class Person
    attr_accessor :age
    def initialize(initialAge)
        # Add some more code to run some checks on initialAge
        if initialAge < 0
            initialAge = 0
            puts "Age is not valid, setting age to 0."
        end
        self.age = initialAge
    end
    def amIOld()
        if self.age < 13
            puts "You are young."
        elsif 13 <= self.age && self.age < 18
            puts "You are a teenager."
        else
            puts "You are old."
        end
      # Do some computations in here and print out the correct statement to the console
    end
    def yearPasses()
      # Increment the age of the person in here
      self.age += 1
    end
end

T=gets.to_i
for i in (1..T)do
    age=gets.to_i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
    end
    p.amIOld
    puts ""
end
