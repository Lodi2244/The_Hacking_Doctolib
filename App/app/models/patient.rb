class Patient < ApplicationRecord
  has_many :appointments
  has_many :docs, through: :appointments
end
