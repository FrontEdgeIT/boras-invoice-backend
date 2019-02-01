class PricePartial < ApplicationRecord
  validates :name, uniqueness: true
end
