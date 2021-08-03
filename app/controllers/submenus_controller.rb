class SubmenusController < ApplicationController
  #before_action :get_menu

  def create
    @menu = Menu.find(params[:menu_id])
    @submenu = @menu.submenus.create(submenu_params)
    redirect_to submenu_path(@submenu)
  end

  def show
    @submenu = Submenu.find(params[:id])
    @menu = Menu.find(@submenu.menu_id)
  end

  def update
    @submenu = Submenu.find(params[:id])
    @menu = Menu.find(@submenu.menu_id)
    if @submenu.update(submenu_params)
      redirect_to @submenu
    else
      render :edit
    end
  end

  def destroy
    @submenu = Submenu.find(params[:id])
    @menu = Menu.find(@submenu.menu_id)
    @submenu.destroy
    redirect_to menu_path(@menu)
  end

  private
    def submenu_params
      params.require(:submenu).permit(:title, :menu_id)
    end

    #def get_menu
    #  @menu = Menu.find(params[:menu_id])
    #end
end