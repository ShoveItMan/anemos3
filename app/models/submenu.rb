class Submenu < ApplicationRecord
  belongs_to :menu
  #has_many :items

  validates :title, presence: true, length: { minimum: 3 }
end
