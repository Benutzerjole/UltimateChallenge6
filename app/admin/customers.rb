ActiveAdmin.register Customer do

  permit_params :name, :phone, :email, :notes, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.actions
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : ""
    end
  end

  show do
    attributes_table do
      row :name
      row :phone
      row :email
      row :notes
      row :image do |ad|
        image_tag ad.image
      end
    end
    active_admin_comments
  end
  
end
