class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params_category)
    
    if @category.save
      flash[:notice] = 'New category added.'
      redirect_to new_category_path
    else
      render :new
    end
  end
  
  private
  
    def params_category
      params.require(:category).permit(:name)
    end
end