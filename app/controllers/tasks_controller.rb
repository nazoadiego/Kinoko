class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def create
    @user = current_user
    @tasks = @user.tasks
    @task = Task.new(task_params)
    @task.user = current_user
    @task.durhours = @task.dur_hours
    if @task.save
      params[:task][:label_ids].shift
      params[:task][:label_ids].each do |label_id|
        @task.labels << Label.find(label_id)
        # TaskLabel.create(
        #   label_id: label_id,
        #   task: @task
        # )
      end
      new_label_name = params[:task][:new_label]
      new_label_goal = params[:task][:new_label_goal]
      @task.labels << Label.create!(name: new_label_name, goal: new_label_goal) if new_label_name != ""
      redirect_to '/dashboard'
    else
      flash[:alert] = 'The task already exists'
      redirect_to '/dashboard'
    end
  end

  def update
    @task = Task.find(params[:id])
    @task = Task.update(task_params)
    @task.durhours = @task.dur_hours
    redirect_to '/dashboard'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to dashboard_path
  end

  def mark_as_done
    @task = Task.find(params[:id])
    @work_session = WorkSession.find(params[:work_session_id])
    @task.timestamp = Time.now
    @task.done = true
    @task.save
    redirect_to work_session_path(@work_session)
  end

  def stats
    @tasks = current_user.tasks
    @labels = @tasks.map { |task| task.labels }
    @labels = @labels.flatten.uniq
    @task_durations = @tasks.map do |task|
      if task.done == true
        [task.timestamp, task.dur_hours]
      else
        [task.timestamp, 0.0]
      end
    end
    @labeltasks = @labels.map do |label|
      [label.name, tasks(label, current_user).sum { |task| task.durhours }]
    end
  end

  def tasks(label, user)
    @labeltasks = label.tasks.filter { |task| task if task.done && (task.user == user) }
  end

  private

  def task_params
    params.require(:task).permit(
      :title, :minutes, :seconds,
      labels_attributes: []
    )
  end
end
