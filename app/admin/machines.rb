ActiveAdmin.register Machine do

  config.per_page = 5

  action_item :only => :show do
          link_to("Photos", admin_machine_machine_photos_path(machine))
  end

  form do |f|
    f.inputs  do
      f.input :name
      f.input :description 
      f.input :body , as: :html_editor
      f.input :image
    end
     f.actions
  end
end
