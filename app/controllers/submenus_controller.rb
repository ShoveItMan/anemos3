class SubmenusController < ApplicationController
  before_action :get_menu

  def create
    @submenu = @menu.submenus.create(submenu_params)
    redirect_to menu_path(@menu)
  end

  def show
    @submenu = @menu.submenus.find(params[:id])
  end

  private
    def submenu_params
      params.require(:submenu).permit(:title)
    end

    def get_menu
      @menu = Menu.find(params[:menu_id])
    end
end