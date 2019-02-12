class Item < ApplicationRecord
    validates_presence_of :title, :category, :price
end
