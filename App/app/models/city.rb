class City < ApplicationRecord
  has_many :docs
  has_many :patients
  has_many :appointments
end
