class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!, only: [:create]
  def index
  end
  
  def update
  end
  
  def destroy
  end
  
  def all_destroy
  end
  
  def create
  end
  
end
