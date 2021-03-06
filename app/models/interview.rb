class Interview < ApplicationRecord
  belongs_to :user
  has_many :videos, dependent: :destroy
  has_many :questions, through: :practices
  has_many :practices, dependent: :destroy
  validates :company, :industry, presence: true
  has_one_attached :photo

  def days_remaining
    -(Date.today - self.final_date.to_date).to_i if self.final_date
  end
end
