class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @tasks = Task.all
    @work_session = WorkSession.new
    @task = Task.new
  end
end
