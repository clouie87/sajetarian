ActiveAdmin.register PageSection do
  permit_params :name, :subtitle, :description, :tag, :page_type_id, :image, :image_layout

  sortable tree: false,
    sorting_attribute: :tag

  index :as => :sortable do
    label :name # item content
    actions
  end

  show do |t|
		attributes_table do
			row :name
			row :subtitle
			row :description
			row :tag
			row :image_layout
			row :page_type
      row :image do
				page_section.image? ? image_tag(page_section.image.url, height: '100') : content_tag(:span, 'No Image Yet')
			end
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :subtitle
			f.input :description
      f.input :tag
      f.input :image_layout, as: :select, collection: PageSection.image_layouts.map {|layout| [layout.humanize, layout] }, include_blank: false
			f.input :page_type, include_blank: false
      if page_section.page_type.present? && page_section.page_type.name == "Contact"
        f.input :contact, include_blank: false
      end
      f.input :image, hint: f.page_section.image? ? image_tag(page_section.image.url, height: '100') : content_tag(:span, 'Upload and image here')
		end
		f.actions
	end
end
