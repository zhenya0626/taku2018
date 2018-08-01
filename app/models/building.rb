class Building < ApplicationRecord
    has_many :locations

    def locations
        return Location.where(building_id: self.id)
    end
end
