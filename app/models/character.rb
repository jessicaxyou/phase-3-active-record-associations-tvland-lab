class Character < ActiveRecord::Base
        #  #actor
#  returns the actor that the character belongs to (FAILED - 1)
    belongs_to :actor
    #  #show
#    returns the show that the character belongs to (FAILED - 2)
#    can be used to build its associated show (FAILED - 3)
    belongs_to :show

#  #say_that_thing_you_say
#    returns a string with the character's name and catchphrase (FAILED - 4)
    def say_that_thing_you_say
        "#{self.name} always says: #{catchphrase}"
    end

end