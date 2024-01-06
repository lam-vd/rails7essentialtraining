class TasksController < ApplicationController
  def index
    @tasks = ["task1", "task2", "task3", "task4"]
  end

  def new
  end

  def edit
  end
end
