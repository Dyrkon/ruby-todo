# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :require_login

  def index
    @tasks = Task.where(task_list_id: params[:id]).where(done: false)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.task_list_id = params[:task_list_id]

    if @task.save
      redirect_to(task_list_path(@task.task_list_id))
    else
      render('task_lists/add_task')
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to(task_list_path(@task.task_list_id))
    else
      render('tasks/edit')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deadline, :done, :task_list_id)
  end
end
