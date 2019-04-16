class SubcategoriesController < ApplicationController
  def index
    @subcategories = Subcategory.all
  end 
  def new
    @sub_category = Subcategory.new
  end
  def create
    @category = Category.find(params[:category_id])
    @sub_category = @category.subcategories.create(sub_category_params)
    if @sub_category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

  private

  def sub_category_params
    params.require(:subcategory).permit(:name,:image)
  end
end
