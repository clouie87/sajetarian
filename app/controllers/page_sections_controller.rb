class PageSectionsController < ActionController::Base
  layout "application"

  def index
    @sections = PageSection.all.order(:tag)
  end
end
