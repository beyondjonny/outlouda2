class Question < ApplicationRecord
  belongs_to :practice
  def next
    Question.where("id > ?", id).order(id: :asc).limit(1).first
  end

  def prev
    Question.where("id < ?", id).order(id: :desc).limit(1).first
  end
end
