class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def create
    @tasks = Task.all
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      redirect_to @task
    else
      flash[:alert] = 'The task already exists'
      redirect_to '/tasks'
    end
  end

  def update
    @task = Task.find(params[:id])
    @task = Task.update(task_params)
    redirect_to '/dashboard'
  end

  private

  def task_params
    params.require(:task).permit(:title, :minutes, :seconds)
  end
end
