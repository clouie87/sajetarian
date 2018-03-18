class PageSectionsController < ActionController::Base
  layout "application"

  def index
    @sections = PageSection.roots.order(:tag)
  end

  def show
    page_slug = params[:id] || 'home'
    page = PageSection.friendly.find(page_slug)
    if !page.has_children?
      @sections = [page]
    else
      @sections = page.children.order(:tag)
    end
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
