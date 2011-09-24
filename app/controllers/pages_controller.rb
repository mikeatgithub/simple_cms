class PagesController < ApplicationController

  layout 'admin'

  def index
  list
  render ('list')
  end

  def list
    # Pages.all
    @pages = Page.order("pages.position ASC")
  end

  def show
    @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new()
  end
end
