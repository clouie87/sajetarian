module ApplicationHelper
  def pages
    PageSection.all.order(:tag)
  end

  def to_snakecase(str)
    str.parameterize.underscore
  end
end
