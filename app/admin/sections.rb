ActiveAdmin.register Section do
  permit_params :name, :subtitle, :description, :page_type

  show do |t|
  		attributes_table do
  			row :name
  			row :subtitle
  			row :description
  			row :page_type
  		end
  	end

  	form :html => { :enctype => "multipart/form-data" } do |f|
  		f.inputs do
  			f.input :name
  			f.input :subtitle
  			f.input :description
  			f.input :page_type
  		end
  		f.actions
  	end
end
