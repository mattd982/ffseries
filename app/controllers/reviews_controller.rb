class ReviewsController < ApplicationController
  def index
    @review = Review.order("RANDOM()").first
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:summary, :game)
  end
end
