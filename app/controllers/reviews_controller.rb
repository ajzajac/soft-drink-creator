class ReviewsController < ApplicationController

def index
    @reviews = Review.all
    render json: @reviews
end

def show
    @review = Review.find(params[:id])
    render json: @review
end

def create
    @review = Review.new
    if @review.save
        render json: @review
    else
        render json: {errors: @review.errors.full_messages} 
end


end