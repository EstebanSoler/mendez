ActiveAdmin.register MachinePhoto do
  belongs_to :machine
  navigation_menu :machine
  config.per_page = 5

  show do
    attributes_table do
      row "Machine" do |machine_photo|
        machine_photo.machine.name
      end
      row :title
      row :image do |machine_photo|
        if machine_photo.image.present?
          image_tag machine_photo.image.url(:small)
        else 
          ''
        end
      end
    end
  end

  form do |f|
    f.inputs  do
      f.input :machine_id, :label => "Machine",
              :as => :select, :collection => Hash[Machine.all.map{|s| [s.name, s.id]}]
      f.input :title
      f.input :image
    end
     f.actions
  end

end
