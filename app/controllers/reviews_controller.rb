class ReviewsController < ApplicationController
  def new
    @review = Review.new(params[:review])
  end

  def create
    @review = Review.new(reviews_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private

  def reviews_params
    params.require(:reviews).permit(:content, :restaurant, :rating)
  end
end
