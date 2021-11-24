class TimeboxesController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @work_session = @task.work_session
    @timebox = Timebox.new(time_params)
    @timebox.task = @work_session.task
    @timebox.break = true if params[:break] == "1"
    @timebox.save
    redirect_to work_sessions_path(@work_session)
  end

  def destroy
    @timebox = Timebox.find(params[:id])
    @timebox.destroy
    redirect_to work_sessions_path(@timebox.task.work_session)
  end

  def start
    @timebox = Timebox.where(order: 1)

  end

  private

  def time_params
    params.require(:timebox).permit(:title, :minutes, :seconds, :break)
  end
end
