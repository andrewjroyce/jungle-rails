class CategoriesController < ApplicationController

  def show
    @categories = Category.find(params[:category_id])
   # @products = @category.products.order(created_at: :desc)
  end

end
