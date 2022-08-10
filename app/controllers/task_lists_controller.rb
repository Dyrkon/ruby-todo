# frozen_string_literal: true

class TaskListsController < ApplicationController
  before_action :require_login

  before_action :find_task_list, only: %i[show edit update destroy]

  def index
    @task_lists = TaskList.where(hidden: false).order('created_at ASC')
  end

  def show
    @tasks = Task.where(task_list_id: @task_list.id).where(done: false).order('deadline ASC')
  end

  def new
    @task_list = TaskList.new
  end

  def create
    @task_list = TaskList.new(task_list_params)

    if @task_list.save
      redirect_to(task_lists_path)
    else
      render('task_lists/new')
    end
  end

  def edit; end

  def update
    if @task_list.update(task_list_params)
      redirect_to(task_lists_path(@task_list))
    else
      render('task_lists/edit')
    end
  end

  def add_task
    @task = Task.new(task_list_id: params[:task_list_id])
  end

  def destroy
    if @task_list.destroy
      redirect_to('/task_lists', alert: 'Successfully removed task list')
    else
      redirect_to('/task_lists', alert: 'Failed to delete the task list')
    end
  end

  private

  def task_list_params
    params.require(:task_list).permit(:name, :hidden)
  end

  def find_task_list
    # require 'pry'; binding.pry
    @task_list = TaskList.find(params[:id])
  end
end
