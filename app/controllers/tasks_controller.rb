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

  def update
    @task = Task.find(params[:id])
    @task = Task.update(task_params)
    redirect_to '/dashboard'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to '/dashboard'
  end

  def mark_as_done
    @task = Task.find(params[:id])
    @work_session = WorkSession.find(params[:work_session_id])
    @task.done = true
    @task.save
    redirect_to work_session_path(@work_session)
  end

  private

  def task_params
    params.require(:task).permit(:title, :minutes, :seconds)
  end
end
