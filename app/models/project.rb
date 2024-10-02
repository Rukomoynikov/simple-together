class Project < ApplicationRecord
  scope :recently_updated, -> { order(updated_at: :desc) }

  validates :title, length: { minimum: 2, maximum: 140 }
  validates :description, length: { maximum: 500 }

  has_many :comments
end
