class PageSectionsController < ActionController::Base
  layout "application"

  def index
    @sections = Section.all.order(:tag)
  end
end
