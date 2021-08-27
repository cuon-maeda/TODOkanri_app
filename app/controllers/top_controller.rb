class TopController < ApplicationController
  def index
    @tasks = Task.order(created_at: :desc)
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
  end
end
