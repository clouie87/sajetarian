module ApplicationHelper
  def pages
    PageSection.where(featured: true).order(:tag)
  end

  def to_snakecase(str)
    str.parameterize.underscore
  end
end
