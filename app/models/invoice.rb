class Invoice < ApplicationRecord
    validates :name, uniqueness: true
end
