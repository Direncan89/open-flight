module Api
  module v1
    class ReviewsController < ActionController
    end

    def create
      review = Review.new(review_params)

      if review.save
        render json: ReviewSerializer.new(review).serialized_json
      else
        render json: { error: review.errors.messages }, status: 422
      end
    end

    def destroy
      review = Review.find_by(params[:id])

      if review.destroy
        render :no_content
      else
        render json: { error: review.errors.messages }, status: 422

    end
    private

    def review_params
      params.require(:review).permit(:title, :description, :score, :airline_id)
    end
  end
end
