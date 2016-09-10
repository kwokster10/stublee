class RatingsController < ApplicationController
  def index
    # if current_user&.admin?
    #   @ratings = Rating.all
    # else
      @ratings = Rating.published
    # end
  end

  def create
    byebug
  end
end
