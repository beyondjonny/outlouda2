class Practice < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  validates :company, :type, presence: true
end
