class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :completed, :details)
  end
end
