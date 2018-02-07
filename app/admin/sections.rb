ActiveAdmin.register Section do
  permit_params :name, :subtitle, :description, :tag, :page_type_id

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
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :subtitle
			f.input :description
      f.input :tag
			f.input :page_type
		end
		f.actions
	end
end
