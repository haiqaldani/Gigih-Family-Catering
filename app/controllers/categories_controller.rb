class CategoriesController < ApplicationController
  before_action :require_user_logged_in!
  before_action :set_category, only: [:edit, :update, :destroy]
  
  def index
     @categories = Category.all
  end

  # def show
  # end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "Category was created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "Category was updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: "Category was deleted"
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    @category = Category.find_by(params[:id])
  end
end