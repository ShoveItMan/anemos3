class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
    @submenu = Submenu.find(@item.submenu_id)
    @menu = Menu.find(@submenu.menu_id)
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
    end
    redirect_to @item
  end
  
  def create
    @submenu = Submenu.find(params[:submenu_id])
    @item = @submenu.items.create(item_params)
    redirect_to submenu_path(@submenu)
  end

  def destroy
    @item = Item.find(params[:id])
    @submenu = Submenu.find(@item.submenu_id)
    @item.destroy
    redirect_to submenu_path(@submenu)
  end

  private
    def item_params
      params.require(:item).permit(:name, :price, :submenu_id)
    end
end