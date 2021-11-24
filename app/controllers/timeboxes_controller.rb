class TimeboxesController < ApplicationController
  def create
    @work_session = WorkSession.find(params[:work_session_id])
    @timebox = Timebox.new(time_params)
    @timebox.task = @work_session.task
    @timebox.break = true if params[:break] == "1"
    @timebox.save
    redirect_to @work_session
  end

  def update
    @work_session = WorkSession.find(params[:work_session_id])
    @timebox = Timebox.find(params[:id])
    @timebox = Timebox.update(timebox_params)
  end

  private

  def time_params
    params.require(:timebox).permit(:title, :minutes, :seconds, :break)
  end
end
