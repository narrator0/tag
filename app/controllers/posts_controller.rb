class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_web_page

  def create
    current_user.posts.create(post_params.merge({web_page: @web_page}))
    redirect_to web_page_path(@web_page)
  end

  private

  def set_web_page
    @web_page = WebPage.find params[:web_page_id]
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
