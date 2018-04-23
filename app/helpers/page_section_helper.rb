module PageSectionHelper
  def featured_sections(sections)
    sections.where(featured: true).order(:tag)
  end

  def page_layout(section)
    section.page_type.name.downcase
  end

  def full_image_caption(content)
    if content == "Sajetarian"
      text = content_tag :div, nil, class: "logo"
    else
      text = content_tag :div, parsed_content(content), class: "caption-description"
    end

    content_tag :div, text.html_safe, class: "full-image-caption"
  end

  def parsed_content(content)
    paragraphs = content.split(/\n+/)

    paragraphs.map do |paragraph|
      content_tag :p, paragraph
    end.join.html_safe
  end

  def menu_item_categories
    MenuItem.all.roots
  end
end
