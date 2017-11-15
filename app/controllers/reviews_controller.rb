class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy, :show]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Restaurant.new
  end

  def create
    @review = Restaurant.new(review_params)

    @review.save

    # redirect_to review_path(@review)
    redirect_to @review
  end

  def edit
  end

  def update

    @review.update(review_params)

    redirect_to @review
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  def review_params
    params.require(:review).permit(:restaurant_id, :rating, :content)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
