class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def settings
  end

  def calendar
  end

  def videoapp
  end

end
