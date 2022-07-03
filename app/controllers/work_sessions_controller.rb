class WorkSessionsController < ApplicationController
  def show
    @work_session = WorkSession.find(params[:id])
    @task = @work_session.task
    @timebox = Timebox.new
    @timeboxes = @work_session.task.timeboxes
  end
end
