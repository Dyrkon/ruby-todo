# frozen_string_literal: true

class TasksController < ApplicationController
  def index; end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def delete; end

  def destroy; end

  private

  def task_params
    params.require(:task).permit(:name, :description, :deadline, :done, :task_list_id)
  end
end
