class Topic < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy, counter_cache: true
  default_scope { order(updated_at: :desc) }
end
