ActiveAdmin.register Article do

  menu :parent => "Home"
  config.per_page = 5
  form do |f|
    f.inputs  do
      f.input :title
      f.input :description
      f.input :body,as: :html_editor
      f.input :image
    end
     f.actions
  end
end
