class Comment < ApplicationRecord
  include RecentlyOrderable

  validates :body, length: { minimum: 2 }

  belongs_to :project
end
