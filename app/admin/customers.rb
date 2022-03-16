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
end
