# :nodoc:
class TodosController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def index
    @user = User.find(params[:user_id])
    @todos = @user.todos
  end

  def show
    @user = User.find(params[:user_id])
    @todo = @user.todos.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @todo = Todo.new
  end

  def create
    @user = User.find(params[:user_id])
    @todo = @user.todos.create(todo_params)

    if @todo.save
      redirect_to user_todos_path(current_user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @todo = @user.todos.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @todo = @user.todos.update(todo_params)

    if @todo
      redirect_to user_todos_path(current_user)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @todo = @user.todos.find(params[:id])

    if @todo.destroy
      redirect_to user_todos_path(current_user)
    else
      render 'show'
    end
  end

  def home; end

  private

  def todo_params
    params.require(:todo).permit(:title, :description)
  end
end
