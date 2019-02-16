class WebPagesController < ApplicationController
  before_action :set_page, only: :show
  def index
    @web_pages = WebPage.all
  end

  private

  def set_page
  @web_page = WebPage.find params[:id]
  end
end
