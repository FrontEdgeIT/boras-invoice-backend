class Issuer < ApplicationRecord
    validates :name, uniqueness: true
end
