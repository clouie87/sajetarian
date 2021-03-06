ActiveAdmin.register Event do
  permit_params :starts_at, :ends_at, :address, :city, :latitude, :longitude, :full_street_address, :name

  show do |t|
  		attributes_table do
        row :name
  			row :starts_at
        row :ends_at
  			row :address
  			row :city
  		end
  	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
      f.input :name
      f.input :starts_at, as: :datetime_picker
			f.input :ends_at, as: :datetime_picker
			f.input :address
			f.input :city
		end
		f.actions
	end
end
