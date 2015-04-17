class TodosController < ApplicationController
  def index
    @todo_items = Todo.all
    #@todo_array = ["Buy Milk", "Buy Soap", "Pay EB Bill"]
  end
  
  def delete
    @todo_items =Todo.all 
    @t = Todo.last
    @t.delete
    #put delete logic
    #Todo.find(params[:id]).destroy
  end
  
  def add
    Todo.create(:todo_item => params[:todo_text])
    redirect_to :action => 'index'
  end
  
end
