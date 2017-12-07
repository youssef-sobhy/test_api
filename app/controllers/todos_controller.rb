class TodosController < ApplicationController
  before_action :prepare_todo, only: %i[update destroy]

  def index
    todos = Todo.includes(:user)
    render json: todos.as_json(include: :user), status: :ok
  end

  def show
    render json: @todo, status: :ok
  end

  def create
    todo = Todo.new(todo_params)

    if todo.save
      render json: todo, status: :created
    else
      render json: todo.errors, status: :bad_request
    end
  end

  def update
    if @todo.update(todo_params)
      render json: @todo, status: :ok
    else
      render json: @todo.errors, status: :bad_request
    end
  end

  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def todo_params
    params.require(:todo).permit(:content, :completed, :user_id)
  end

  def prepare_todo
    @todo = Todo.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end
end
