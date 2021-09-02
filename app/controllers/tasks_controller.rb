class TasksController < ApplicationController
  before_action :task_set, only: [:show, :edit, :update, :destroy]
  before_action :categories_set, only: [:new, :create, :edit, :update]
  def index
    @tasks = Task.order(created_at: :desc).where.not(status: 2)
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "タスクを登録しました"
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: "タスクを編集しました"
    else
      render action: "edit"
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, alert: "タスクを削除しました"
  end

  private
    def task_set
      @task = Task.find(params[:id])
    end

    def categories_set
      @categories = Category.order(created_at: :desc)
    end

    def task_params
      params.require(:task).permit(:name, :user, :limit_at, :status, :priority, :detail, category_ids: [])
    end
end
