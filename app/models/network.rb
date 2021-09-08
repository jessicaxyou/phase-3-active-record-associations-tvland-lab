class Network < ActiveRecord::Base
#     #shows
#     returns the shows associated with the network (FAILED - 13)
    has_many :shows

#   #sorry
#     apologizes for passing on John Mulaney's Pilot (FAILED - 14)
    def sorry
        self.shows.find_by(name: "John Mulaey's pilot")
        "We're sorry about passing on John Mulaney's pilot"
    end
end
