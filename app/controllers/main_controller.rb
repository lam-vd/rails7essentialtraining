class MainController < ApplicationController
  def index
  end

  def about
    @page = params[:page]
    @id = params[:id]
    @created_by = "John Smith"
  end
  
  def hello
    redirect_to(action: "index")
  end
  
end
