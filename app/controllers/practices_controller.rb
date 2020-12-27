class PracticesController < ApplicationController
  def index
    @interview = Interview.find(params[:interview_id])
    @practices = Practice.all
  end

  def new
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.new(practice_params)
    @practice.interview = @interview
    if @practice.save
      redirect_to interview_practice_path(@interview, @practice)
    else
      render 'new'
    end
  end

  def show
    @interview = Interview.find(params[:interview_id])
    @practice = Practice.find(params[:id])
  end

  # def destroy
  #   @interview = Interview.find(params[:id])
  #   @question.interview = @interview
  #   @question.destroy
  #   redirect_to interview_questions_path(@interview)

  private

  def practice_params
    params.require(:practice).permit(:title)
  end
end
