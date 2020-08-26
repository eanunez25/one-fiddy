class StaticPagesController < ApplicationController
  def home
    @result = current_user.results.build if logged_in?
  end

  def about
  end
end
