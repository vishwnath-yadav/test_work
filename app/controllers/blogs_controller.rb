class BlogsController < ApplicationController

  def show
    @blog = Blog.last
  end

  def update
    respond_to do |format|
      @blog = Blog.find params[:id]
      @blog.update(blog_params)
      format.js
      format.json { render nothing: :true }
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :description, :color, :font_size)
    end
end
