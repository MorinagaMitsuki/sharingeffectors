class Like < ApplicationRecord
  belongs_to :effector
  belongs_to :user
  validates_uniqueness_of :effector_id, scope: :user_id
end
