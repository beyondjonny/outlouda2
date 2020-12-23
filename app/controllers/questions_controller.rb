class QuestionsController < ApplicationController
  def index
    @interview = Interview.find(params[:interview_id])
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @question = Question.new(question_params)
    @question.interview = @interview
    if @question.save
      redirect_to interview_path(@interview)
    else
      render 'new'
    end
  end

  # def destroy
  #   @interview = Interview.find(params[:id])
  #   @question.interview = @interview
  #   @question.destroy
  #   redirect_to interview_questions_path(@interview)

private

  def question_params
    params.require(:question).permit(:question)
  end
end
