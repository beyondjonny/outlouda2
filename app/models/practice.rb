class Practice < ApplicationRecord
  belongs_to :interview
  has_many :questions, through: :interviews
end
