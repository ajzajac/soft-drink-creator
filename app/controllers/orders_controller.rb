class OrdersController < ApplicationController

    def index
        @orders = Order.all
        render json: {orders: @orders}
    end

    def create
        @order = Order.create(user_id: params[:user_id])
        render json: { order: @order }
    end

    def neworder
        beverage = Beverage.find(params[:beverage_id])
        
        @order = Order.create(user_id: params[:user_id])
        order_items = OrderItem.create(order_id: @order.id, beverage_id: beverage.id)
        user = User.find(params[:user_id])
        user.update(current_order: @order.id)
        order_items = @order.order_items
        render json: {order: order_items}
    end

    def show
        @order = Order.find(params[:id])
        render json: {order: @order}
    end

end
