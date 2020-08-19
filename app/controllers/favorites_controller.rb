class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites 
    end

    def show
    end

    def create
        @favorite = Favorite.new(favoriteParams)
        if @favorite.save
            render json: {favorite: @favorite }
        else
            render json: {errors: @favorite.errors.full_messages}
        end
    end

    def update
    end

    def delete
    end

    private

    def favoriteParams
        params.require(:favorite).permit(:id, :user_id, :beverage_id)
    end

end
