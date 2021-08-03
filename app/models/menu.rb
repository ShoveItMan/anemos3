class Menu < ApplicationRecord
  has_many :submenus
  
  validates :title, presence: true, length: { minimum: 3 }
end
