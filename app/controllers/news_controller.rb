class NewsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create 
    redirect_to(:action => 'index')
  end

  def edit
  end
  

  def update
    redirect_to(:action => 'show', :id => @patient.id)
  end

  def delete
  end

  def destroy
    redirect_to(:action => 'index')  
  end
  

  private
  def news_params

  end
end
