class TimeboxesController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @work_session = @task.work_session
    @timebox = Timebox.new(time_params)
    @timebox.task = @work_session.task
    @timebox.break = true if params[:break] == "1"
    @timebox.save
    redirect_to work_session_path(@work_session)
  end

  def destroy
    @timebox = Timebox.find(params[:id])
    @timebox.destroy
    redirect_to work_session_path(@timebox.task.work_session)
  end

  def start
    @work_session = WorkSession.find(params[:id])
    @timebox = @work_session.task.timeboxes[0]
    @timebox.start_time = Time.now
    @timebox.end_time = @timebox.start_time + @timebox.duration
    @timebox.save
    redirect_to work_session_path(@timebox.task.work_session)
  end

  private

  def time_params
    params.require(:timebox).permit(:title, :minutes, :seconds, :break)
  end
end
