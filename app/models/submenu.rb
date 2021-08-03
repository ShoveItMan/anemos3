class Submenu < ApplicationRecord
  belongs_to :menu

  validates :title, presence: true, length: { minimum: 3 }
end
