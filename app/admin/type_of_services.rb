ActiveAdmin.register TypeOfService do

  config.per_page = 5
    action_item :only => :show do
      link_to("Services", admin_type_of_service_services_path(type_of_service))
  end

  form do |f|
    f.inputs  do
      f.input :type_name
      f.input :image
    end
    f.actions
  end

show do
    attributes_table do
      row :type_name
      row :image do |type_of_service|
        if type_of_service.image.present?
          image_tag type_of_service.image.url(:small)
        else 
          ''
        end
      end
    end
  end
end
