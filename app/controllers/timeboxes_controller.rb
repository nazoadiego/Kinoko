class TimeboxesController < ApplicationController
  def create
    @work_session = WorkSession.find(params[:work_session_id])
    @timebox = Timebox.new(time_params)
    @timebox.task = @work_session.task
    @timebox.break = true if params[:break] == "1"
    @timebox.save
    redirect_to @work_session
  end

  def destroy
    @timebox = Timebox.find(params[:id])
    @timebox.destroy
    redirect_to work_session_path(@timebox.task.work_session)
  end

  def start
    @timebox = Timebox.where(order: 1)
    raise
  end

  private

  def time_params
    params.require(:timebox).permit(:title, :minutes, :seconds, :break)
  end
end
