class SectionsController < ActionController::Base
  layout "application"

  def index
    @sections = Section.all
  end
end
