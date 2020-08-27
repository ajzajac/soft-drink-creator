class UsersController < ApplicationController

  def index
    @users = User.all
    render json: {users: @users}
  end

  def create
      user = User.new(
        username: params[:username],
        password: params[:password],
        email: params[:email],
      )
  
      if user.save
        token = encode_token(user.id)
        render json: {user: user, token: token}
      else
        render json: {errors: user.errors.full_messages}
      end
    end

    def update
      @user = User.find(params[:id])
      @user.update(current_order: params[:order_id])
      @user.save
      render json: {user: @user.current_order }
    end


end
