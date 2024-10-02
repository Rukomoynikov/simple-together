class Comment < ApplicationRecord
  include RecentlyOrderable

  belongs_to :project
end
