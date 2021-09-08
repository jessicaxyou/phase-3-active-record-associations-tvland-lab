require 'pry'

class Actor < ActiveRecord::Base
    #     #characters
#     returns a list of characters associated with the actor (FAILED - 5)
    has_many :characters
    #   #shows
#     returns the shows associated with the actor through their characters (FAILED - 6)
    has_many :shows, through: :characters




#   #full_name
#     returns the actor's full name (FAILED - 7)
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

#   #list_roles
#     returns a list of roles for the actor using the character name and show name (FAILED - 8)
    def list_roles
        self.characters.map do |actor|
            "#{actor.name} - #{actor.show.name}"
        end
    end

end