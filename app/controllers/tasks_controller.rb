# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :require_login

  before_action :find_task, only: %i[edit update destroy]

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

  def edit; end

  def update
    if @task.update(task_params)
      redirect_to(task_list_path(@task.task_list_id))
    else
      render('tasks/edit')
    end
  end

  def destroy
    if @task.destroy
      redirect_to(task_list_path(@task.task_list_id), alert: 'Successfully removed task')
    else
      redirect_to(task_list_path(@task.task_list_id), alert: 'Failed to delete the task')
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deadline, :done, :task_list_id)
  end

  def find_task
    @task = Task.find_by(id: params[:id])
  end
end
