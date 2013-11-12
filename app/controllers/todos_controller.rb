class TodosController < ApplicationController
  def index
    Rails.logger.warn '-'*40
    Rails.logger.warn @fields.inspect  
    @todos = Todo.all
    @high_priority = Todo.high_priority
    @med_priority = Todo.med_priority
    @low_priority = Todo.low_priority
    
  end

  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      redirect_to todos_path
    else
      render 'new'
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def show
    @todo = Todo.find(params[:id])
  end
  
  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(params[:todo])
      redirect_to todo_path(@todo.id)
    else
      render 'edit'
    end
  end
  
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end
end
