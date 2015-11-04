class ReviewsController < ApplicationController
  
  def index

  end

  def new

  end

  def create

  end

  def show

  end

  def destroy

  end

  def edit

  end

  def update

  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end

end