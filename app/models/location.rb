class Location < ApplicationRecord
    belongs_to :building
    has_many :users

    def building
        return Location.find_by(id: self.building_id)
    end
end
