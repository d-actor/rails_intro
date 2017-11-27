class PagesController < ApplicationController
  def index
    # All blog pages
    @pages = Page.all
  end

  def show
    # find a page by id from the db and giving the view access
    @page = Page.find(params[:id])
  end

  def edit
    # shows a pre filled form to edit the page
  end

  def update
    # take data from the form and update the page in our db
  end

  def new
    # shows a blank form to create a new page
    @page = Page.new
  end

  def create
    # Take data from the form and create a new page in our database
    @page = Page.new(title: params[:page][:title],
                     author: params[:page][:author],
                     content: params[:page][:content],
                     public: params[:page][:public])
    if @page.save
      # success
      redirect_to pages_path
    else
      # fail
      render :new
    end
  end

  def destroy
    # finds the page by ID and removes it from the db
  end
end
