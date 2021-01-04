class QuestionsController < ApplicationController
  def index
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.find(params[:practice_id])
    @questions = Question.all
  end

  def new
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.find(params[:practice_id])
    @question = Question.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.find(params[:practice_id])
    @question = Question.new(question_params)
    @question.practice = @practice
    if @question.save
      redirect_to new_interview_practice_question_path(@interview, @practice)
    end
  end

  def show
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.find(params[:practice_id])
    @question = Question.find(params[:id])

  end
  # def destroy
  #   @interview = Interview.find(params[:id])
  #   @question.interview = @interview
  #   @question.destroy
  #   redirect_to interview_questions_path(@interview)

private

  def question_params
    params.require(:question).permit(:text)
  end
end
