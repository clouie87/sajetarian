class PageSectionsController < ActionController::Base
  layout "application"

  def index
    @sections = PageSection.all.order(:tag)
  end

  def show
  end

  def create
  end
end
