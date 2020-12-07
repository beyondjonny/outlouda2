class InterviewsController < ApplicationController

  def index
    @interviews = Interview.all
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    @interview.user = current_user
    if @interview.save
      redirect_to interview_path(@interview)
    end
  end

  def show
    @interview = Interview.find(params[:id])
    @question = Question.new
  end

  def destroy
    @interview = Interview.find(params[:id])
    @interview.destroy
    redirect_to interviews_path
  end

private

  def interview_params
    params.require(:interview).permit(:company, :industry, :photo)
  end
end
