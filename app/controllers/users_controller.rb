class UsersController < ApplicationController
  def index
    
  end
  def show
    
  end
  def new
    @user=User.new
    @user.posts.build
  end
  def create
    @user=User.new(params[:user])
    if @user.save 
      redirect_to videotecas_path, :notice=>"Complimenti! Sei un nuovo utente registrato"
    else render "new"
      
    end
  end
  def edit
    
  end
  def update
    
  end
  def destroy
    
  end
end
