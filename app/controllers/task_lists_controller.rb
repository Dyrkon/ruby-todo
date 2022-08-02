# frozen_string_literal: true

class TaskListsController < ApplicationController
  def index
    @task_lists = TaskList.order('created_at ASC')
  end

  def show
    @task_list = TaskList.find(params[:id])
    @tasks = Task.where(task_list_id: @task_list.id)
  end

  def new; end

  def create; end

  def edit; end

  def update; end

  def delete; end

  def destroy; end

  private

  def task_list_params
    params.require(:task_list).permit(:name)
  end
end
