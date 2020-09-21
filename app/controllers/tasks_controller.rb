class TasksController < ApplicationController
  def index
    @tasks = Task.order('limit_date').all
    @status = ['todo','doing','done']
  end

  def store
    task = Task.new
    task.task = params[:task]
    task.state = params[:state]
    task.limit_date = params[:limit_date]
    task.save
    redirect_to '/tasks',notice: 'Create Task'
  end

  def show
    id = params[:id]
    @task = Task.find(id)
    @status = ['todo','doing','done']
  end

  def update
    id = params[:id]
    task = Task.find(id)

    task.task = params[:task]
    task.state = params[:state]
    task.limit_date = params[:limit_date]
    task.save
    redirect_to '/tasks',notice: 'Update Task'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to '/tasks',notice: 'Delete Task'
  end
end
