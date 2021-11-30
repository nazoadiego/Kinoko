class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @hide_navbar = true
  end

  def dashboard
    @tasks = Task.all
    @task = Task.new
    @work_session = WorkSession.new
    @timebox = Timebox.new
  end

  def help
  end

  def login
  end

  def mushroom_forest
    @tasks = Task.where(user: current_user, done: true )
    @total_duration = 0
    @tasks.each do |task|
      @total_duration += task.minutes * 60
      @total_duration += task.seconds
    end
  end
end
