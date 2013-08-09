ActiveAdmin.register ServicePhoto do
  belongs_to :service
  navigation_menu :service
  config.per_page = 5

  show do
    attributes_table do
      row "Service" do |service_photo|
        service_photo.service.name
      end
      row :title
      row :image do |service_photo|
        if service_photo.image.present?
          image_tag service_photo.image.url(:small)
        else 
          ''
        end
      end
    end
  end

  form do |f|
    f.inputs  do
      f.input :service_id, :label => "Service",
              :as => :select, :collection => Hash[Service.all.map{|s| [s.name, s.id]}]
      f.input :title
      f.input :image
    end
     f.actions
  end
end
