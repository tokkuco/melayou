class PagesController < ApplicationController
  def home
  	@posts = Event.all
  end

  def about
  end

  def contact
  end
end
