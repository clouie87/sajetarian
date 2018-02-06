class SectionsController < ActionController::Base
  def index
    @sections = Section.all
  end
end
