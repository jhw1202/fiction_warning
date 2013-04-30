class PagesController < ApplicationController
  def show
    @page  = current_page
    @title = @page.title
    @choices = Choice.where("page_id = ?", params[:id])
  end

  def update
    @page  = current_page
    @page.choices.build
    redirect_to "pages/#{@page.id}"
  end
end
