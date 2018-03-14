class PageSectionsController < ActionController::Base
  layout "application"

  def index
    @sections = PageSection.all.order(:tag)
  end

  def show
  end

  def create
  end

  def download_menu
    send_file(
       "#{Rails.root}/app/assets/images/menu.pdf",
      filename: "sajetarian_menu.pdf",
      type: "application/pdf"
      )
  end
end
