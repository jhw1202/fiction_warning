class PagesController < ApplicationController
  def show
    @page  = Page.find_by_id(params[:id])
    @title = Choice.find_by_page_id(params[:id]).title
    @choices = Choice.where("page_id = ?", params[:id])
  end
end
