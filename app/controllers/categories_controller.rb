class CategoriesController < ApplicationController
  before_action :category_set, only: [:show, :edit, :update, :destroy]
  before_action :redirect_login_page
  def index
    @categories = Category.order(created_at: :desc).where(user: current_user)
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

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "タスクを編集しました"
    else
      render action: "edit"
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, alert: "タスクを削除しました"
  end

  private
    def category_set
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :user_id)
    end
end
