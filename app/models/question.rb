class Question < ApplicationRecord
  belongs_to :practice

  def next
    Question.where("id > ?", id).order("id ASC").first || Question.first
  end

  def previous
    Question.where("id < ?", id).order("id DESC").first || Question.last
  end
end
