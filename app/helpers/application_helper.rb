module ApplicationHelper
  def pages
    PageSection.all
  end

  def to_snakecase(str)
    str.parameterize.underscore
  end
end
