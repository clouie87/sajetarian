ActiveAdmin.register Contact do
  permit_params :name, :phone_number, :email_address, :address, :city, :primary_contact

  form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :phone_number
			f.input :email_address
			f.input :address
			f.input :city
			f.input :primary_contact
		end
		f.actions
	end

end
