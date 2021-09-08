class Show < ActiveRecord::Base
    #     #characters
#     returns the characters associated with the show (FAILED - 9)
#     can be used to build its characters (FAILED - 10)
    has_many :characters
    has_many :actors, through: :characters

#   #network
#     returns the network that the show belongs to (FAILED - 11)
    belongs_to :network

#   #actors_list
#     returns a list of the full names of each actor associated with the show (FAILED - 12)
    def actors_list
        self.actors.map do |actor|
            "#{actor.first_name} #{actor.last_name}"
        end
    end
end