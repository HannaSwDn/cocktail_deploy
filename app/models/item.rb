class Item < ApplicationRecord
    validates_presence_of :title, :category, :description, :price
end
