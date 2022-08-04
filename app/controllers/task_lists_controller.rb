# frozen_string_literal: true

class TaskListsController < ApplicationController
  def index
    @task_lists = TaskList.where(hidden: false).order('created_at ASC')
  end

  def show
    @task_list = TaskList.find(params[:id])
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

  def edit
    @task_list = TaskList.find(params[:id])
  end

  def update
    @task_list = TaskList.find(params[:id])

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
    @task_list = TaskList.find(params[:id])
    @task_list.destroy
    redirect_to('/task_lists/index')
  end

  private

  def task_list_params
    params.require(:task_list).permit(:name, :hidden)
  end
end
