class PagesController < ApplicationController
  def show
    @page = current_page
    @title = @page.title
    @choices = Choice.where("page_id = ?", params[:id])
    if @page.content.blank?
      render 'pages/edit'
    end
  end

  def edit
    @page = current_page
  end

  def update
    @page = current_page
    @page.update_attributes(:content => params[:content])
    @page.save

    @page1 = Page.create(:title => params[:choice1])
    @page2 = Page.create(:title => params[:choice2])
    @page3 = Page.create(:title => params[:choice3])

    @choice1 = Choice.create(:child_id => @page1.id, :page_id => @page.id)
    @choice2 = Choice.create(:child_id => @page2.id, :page_id => @page.id)
    @choice3 = Choice.create(:child_id => @page3.id, :page_id => @page.id)

    redirect_to @page
  end
end
