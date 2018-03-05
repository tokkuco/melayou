class PagesController < ApplicationController
  def home
  	@posts = Event.all
  	@packages = Package.all
  end

  def about
  end

  def contact
  end
end
