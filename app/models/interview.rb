class Interview < ApplicationRecord
  belongs_to :user
  has_many :videos, dependent: :destroy
  has_many :questions, dependent: :destroy
  validates :company, :industry, presence: true
  has_one_attached :photo

  def days_remaining
    -(Date.today - self.final_date.to_date).to_i if self.final_date
  end

  include PgSearch::Model
  pg_search_scope :search_by_name_and_date,
    against: [:name, :open_date, :final_date, :company],
    using: {
      tsearch: { prefix: true }
    }
end
