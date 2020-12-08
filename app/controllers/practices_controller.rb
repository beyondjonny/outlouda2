class PracticesController < ApplicationController
  def index
    @practices = Practice.all
  end

  def new
    @practice = Practice.new
  end

  def create
    @practice = Practice.new(practice_params)
    @practice.user = current_user
    if @practice.save
      redirect_to practice_path(@practice)
    end
  end

  def show
    @practice = Practice.find(params[:id])
  end

  def destroy
    @practice = Practice.find(params[:id])
    @practice.destroy
    redirect_to practices_path
  end

private

  def practice_params
    params.require(:practice).permit(:company, :category)
  end
end
