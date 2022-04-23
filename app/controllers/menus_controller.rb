class MenusController < ApplicationController
  before_action :require_user_logged_in!
  before_action :set_menu, only: [:edit, :update, :destroy]
  
  def index
     @menus = Menu.all
     # @category = Categorymenus.all
  end

  # def show
  # end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path, notice: "menu was created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to menus_path, notice: "menu was updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to menus_path, notice: "menu was deleted"
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :price, :description, category_ids: [])
  end

  def set_menu
    @menu = Menu.find_by(params[:id])
  end
end
