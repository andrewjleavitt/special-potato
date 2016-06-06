class ReviewsController < ApplicationController

  def create
    @coach = Coach.find(params[:coach_id])
    @review = @coach.reviews.create(review_params)
    redirect_to coach_path(@coach)
  end

  private
  def review_params
    params.require(:review).permit(:reviewer, :body)
  end

end
