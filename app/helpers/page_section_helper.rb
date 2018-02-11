module PageSectionHelper
  def page_layout(section)
    section.page_type.name.downcase
  end

  def menu_item_categories
    MenuItem.all.roots
  end
end
