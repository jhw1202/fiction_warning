class PagesController < ApplicationController
  def show
    @page  = Page.find_by_id(params[:id])
    @title = @page.title
    @choices = Choice.where("page_id = ?", params[:id])
  end
end
