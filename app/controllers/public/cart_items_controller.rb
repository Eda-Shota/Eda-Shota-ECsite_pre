class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!, only: [:create]
  def index
    @cartItems = CartItem.where(cart_id: current_customer.cart.id)
  end
  
  def update
  end
  
  def destroy
  end
  
  def all_destroy
  end
  
  def create
    @item = CartItem.new(cart_item_params)
    @cart = Cart.where(customer_id: current_customer.id)
    if @cart.blank?
      @createCart = Cart.create(customer_id: current_customer.id)
      @cartItem = CartItem.new(cart_item_params)
      @cartItem.cart_id = @createCart.id
      @cartItem.save
    else
      @cartItems = CartItem.where(cart_id: current_customer.cart.id, item_id: @item.id)
      if @cartItems.empty?
      @cartItem = CartItem.new(cart_item_params)
      @cartItem.cart_id = current_customer.cart.id
      @cartItem.save
      else
      @cartItem = CartItem.find(item_id: @item.id)
      @plusAmount = CartItem.new(cart_item_params)
      @cartItem.amount = @cartItem.amount + @plusAmount.amount
      @cartItem.save
      end
    end
     redirect_to cart_items_path
  end
  
  private
    def cart_item_params
        params.require(:cart_item).permit(:amount, :item_id, :price)#.merge(item_id: @item.id, price: @item.price)
    end  
    
end