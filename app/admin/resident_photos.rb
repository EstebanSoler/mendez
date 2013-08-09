ActiveAdmin.register ResidentPhoto do

  menu :parent => "Personal"

  form do |f|
    f.inputs  do
      f.input :title
      f.input :image
    end
     f.actions
  end
end
