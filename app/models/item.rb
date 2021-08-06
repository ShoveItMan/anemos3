class Item < ApplicationRecord
  belongs_to :submenu

  validates :name, presence: true, length: { minimum: 3 }
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/, message: "must match the correct format" }  
end
