class Interview < ApplicationRecord
  belongs_to :user
  has_many :videos
end
