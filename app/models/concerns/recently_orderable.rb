require "active_support/concern"

module RecentlyOrderable
  extend ActiveSupport::Concern

  included do
    scope :recently_updated, -> { order(updated_at: :desc) }
  end
end
