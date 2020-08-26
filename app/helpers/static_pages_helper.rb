module StaticPagesHelper

  def home
    if logged_in?
      @result = current_user.results.build
      @feed_items = current_user.feed
    end
  end

end
