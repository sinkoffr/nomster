class Place < ApplicationRecord
    paginates_per 5
    belongs_to :user
    geocoded_by :address
    after_validation :geocode
    
    validates :name, length: {minimum: 3}
    validates :address, :description, presence: true
end
