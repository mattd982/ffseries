class ReviewsController < ApplicationController
  def index
    @review = Review.order("RANDOM()").first
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
  if @review.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  end
    redirect_to root_path
  end

  def overview
  end

  private

  def review_params
    params.require(:review).permit(:summary, :game)
  end
end
