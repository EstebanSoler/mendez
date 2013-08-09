ActiveAdmin.register Welcome do

  menu :parent => "Home"
  action_item :only => :show do
          link_to("Photos", admin_welcome_welcome_photos_path(welcome))
  end
config.per_page = 5
  form do |f|
    f.inputs  do
      f.input :title
      f.input :description,as: :html_editor
      f.input :body,as: :html_editor
    end
     f.actions
  end
end
