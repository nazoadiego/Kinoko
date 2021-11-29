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
end
