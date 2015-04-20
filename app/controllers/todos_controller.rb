class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
  end
  
  def delete
    @todo_items =Todo.all 
    @t = Todo.last
    @t.delete
  end
  
  def add
    Todo.create(:todo_item => params[:todo_text])
    redirect_to :action => 'index'
  end
  
end
