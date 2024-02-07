ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image

  # Customizes which filters are displayed in the admin interface
  filter :full_name
  filter :phone_number
  filter :email_address
  filter :notes
  filter :created_at

  # Excludes the Active Storage fields from the filters
  remove_filter :image_attachment
  remove_filter :image_blob

  form do |f|
    f.semantic_errors
    f.inputs

    f.inputs do
      f.input :image, as: :file
    end

    f.actions
  end

end
