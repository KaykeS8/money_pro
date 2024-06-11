class Income < ApplicationRecord
    validates :title, presence: true
    validates :value, presence: true
    belongs_to :user
end
