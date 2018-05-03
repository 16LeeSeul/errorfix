class HomeController < ApplicationController
  def index
    post= Post.all
  end

  def create
    @post = Post.new
    @post.title = params[:post_content]
    @post.content = params[:post_title]
    @post.save 
    
    redirect_to 'home/index'
  end

  def new
  end
  
  def destroy 
    post = Post.find(params[:post_id])
    post.destroy
    
    redirect_to '/home/index'
    
  end
  
  def edit 
    @post = Post.find(params[:id])
  end
  
  def update 
    post= Post.find(params[:id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save 
    
    redirect_to '/home/index'
  end
  

