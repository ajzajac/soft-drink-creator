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

        total = 0
        order.order_items.each { |item| total += item.item_price }
        order.total_price = total
        order.save

        render json: {order_total: total}

    end

    def destroy
        order_item = OrderItem.find(params[:id])
        order_item.destroy
        order = Order.find(params[:order_id])
        order_items = order.order_items
        total = 0
        order.order_items.each { |item| total += item.item_price }
        order.total_price = total
        order.save
       
        render json: {errors: order_item.errors.full_messages}
       
    end

end
