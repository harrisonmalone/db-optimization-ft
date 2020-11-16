class Home < ApplicationRecord
  has_one :address
  has_one_attached :image
end
