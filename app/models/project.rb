class Project < ApplicationRecord
  include RecentlyOrderable

  validates :title, length: { minimum: 2, maximum: 140 }
  validates :description, length: { maximum: 500 }

  has_many :comments
end
