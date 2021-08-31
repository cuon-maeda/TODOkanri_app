class CategoriesController < ApplicationController
  def index
    @categories = Category.order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "カテゴリを登録しました"
    else
      render action: "new"
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
