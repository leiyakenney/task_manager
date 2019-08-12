class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    binding.pry
    task = Task.new({
      title: params[:task][:title],
      description: params[:task][:description]
      })
    binding.pry
    task.save
    binding.pry
    redirect_to '/tasks'
  end

  def show
    binding.pry
    @task = Task.find(params[:id])
  end
end
