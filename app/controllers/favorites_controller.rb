class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites 
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def create
        beverage = Beverage.find(params[:beverage_id])
        
        @favorite = Favorite.new(user_id: params[:user_id], beverage_id: params[:beverage_id], name: beverage.name, secondary_flavor: beverage.secondary_flavor, base_flavor: beverage.base_flavor, water_type: beverage.water_type, extra_flavor: beverage.extra_flavor)

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

end
