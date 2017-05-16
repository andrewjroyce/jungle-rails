class ReviewsController < ApplicationController


    def new
        @product_review = Review.new
      end

    def create
        @product_review = Review.new(review_params)
        @product_review.user_id = session[:user_id]
        if @product_review.save
          redirect_to @product_review.product, notice: 'Thanks for your review.'
        else
          redirect_to @product_review.product, notice: 'Review failed.'
        end
    end

def destroy
    @product_review = Review.find params[:id]
    @product_review.user_id = session[:user_id]
    @product_review.destroy
    redirect_to [:products], notice: 'review deleted!'
  end

    private

    def review_params
      params.require(:review).permit(:rating, :description, :product_id)
    end

end