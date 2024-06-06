class User < ApplicationRecord
  has_many :incomes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
