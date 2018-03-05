class TasksController < ApplicationController
  def index
    @task = Task.new(date: Date.current)
    @tasks = Task.all
    @tasks_today = Task.where(date: Date.today)
    @tasks_week = Task.where("date >= ? AND date <= ?", Time.current.beginning_of_week, Time.current.end_of_week)
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_url
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to tasks_url
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    redirect_to tasks_url
  end

  def complete
		@task = Task.find(params[:id])
		@task.update_attribute(:complete, true)
		redirect_to tasks_url, notice: "Item successfully completed!"
  end

  private

  def task_params
    params.require(:task).permit(:name, :date, :complete)
  end

end
