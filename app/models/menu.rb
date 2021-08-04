class Menu < ApplicationRecord
  has_many :submenus, dependent: :destroy
  
  validates :title, presence: true, length: { minimum: 3 }
end
