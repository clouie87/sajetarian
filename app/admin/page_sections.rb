ActiveAdmin.register PageSection do
  permit_params :name, :subtitle, :description, :tag, :page_type_id, :image

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
			f.input :page_type
      f.input :image, hint: f.page_section.image? ? image_tag(page_section.image.url, height: '100') : content_tag(:span, 'Upload and image here')
		end
		f.actions
	end
end
