module PageSectionHelper
  def page_layout(section)
    section.page_type.name.downcase
  end
end
