class Income < ApplicationRecord
    validates :title, presence: true
    validates :value, presence: true
    belongs_to :user

    def price
        ActionController::Base.helpers.number_to_currency(self[:value], :unit => "R$ ", :separator => ",", :delimiter => ".")
    end
end
