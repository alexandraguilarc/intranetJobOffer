class Joboffer < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :positions
end
