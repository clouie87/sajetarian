ActiveAdmin.register MenuItem do
  permit_params :name, :description, :price, :tag

  show do |t|
  		attributes_table do
  			row :name
  			row :description
        row :price
  			row :tag
  		end
  	end

  	form :html => { :enctype => "multipart/form-data" } do |f|
  		f.inputs do
  			f.input :name
  			f.input :description
  			f.input :price
  			f.input :tag
  		end
  		f.actions
  	end
end
