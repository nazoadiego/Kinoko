class WorkSessionsController < ApplicationController
  def create
    @work_session = WorkSession.new
    @work_session.task = Task.find(params[:task_id])
    @work_session.session_duration = (@work_session.task.minutes * 60) + @work_session.task.seconds
    @work_session.save
    redirect_to work_session_path(@work_session)
  end

  def show
    @work_session = WorkSession.find(params[:id])
    @task = @work_session.task
    @timebox = Timebox.new
    @timeboxes = @work_session.task.timeboxes
  end
end
