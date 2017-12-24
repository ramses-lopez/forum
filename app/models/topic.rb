class Topic < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy, counter_cache: true
end
