class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  # def get_married(person)
  #   self.partner = person
  #   person.partner = self
  # end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      # our error handling
      begin
        raise PartnerError
        # method creates an instance of the PartnerError class and puts out the result of calling message on that instance
      rescue PartnerError => error
        puts error.message
      end
    end
  end
  # Add the following two lines:
  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




