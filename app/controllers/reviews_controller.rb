class ReviewsController < ApplicationController
  def index
    @review = Review.order("RANDOM()").first
  end

  def new
    @review = Review.new
  end
end
