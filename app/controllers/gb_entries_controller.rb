class GbEntriesController < ApplicationController
  def new
    @gbentry = GbEntry.new
  end
  
  def create
    @gbentry = GbEntry.new(params[:gb_entry])
    if @gbentry.save
      flash[:success] = "Dein neuer Eintrag wurde erfolgreich hinzugefuegt!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def index
    @gbentries = GbEntry.all
  end
end
