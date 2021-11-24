class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def create
    @tasks = Task.all
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      redirect_to '/dashboard'
    else
      flash[:alert] = 'The task already exists'
      redirect_to '/dashboard'
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :minutes, :seconds)
  end
end
