# frozen_string_literal: true

class TasksController < ApplicationController
  def index; end

  def show; end

  def new; end

  def create; end

  def edit
    @task = Task.where(:id => params[:id]).first
  end

  def update
    if @task.save
      redirect_to(tasks_path)
    else
      render('tasks/new')
    end
  end

  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deadline, :done, :task_list_id)
  end
end
