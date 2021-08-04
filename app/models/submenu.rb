class Submenu < ApplicationRecord
  belongs_to :menu
  has_many :items, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3 }
end
