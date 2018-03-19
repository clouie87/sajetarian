module PageSectionHelper
  def page_layout(section)
    section.page_type.name.downcase
  end

  def parsed_content(content, linked_text: nil, linked_section: nil)
    paragraphs = content.split(/\n+/)

    if linked_text && linked_section
      last_paragraph = paragraphs.pop
      last_paragraph = [last_paragraph, link_to(linked_text, page_section_path(PageSection.find(linked_section)))].join(" ")
      paragraphs << last_paragraph.html_safe
    end

    paragraphs.map do |paragraph|
      content_tag :p, paragraph
    end.join.html_safe
  end

  def menu_item_categories
    MenuItem.all.roots
  end
end
