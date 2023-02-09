class Public::HomesController < ApplicationController
  def top
    @new_item = Item.order('id DESC').limit(4)
  end

  def about
  end
end
