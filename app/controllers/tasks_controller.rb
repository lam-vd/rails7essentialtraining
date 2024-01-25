class TasksController < ApplicationController
  before_action :task_find_by, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @tasks = Task.order(:position)
  end

  def show
  end

  def new
    @count = Task.count
    @task = Task.new(position: @count +1)
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render :edit
    end
  end

  def delete
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  
  def task_find_by
    @task = Task.find_by(id: params[:id])
  end
  

  def task_params
    params.require(:task).permit(
      :name,
      :position,
      :completed,
      :description
      )
  end
end
