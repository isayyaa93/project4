class BlogsController < ApplicationController
  
  def index
    render json: Blog.all
  end

  def create
    blog = @current_user.blogs.create!(blog_params)
    render json: blog, status: :created
  end

  private

  def blog_params
    params.permit(:title)
  end

end
