ActiveAdmin.register Service do

  belongs_to :type_of_service
  navigation_menu :type_of_service

  config.per_page = 3
  action_item :only => :show do
          link_to("Photos", admin_service_service_photos_path(service))
  end

    action_item :only => :show do
          link_to("Preparations", admin_service_preparations_path(service))
  end

show do
    attributes_table do
      row "Type" do |service|
        service.type_of_service.type_name
      end
      row :name
      row :description
      row :body
      row :image do |service|
        if service.image.present?
          image_tag service.image.url(:small)
        else 
          ''
        end
      end
    end
  end


  form do |f|
    f.inputs  do
      f.input :type_of_service_id, :label => "Type",
              :as => :select, :collection => Hash[TypeOfService.all.map{|s| [s.type_name, s.id]}]
      f.input :name
      f.input :description 
      f.input :body , as: :html_editor
      f.input :image
    end
     f.actions
  end

  index do
    selectable_column
    column :id
    column :name
    column :description
    column :created_at
    column :updated_at
    column :type_of_service_id
    actions
  end

end
