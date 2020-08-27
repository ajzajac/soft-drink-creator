class OrderItemsController < ApplicationController

    def index
        @orderItems = OrderItem.all
        render json: {order_items: @orderItems}
    end


    def create
        order = Order.find(params[:order_id])
        order_items = order.order_items

        orderItem = OrderItem.create(beverage_id: params[:beverage_id], order_id: params[:order_id], name: params[:name], base_flavor: params[:base_flavor])
        orderItem.save 
        render json: {order_item: order_items}

    end

    def destroy
        order_item = OrderItem.find(params[:id])
        order_item.destroy
       
        render json: {errors: order_item.errors.full_messages}
       
    end

end
